// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_offer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddOfferData {
  int get id;
  @JsonKey(name: 'store_id')
  int get storeId;
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
  @JsonKey(name: 'product_id')
  int get productId;
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

  /// Create a copy of AddOfferData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddOfferDataCopyWith<AddOfferData> get copyWith =>
      _$AddOfferDataCopyWithImpl<AddOfferData>(
          this as AddOfferData, _$identity);

  /// Serializes this AddOfferData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddOfferData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
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
  int get hashCode => Object.hash(runtimeType, id, storeId, supplierProductId,
      productId, sellPrice, isActive, createdAt, updatedAt, supplierProduct);

  @override
  String toString() {
    return 'AddOfferData(id: $id, storeId: $storeId, supplierProductId: $supplierProductId, productId: $productId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class $AddOfferDataCopyWith<$Res> {
  factory $AddOfferDataCopyWith(
          AddOfferData value, $Res Function(AddOfferData) _then) =
      _$AddOfferDataCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class _$AddOfferDataCopyWithImpl<$Res> implements $AddOfferDataCopyWith<$Res> {
  _$AddOfferDataCopyWithImpl(this._self, this._then);

  final AddOfferData _self;
  final $Res Function(AddOfferData) _then;

  /// Create a copy of AddOfferData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? supplierProductId = null,
    Object? productId = null,
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
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of AddOfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AddOfferData].
extension AddOfferDataPatterns on AddOfferData {
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
    TResult Function(_AddOfferData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddOfferData() when $default != null:
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
    TResult Function(_AddOfferData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferData():
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
    TResult? Function(_AddOfferData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferData() when $default != null:
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'product_id') int productId,
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
      case _AddOfferData() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierProductId,
            _that.productId,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferData():
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierProductId,
            _that.productId,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferData() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierProductId,
            _that.productId,
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
class _AddOfferData implements AddOfferData {
  const _AddOfferData(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'supplier_product') required this.supplierProduct});
  factory _AddOfferData.fromJson(Map<String, dynamic> json) =>
      _$AddOfferDataFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_id')
  final int storeId;
  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
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

  /// Create a copy of AddOfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddOfferDataCopyWith<_AddOfferData> get copyWith =>
      __$AddOfferDataCopyWithImpl<_AddOfferData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddOfferDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddOfferData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
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
  int get hashCode => Object.hash(runtimeType, id, storeId, supplierProductId,
      productId, sellPrice, isActive, createdAt, updatedAt, supplierProduct);

  @override
  String toString() {
    return 'AddOfferData(id: $id, storeId: $storeId, supplierProductId: $supplierProductId, productId: $productId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class _$AddOfferDataCopyWith<$Res>
    implements $AddOfferDataCopyWith<$Res> {
  factory _$AddOfferDataCopyWith(
          _AddOfferData value, $Res Function(_AddOfferData) _then) =
      __$AddOfferDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  @override
  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class __$AddOfferDataCopyWithImpl<$Res>
    implements _$AddOfferDataCopyWith<$Res> {
  __$AddOfferDataCopyWithImpl(this._self, this._then);

  final _AddOfferData _self;
  final $Res Function(_AddOfferData) _then;

  /// Create a copy of AddOfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? supplierProductId = null,
    Object? productId = null,
    Object? sellPrice = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_AddOfferData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of AddOfferData
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
