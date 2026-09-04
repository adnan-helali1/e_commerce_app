import 'dart:typed_data';

import 'package:B2B/app/core/images/selected_image.dart';
import 'package:B2B/app/core/widgets/app_network_image.dart';
import 'package:B2B/app/core/widgets/image_picker_field.dart';
import 'package:B2B/app/features/auth/data/models/login_response.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_product_card.dart';
import 'package:B2B/app/features/offers/data/models/offers_model_response/offer_data_model.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_card.dart';
import 'package:B2B/app/features/products/data/models/store_product_response.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/stock/data/models/stock_ui_models.dart';
import 'package:B2B/app/features/stock/ui/widgets/stat_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:B2B/app/core/theme/light_theme.dart';

void main() {
  const imageUrl = 'https://cdn.example.test/product.webp';

  group('image response parsing', () {
    test('register, login, and profile parse store image_url', () {
      final register = RegisterResponse.fromJson({
        'data': {
          'token': 'token',
          'store': {'id': 1, 'image_url': imageUrl},
        },
      });
      final login = LoginResponse.fromJson({
        'data': {
          'token': 'token',
          'store': {'id': 1, 'image_url': imageUrl},
        },
      });
      final profile = GetProfileResponse.fromJson({
        'message': 'ok',
        'data': {
          'id': 1,
          'name': 'Store',
          'owner_name': 'Owner',
          'phone': '12345678',
          'email': 'store@example.test',
          'address': 'Address',
          'status': 'active',
          'image_url': imageUrl,
          'created_at': '2026-01-01T00:00:00Z',
          'updated_at': '2026-01-01T00:00:00Z',
        },
      });

      expect(register.userData?.store?.imageUrl, imageUrl);
      expect(login.userData?.storeData?.imageUrl, imageUrl);
      expect(profile.data.imageUrl, imageUrl);
    });

    test('supplier product prefers direct image_url over nested product', () {
      final response = StoreProductsResponse.fromJson({
        'data': {
          'data': [
            {
              'id': 9,
              'image_url': imageUrl,
              'product': {
                'id': 2,
                'image_url': 'https://cdn.example.test/nested.png',
              },
            },
          ],
        },
      });

      expect(response.data.data.single.imageUrl, imageUrl);
      expect(response.data.data.single.displayImageUrl, imageUrl);
    });

    test('catalog parses product and category image URLs separately', () {
      final item = CatalogItem.fromJson({
        'id': 1,
        'supplier_product_id': 2,
        'name': 'Product',
        'supplier_name': 'Supplier',
        'buy_price': 10.0,
        'sell_price': 12.0,
        'profit_per_unit': 2.0,
        'profit_percentage': 20.0,
        'stock': 3,
        'total_profit': 6.0,
        'is_active': true,
        'image_url': imageUrl,
        'category_image_url': 'https://cdn.example.test/category.png',
      });

      expect(item.imageUrl, imageUrl);
      expect(item.categoryImageUrl, contains('category.png'));
    });
  });

  group('multipart image requests', () {
    test('registration sends all fields and an image part', () async {
      final selected = await _selectedImage('store.webp', 64);
      final form = await RegisterRequestBody(
        name: 'Store',
        ownerName: 'Owner',
        email: 'store@example.test',
        phone: '12345678',
        password: 'password',
        passwordConfirmation: 'password',
        address: 'Address',
        image: selected,
      ).toFormData();

      expect(
          form.fields.map((field) => field.key),
          containsAll([
            'name',
            'owner_name',
            'phone',
            'email',
            'password',
            'password_confirmation',
            'address',
          ]));
      expect(form.files.single.key, 'image');
      expect(form.files.single.value.filename, 'store.webp');
    });

    test('profile replacement uses method spoofing and omits empty image',
        () async {
      final unchanged =
          await const UpdateProfileRequest(name: 'Store').toFormData();
      expect(
        unchanged.fields.any(
          (field) => field.key == '_method' && field.value == 'PUT',
        ),
        isTrue,
      );
      expect(unchanged.files, isEmpty);

      final replacement = await UpdateProfileRequest(
        name: 'Store',
        image: await _selectedImage('replacement.jpg', 32),
      ).toFormData();
      expect(
        replacement.fields.any(
          (field) => field.key == '_method' && field.value == 'PUT',
        ),
        isTrue,
      );
      expect(replacement.files.single.key, 'image');
    });

    test('validates extension and 5 MB maximum', () async {
      expect((await _selectedImage('bad.gif', 1)).validate(required: true),
          isNotNull);
      expect(
        (await _selectedImage('large.png', SelectedImage.maxBytes + 1))
            .validate(required: true),
        isNotNull,
      );
      expect((await _selectedImage('ok.JPEG', 1)).validate(required: true),
          isNull);
    });
  });

  group('image cards', () {
    testWidgets('network image shows local fallback for null URL',
        (tester) async {
      await tester.pumpWidget(_app(const SizedBox(
        width: 80,
        height: 80,
        child: AppNetworkImage(imageUrl: null),
      )));
      expect(find.byIcon(Icons.inventory_2_outlined), findsOneWidget);
    });

    testWidgets('picker displays backend image validation error',
        (tester) async {
      await tester.pumpWidget(_app(ImagePickerField(
        image: null,
        errorText: 'The image field is required.',
        onChanged: (_) {},
      )));
      expect(find.text('The image field is required.'), findsOneWidget);
    });

    testWidgets('offer card uses direct offer image', (tester) async {
      final offer = OfferData.fromJson(_offerJson(imageUrl));
      await tester.pumpWidget(_app(OfferCard(offer: offer)));
      expect(_networkImage(tester).imageUrl, imageUrl);
    });

    testWidgets('catalog card uses product image', (tester) async {
      final item = CatalogItem.fromJson({
        'id': 1,
        'supplier_product_id': 2,
        'name': 'Product',
        'supplier_name': 'Supplier',
        'buy_price': 10.0,
        'sell_price': 12.0,
        'profit_per_unit': 2.0,
        'profit_percentage': 20.0,
        'stock': 3,
        'total_profit': 6.0,
        'is_active': true,
        'image_url': imageUrl,
        'category_image_url': 'https://cdn.example.test/category.png',
      });
      await tester.pumpWidget(_app(CatalogProductCard(item: item)));
      expect(_networkImage(tester).imageUrl, imageUrl);
    });

    testWidgets('inventory product card uses supplier-product image',
        (tester) async {
      const item = InventoryItem(
        name: 'Product',
        supplier: 'Supplier',
        currentStock: 3,
        maxStock: 10,
        minStock: 2,
        lastUpdated: '2026-01-01',
        status: StockStatus.inStock,
        id: 1,
        storeProduct: 1,
        supplierProduct: 2,
        imageUrl: imageUrl,
      );
      await tester.pumpWidget(_app(InventoryItemCard(
        item: item,
        onReduce: () {},
        onAddStock: () {},
        details: () {},
      )));
      expect(_networkImage(tester).imageUrl, imageUrl);
    });
  });
}

