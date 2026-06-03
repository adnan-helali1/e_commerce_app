// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierProduct {
  int get id;
  @JsonKey(name: 'supplier_id')
  int get supplierId;
  @JsonKey(name: 'product_id')
  int get productId;
  @JsonKey(name: 'buy_price')
  String get buyPrice;
  @JsonKey(name: 'stock_quantity')
  int get stockQuantity;
  String get status;
  Supplier get supplier;
  Product get product;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<SupplierProduct> get copyWith =>
      _$SupplierProductCopyWithImpl<SupplierProduct>(
          this as SupplierProduct, _$identity);

  /// Serializes this SupplierProduct to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SupplierProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, productId,
      buyPrice, stockQuantity, status, supplier, product, createdAt, updatedAt);

  @override
  String toString() {
    return 'SupplierProduct(id: $id, supplierId: $supplierId, productId: $productId, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, supplier: $supplier, product: $product, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $SupplierProductCopyWith<$Res> {
  factory $SupplierProductCopyWith(
          SupplierProduct value, $Res Function(SupplierProduct) _then) =
      _$SupplierProductCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'buy_price') String buyPrice,
      @JsonKey(name: 'stock_quantity') int stockQuantity,
      String status,
      Supplier supplier,
      Product product,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  $SupplierCopyWith<$Res> get supplier;
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$SupplierProductCopyWithImpl<$Res>
    implements $SupplierProductCopyWith<$Res> {
  _$SupplierProductCopyWithImpl(this._self, this._then);

  final SupplierProduct _self;
  final $Res Function(SupplierProduct) _then;

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? productId = null,
    Object? buyPrice = null,
    Object? stockQuantity = null,
    Object? status = null,
    Object? supplier = null,
    Object? product = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      buyPrice: null == buyPrice
          ? _self.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity: null == stockQuantity
          ? _self.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierCopyWith<$Res> get supplier {
    return $SupplierCopyWith<$Res>(_self.supplier, (value) {
      return _then(_self.copyWith(supplier: value));
    });
  }

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_self.product, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SupplierProduct].
extension SupplierProductPatterns on SupplierProduct {
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
    TResult Function(_SupplierProduct value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct() when $default != null:
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
    TResult Function(_SupplierProduct value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct():
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
    TResult? Function(_SupplierProduct value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct() when $default != null:
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
            @JsonKey(name: 'supplier_id') int supplierId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            Supplier supplier,
            Product product,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct() when $default != null:
        return $default(
            _that.id,
            _that.supplierId,
            _that.productId,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
            _that.supplier,
            _that.product,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'supplier_id') int supplierId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            Supplier supplier,
            Product product,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct():
        return $default(
            _that.id,
            _that.supplierId,
            _that.productId,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
            _that.supplier,
            _that.product,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'supplier_id') int supplierId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            Supplier supplier,
            Product product,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SupplierProduct() when $default != null:
        return $default(
            _that.id,
            _that.supplierId,
            _that.productId,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
            _that.supplier,
            _that.product,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SupplierProduct implements SupplierProduct {
  const _SupplierProduct(
      {required this.id,
      @JsonKey(name: 'supplier_id') required this.supplierId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'buy_price') required this.buyPrice,
      @JsonKey(name: 'stock_quantity') required this.stockQuantity,
      required this.status,
      required this.supplier,
      required this.product,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _SupplierProduct.fromJson(Map<String, dynamic> json) =>
      _$SupplierProductFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'supplier_id')
  final int supplierId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'buy_price')
  final String buyPrice;
  @override
  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;
  @override
  final String status;
  @override
  final Supplier supplier;
  @override
  final Product product;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupplierProductCopyWith<_SupplierProduct> get copyWith =>
      __$SupplierProductCopyWithImpl<_SupplierProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SupplierProductToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SupplierProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, productId,
      buyPrice, stockQuantity, status, supplier, product, createdAt, updatedAt);

  @override
  String toString() {
    return 'SupplierProduct(id: $id, supplierId: $supplierId, productId: $productId, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, supplier: $supplier, product: $product, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SupplierProductCopyWith<$Res>
    implements $SupplierProductCopyWith<$Res> {
  factory _$SupplierProductCopyWith(
          _SupplierProduct value, $Res Function(_SupplierProduct) _then) =
      __$SupplierProductCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'buy_price') String buyPrice,
      @JsonKey(name: 'stock_quantity') int stockQuantity,
      String status,
      Supplier supplier,
      Product product,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  @override
  $SupplierCopyWith<$Res> get supplier;
  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$SupplierProductCopyWithImpl<$Res>
    implements _$SupplierProductCopyWith<$Res> {
  __$SupplierProductCopyWithImpl(this._self, this._then);

  final _SupplierProduct _self;
  final $Res Function(_SupplierProduct) _then;

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? productId = null,
    Object? buyPrice = null,
    Object? stockQuantity = null,
    Object? status = null,
    Object? supplier = null,
    Object? product = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_SupplierProduct(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      buyPrice: null == buyPrice
          ? _self.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      stockQuantity: null == stockQuantity
          ? _self.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierCopyWith<$Res> get supplier {
    return $SupplierCopyWith<$Res>(_self.supplier, (value) {
      return _then(_self.copyWith(supplier: value));
    });
  }

  /// Create a copy of SupplierProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_self.product, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

// dart format on
