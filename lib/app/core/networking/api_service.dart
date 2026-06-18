import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/models/login_response.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_request_body.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_response.dart';
import 'package:B2B/app/features/offers/data/models/offers_response.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offers_response.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_response.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
// Auth Endpoints
  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody request);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(@Body() RegisterRequestBody request);

  @POST(ApiConstants.logout)
  Future<void> logout();
  // |||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  // Home Endpoints
  @GET(ApiConstants.homeDashboard)
  Future<HomeDashboardResponse> getHomeDashboard();

  // |||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  // offers Endpoints
  @GET(ApiConstants.offers)
  Future<OffersResponse> getOffers(
      @Query('page') int page,
      @Query('category') int category,
      @Query('status') String status,
      @Query('search') String search);

  @POST(ApiConstants.catalog + '/{supplierProductId}')
  Future<AddOfferResponse> addOfferToCatalog(
    @Path('supplierProductId') int supplierProductId,
    @Body() AddOfferRequestBody body,
  );

  // |||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  // Catalog Endpoints
  @GET(ApiConstants.catalog)
  Future<CatalogResponse> getCatalog(
    @Query('page') int page,
    @Query('is_active') bool? isActive,
    @Query('per_page') int perPage,
    @Query('search') String search,
  );
  @PATCH('${ApiConstants.catalog}/{catalogId}')
  @MultiPart()
  Future<void> patchCatalogItem(
    @Path('catalogId') int catalogId,
    @Part(name: 'sell_price') String sellPrice,
    @Part(name: 'is_active') bool isActive,
  );

  @DELETE('${ApiConstants.catalog}/{catalogId}')
  Future<void> deleteCatalogItem(
    @Path('catalogId') int catalogId,
  );
  // |||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  //orders Endpoints
  @GET(ApiConstants.catalog + '?is_active=1&per_page=15')
  Future<ActiveOffersResponse> getActiveOffers();

  @POST(ApiConstants.orders)
  Future<CreateOrderResponse> createOrder(
    @Body() Map<String, dynamic> request,
  );

  @GET(ApiConstants.orders)
  Future<OrdersResponse> getOrders(
    @Query('status') String status,
    @Query('per_page') int perPage,
  );

  @PUT('${ApiConstants.orders}/{orderId}/cancel')
  Future<void> cancelOrder(
    @Path('orderId') int orderId,
  );

  // |||||||||||||||||||||||||||||||||||||||||||||||||||||||||

  //profile Endpoints

  @GET(ApiConstants.profile)
  Future<GetProfileResponse> getProfile();

  @PUT(ApiConstants.profile)
  Future<GetProfileResponse> updateProfile(
    @Body() Map<String, dynamic> request,
  );
}
