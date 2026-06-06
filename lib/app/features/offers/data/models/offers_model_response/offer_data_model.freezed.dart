// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OfferData {
  int get id;
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
  @JsonKey(name: 'offer_price')
  String get offerPrice;
  @JsonKey(name: 'offer_stock')
  int get offerStock;
  String get status;
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @JsonKey(name: 'supplier_product')
  SupplierProduct get supplierProduct;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OfferDataCopyWith<OfferData> get copyWith =>
      _$OfferDataCopyWithImpl<OfferData>(this as OfferData, _$identity);

  /// Serializes this OfferData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.offerStock, offerStock) ||
                other.offerStock == offerStock) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
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
      supplierProductId,
      offerPrice,
      offerStock,
      status,
      expiresAt,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'OfferData(id: $id, supplierProductId: $supplierProductId, offerPrice: $offerPrice, offerStock: $offerStock, status: $status, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class $OfferDataCopyWith<$Res> {
  factory $OfferDataCopyWith(OfferData value, $Res Function(OfferData) _then) =
      _$OfferDataCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'offer_price') String offerPrice,
      @JsonKey(name: 'offer_stock') int offerStock,
      String status,
      @JsonKey(name: 'expires_at') DateTime expiresAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class _$OfferDataCopyWithImpl<$Res> implements $OfferDataCopyWith<$Res> {
  _$OfferDataCopyWithImpl(this._self, this._then);

  final OfferData _self;
  final $Res Function(OfferData) _then;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierProductId = null,
    Object? offerPrice = null,
    Object? offerStock = null,
    Object? status = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      offerPrice: null == offerPrice
          ? _self.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as String,
      offerStock: null == offerStock
          ? _self.offerStock
          : offerStock // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OfferData].
extension OfferDataPatterns on OfferData {
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
    TResult Function(_OfferData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OfferData() when $default != null:
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
    TResult Function(_OfferData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OfferData():
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
    TResult? Function(_OfferData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OfferData() when $default != null:
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'offer_price') String offerPrice,
            @JsonKey(name: 'offer_stock') int offerStock,
            String status,
            @JsonKey(name: 'expires_at') DateTime expiresAt,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OfferData() when $default != null:
        return $default(
            _that.id,
            _that.supplierProductId,
            _that.offerPrice,
            _that.offerStock,
            _that.status,
            _that.expiresAt,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'offer_price') String offerPrice,
            @JsonKey(name: 'offer_stock') int offerStock,
            String status,
            @JsonKey(name: 'expires_at') DateTime expiresAt,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OfferData():
        return $default(
            _that.id,
            _that.supplierProductId,
            _that.offerPrice,
            _that.offerStock,
            _that.status,
            _that.expiresAt,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            @JsonKey(name: 'offer_price') String offerPrice,
            @JsonKey(name: 'offer_stock') int offerStock,
            String status,
            @JsonKey(name: 'expires_at') DateTime expiresAt,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OfferData() when $default != null:
        return $default(
            _that.id,
            _that.supplierProductId,
            _that.offerPrice,
            _that.offerStock,
            _that.status,
            _that.expiresAt,
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
class _OfferData implements OfferData {
  const _OfferData(
      {required this.id,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      @JsonKey(name: 'offer_price') required this.offerPrice,
      @JsonKey(name: 'offer_stock') required this.offerStock,
      required this.status,
      @JsonKey(name: 'expires_at') required this.expiresAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'supplier_product') required this.supplierProduct});
  factory _OfferData.fromJson(Map<String, dynamic> json) =>
      _$OfferDataFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
  @override
  @JsonKey(name: 'offer_price')
  final String offerPrice;
  @override
  @JsonKey(name: 'offer_stock')
  final int offerStock;
  @override
  final String status;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'supplier_product')
  final SupplierProduct supplierProduct;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OfferDataCopyWith<_OfferData> get copyWith =>
      __$OfferDataCopyWithImpl<_OfferData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OfferDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfferData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.offerStock, offerStock) ||
                other.offerStock == offerStock) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
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
      supplierProductId,
      offerPrice,
      offerStock,
      status,
      expiresAt,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'OfferData(id: $id, supplierProductId: $supplierProductId, offerPrice: $offerPrice, offerStock: $offerStock, status: $status, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class _$OfferDataCopyWith<$Res>
    implements $OfferDataCopyWith<$Res> {
  factory _$OfferDataCopyWith(
          _OfferData value, $Res Function(_OfferData) _then) =
      __$OfferDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      @JsonKey(name: 'offer_price') String offerPrice,
      @JsonKey(name: 'offer_stock') int offerStock,
      String status,
      @JsonKey(name: 'expires_at') DateTime expiresAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  @override
  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class __$OfferDataCopyWithImpl<$Res> implements _$OfferDataCopyWith<$Res> {
  __$OfferDataCopyWithImpl(this._self, this._then);

  final _OfferData _self;
  final $Res Function(_OfferData) _then;

  /// Create a copy of OfferData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? supplierProductId = null,
    Object? offerPrice = null,
    Object? offerStock = null,
    Object? status = null,
    Object? expiresAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_OfferData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      offerPrice: null == offerPrice
          ? _self.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as String,
      offerStock: null == offerStock
          ? _self.offerStock
          : offerStock // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

  /// Create a copy of OfferData
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
