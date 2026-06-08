// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogItem {
  int get id;
  @JsonKey(name: 'store_id')
  int get storeId;
  @JsonKey(name: 'product_id')
  int get productId;
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
  @JsonKey(name: 'sell_price')
  String get sellPrice;
  @JsonKey(name: 'is_active')
  bool get isActive;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @JsonKey(name: 'supplier_product')
  SupplierProduct get supplierProduct;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogItemCopyWith<CatalogItem> get copyWith =>
      _$CatalogItemCopyWithImpl<CatalogItem>(this as CatalogItem, _$identity);

  /// Serializes this CatalogItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplierProduct, supplierProduct) ||
                other.supplierProduct == supplierProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      productId,
      supplierProductId,
      sellPrice,
      isActive,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'CatalogItem(id: $id, storeId: $storeId, productId: $productId, supplierProductId: $supplierProductId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class $CatalogItemCopyWith<$Res> {
  factory $CatalogItemCopyWith(
          CatalogItem value, $Res Function(CatalogItem) _then) =
      _$CatalogItemCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class _$CatalogItemCopyWithImpl<$Res> implements $CatalogItemCopyWith<$Res> {
  _$CatalogItemCopyWithImpl(this._self, this._then);

  final CatalogItem _self;
  final $Res Function(CatalogItem) _then;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? productId = null,
    Object? supplierProductId = null,
    Object? sellPrice = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supplierProduct: null == supplierProduct
          ? _self.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProduct,
    ));
  }

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CatalogItem].
extension CatalogItemPatterns on CatalogItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CatalogItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CatalogItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CatalogItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'store_id') int storeId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.productId,
            _that.supplierProductId,
            _that.sellPrice,
            _that.isActive,
            _that.createdAt,
            _that.updatedAt,
            _that.supplierProduct);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            @JsonKey(name: 'store_id') int storeId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem():
        return $default(
            _that.id,
            _that.storeId,
            _that.productId,
            _that.supplierProductId,
            _that.sellPrice,
            _that.isActive,
            _that.createdAt,
            _that.updatedAt,
            _that.supplierProduct);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            @JsonKey(name: 'store_id') int storeId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.productId,
            _that.supplierProductId,
            _that.sellPrice,
            _that.isActive,
            _that.createdAt,
            _that.updatedAt,
            _that.supplierProduct);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogItem implements CatalogItem {
  const _CatalogItem(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      @JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'supplier_product') required this.supplierProduct});
  factory _CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_id')
  final int storeId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
  @override
  @JsonKey(name: 'sell_price')
  final String sellPrice;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'supplier_product')
  final SupplierProduct supplierProduct;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogItemCopyWith<_CatalogItem> get copyWith =>
      __$CatalogItemCopyWithImpl<_CatalogItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplierProduct, supplierProduct) ||
                other.supplierProduct == supplierProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      productId,
      supplierProductId,
      sellPrice,
      isActive,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'CatalogItem(id: $id, storeId: $storeId, productId: $productId, supplierProductId: $supplierProductId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class _$CatalogItemCopyWith<$Res>
    implements $CatalogItemCopyWith<$Res> {
  factory _$CatalogItemCopyWith(
          _CatalogItem value, $Res Function(_CatalogItem) _then) =
      __$CatalogItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  @override
  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class __$CatalogItemCopyWithImpl<$Res> implements _$CatalogItemCopyWith<$Res> {
  __$CatalogItemCopyWithImpl(this._self, this._then);

  final _CatalogItem _self;
  final $Res Function(_CatalogItem) _then;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? productId = null,
    Object? supplierProductId = null,
    Object? sellPrice = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_CatalogItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supplierProduct: null == supplierProduct
          ? _self.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProduct,
    ));
  }

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

// dart format on