Future<SelectedImage> _selectedImage(String name, int length) async {
  return SelectedImage.fromXFile(
    XFile.fromData(Uint8List(length), name: name, path: name),
  );
}

Widget _app(Widget child) => ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: lightTheme,
        home: Scaffold(body: child),
      ),
    );

AppNetworkImage _networkImage(WidgetTester tester) {
  return tester.widget<AppNetworkImage>(find.byType(AppNetworkImage).first);
}

Map<String, dynamic> _offerJson(String imageUrl) => {
      'id': 1,
      'supplier_product_id': 2,
      'offer_price': '10.00',
      'offer_stock': 5,
      'status': 'available',
      'expires_at': '2026-12-01T00:00:00Z',
      'created_at': '2026-01-01T00:00:00Z',
      'updated_at': '2026-01-01T00:00:00Z',
      'image_url': imageUrl,
      'supplier_product': {
        'id': 2,
        'supplier_id': 3,
        'product_id': 4,
        'buy_price': '9.00',
        'stock_quantity': 10,
        'status': 'active',
        'created_at': '2026-01-01T00:00:00Z',
        'updated_at': '2026-01-01T00:00:00Z',
        'supplier': {
          'id': 3,
          'name': 'Supplier',
          'status': 'active',
          'created_at': '2026-01-01T00:00:00Z',
          'updated_at': '2026-01-01T00:00:00Z',
        },
        'product': {
          'id': 4,
          'supplier_id': 3,
          'category_id': 5,
          'name': 'Product',
          'buy_price': '9.00',
          'stock_quantity': 10,
          'status': 'active',
          'image_url': 'https://cdn.example.test/nested.png',
          'created_at': '2026-01-01T00:00:00Z',
          'updated_at': '2026-01-01T00:00:00Z',
          'category': {
            'id': 5,
            'name': 'Category',
            'media': [],
            'created_at': '2026-01-01T00:00:00Z',
            'updated_at': '2026-01-01T00:00:00Z',
          },
        },
      },
    };
