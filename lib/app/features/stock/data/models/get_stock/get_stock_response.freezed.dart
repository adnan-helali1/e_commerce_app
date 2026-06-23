// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStockResponse {
  List<StockItem> get data;
  String get message;
  dynamic get errors;

  /// Create a copy of GetStockResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetStockResponseCopyWith<GetStockResponse> get copyWith =>
      _$GetStockResponseCopyWithImpl<GetStockResponse>(
          this as GetStockResponse, _$identity);

  /// Serializes this GetStockResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetStockResponse &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'GetStockResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $GetStockResponseCopyWith<$Res> {
  factory $GetStockResponseCopyWith(
          GetStockResponse value, $Res Function(GetStockResponse) _then) =
      _$GetStockResponseCopyWithImpl;
  @useResult
  $Res call({List<StockItem> data, String message, dynamic errors});
}

/// @nodoc
class _$GetStockResponseCopyWithImpl<$Res>
    implements $GetStockResponseCopyWith<$Res> {
  _$GetStockResponseCopyWithImpl(this._self, this._then);

  final GetStockResponse _self;
  final $Res Function(GetStockResponse) _then;

  /// Create a copy of GetStockResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StockItem>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _self.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetStockResponse].
extension GetStockResponsePatterns on GetStockResponse {
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
    TResult Function(_GetStockResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse() when $default != null:
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
    TResult Function(_GetStockResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse():
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
    TResult? Function(_GetStockResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse() when $default != null:
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
    TResult Function(List<StockItem> data, String message, dynamic errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse() when $default != null:
        return $default(_that.data, _that.message, _that.errors);
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
    TResult Function(List<StockItem> data, String message, dynamic errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse():
        return $default(_that.data, _that.message, _that.errors);
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
    TResult? Function(List<StockItem> data, String message, dynamic errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetStockResponse() when $default != null:
        return $default(_that.data, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetStockResponse implements GetStockResponse {
  const _GetStockResponse(
      {required final List<StockItem> data, required this.message, this.errors})
      : _data = data;
  factory _GetStockResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStockResponseFromJson(json);

  final List<StockItem> _data;
  @override
  List<StockItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;
  @override
  final dynamic errors;

  /// Create a copy of GetStockResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetStockResponseCopyWith<_GetStockResponse> get copyWith =>
      __$GetStockResponseCopyWithImpl<_GetStockResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetStockResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetStockResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'GetStockResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$GetStockResponseCopyWith<$Res>
    implements $GetStockResponseCopyWith<$Res> {
  factory _$GetStockResponseCopyWith(
          _GetStockResponse value, $Res Function(_GetStockResponse) _then) =
      __$GetStockResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<StockItem> data, String message, dynamic errors});
}

/// @nodoc
class __$GetStockResponseCopyWithImpl<$Res>
    implements _$GetStockResponseCopyWith<$Res> {
  __$GetStockResponseCopyWithImpl(this._self, this._then);

  final _GetStockResponse _self;
  final $Res Function(_GetStockResponse) _then;

  /// Create a copy of GetStockResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_GetStockResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StockItem>,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _self.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$StockItem {
  int get id;
  @JsonKey(name: 'store_id')
  int get storeId;
  @JsonKey(name: 'store_product_id')
  int get storeProductId;
  int get quantity;
  @JsonKey(name: 'min_stock')
  int get minStock;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @JsonKey(name: 'store_product')
  StoreProduct get storeProduct;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StockItemCopyWith<StockItem> get copyWith =>
      _$StockItemCopyWithImpl<StockItem>(this as StockItem, _$identity);

  /// Serializes this StockItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StockItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.storeProductId, storeProductId) ||
                other.storeProductId == storeProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.minStock, minStock) ||
                other.minStock == minStock) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.storeProduct, storeProduct) ||
                other.storeProduct == storeProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeId, storeProductId,
      quantity, minStock, createdAt, updatedAt, storeProduct);

  @override
  String toString() {
    return 'StockItem(id: $id, storeId: $storeId, storeProductId: $storeProductId, quantity: $quantity, minStock: $minStock, createdAt: $createdAt, updatedAt: $updatedAt, storeProduct: $storeProduct)';
  }
}

/// @nodoc
abstract mixin class $StockItemCopyWith<$Res> {
  factory $StockItemCopyWith(StockItem value, $Res Function(StockItem) _then) =
      _$StockItemCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'store_product_id') int storeProductId,
      int quantity,
      @JsonKey(name: 'min_stock') int minStock,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'store_product') StoreProduct storeProduct});

  $StoreProductCopyWith<$Res> get storeProduct;
}

/// @nodoc
class _$StockItemCopyWithImpl<$Res> implements $StockItemCopyWith<$Res> {
  _$StockItemCopyWithImpl(this._self, this._then);

  final StockItem _self;
  final $Res Function(StockItem) _then;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? storeProductId = null,
    Object? quantity = null,
    Object? minStock = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? storeProduct = null,
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
      storeProductId: null == storeProductId
          ? _self.storeProductId
          : storeProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      minStock: null == minStock
          ? _self.minStock
          : minStock // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storeProduct: null == storeProduct
          ? _self.storeProduct
          : storeProduct // ignore: cast_nullable_to_non_nullable
              as StoreProduct,
    ));
  }

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res> get storeProduct {
    return $StoreProductCopyWith<$Res>(_self.storeProduct, (value) {
      return _then(_self.copyWith(storeProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StockItem].
extension StockItemPatterns on StockItem {
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
    TResult Function(_StockItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockItem() when $default != null:
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
    TResult Function(_StockItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockItem():
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
    TResult? Function(_StockItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockItem() when $default != null:
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'min_stock') int minStock,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'store_product') StoreProduct storeProduct)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StockItem() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.storeProductId,
            _that.quantity,
            _that.minStock,
            _that.createdAt,
            _that.updatedAt,
            _that.storeProduct);
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'min_stock') int minStock,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'store_product') StoreProduct storeProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockItem():
        return $default(
            _that.id,
            _that.storeId,
            _that.storeProductId,
            _that.quantity,
            _that.minStock,
            _that.createdAt,
            _that.updatedAt,
            _that.storeProduct);
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'min_stock') int minStock,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            @JsonKey(name: 'store_product') StoreProduct storeProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StockItem() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.storeProductId,
            _that.quantity,
            _that.minStock,
            _that.createdAt,
            _that.updatedAt,
            _that.storeProduct);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StockItem implements StockItem {
  const _StockItem(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      @JsonKey(name: 'store_product_id') required this.storeProductId,
      required this.quantity,
      @JsonKey(name: 'min_stock') required this.minStock,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'store_product') required this.storeProduct});
  factory _StockItem.fromJson(Map<String, dynamic> json) =>
      _$StockItemFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_id')
  final int storeId;
  @override
  @JsonKey(name: 'store_product_id')
  final int storeProductId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'min_stock')
  final int minStock;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'store_product')
  final StoreProduct storeProduct;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StockItemCopyWith<_StockItem> get copyWith =>
      __$StockItemCopyWithImpl<_StockItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StockItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StockItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.storeProductId, storeProductId) ||
                other.storeProductId == storeProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.minStock, minStock) ||
                other.minStock == minStock) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.storeProduct, storeProduct) ||
                other.storeProduct == storeProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeId, storeProductId,
      quantity, minStock, createdAt, updatedAt, storeProduct);

  @override
  String toString() {
    return 'StockItem(id: $id, storeId: $storeId, storeProductId: $storeProductId, quantity: $quantity, minStock: $minStock, createdAt: $createdAt, updatedAt: $updatedAt, storeProduct: $storeProduct)';
  }
}

/// @nodoc
abstract mixin class _$StockItemCopyWith<$Res>
    implements $StockItemCopyWith<$Res> {
  factory _$StockItemCopyWith(
          _StockItem value, $Res Function(_StockItem) _then) =
      __$StockItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'store_product_id') int storeProductId,
      int quantity,
      @JsonKey(name: 'min_stock') int minStock,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'store_product') StoreProduct storeProduct});

  @override
  $StoreProductCopyWith<$Res> get storeProduct;
}

/// @nodoc
class __$StockItemCopyWithImpl<$Res> implements _$StockItemCopyWith<$Res> {
  __$StockItemCopyWithImpl(this._self, this._then);

  final _StockItem _self;
  final $Res Function(_StockItem) _then;

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? storeProductId = null,
    Object? quantity = null,
    Object? minStock = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? storeProduct = null,
  }) {
    return _then(_StockItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      storeProductId: null == storeProductId
          ? _self.storeProductId
          : storeProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      minStock: null == minStock
          ? _self.minStock
          : minStock // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storeProduct: null == storeProduct
          ? _self.storeProduct
          : storeProduct // ignore: cast_nullable_to_non_nullable
              as StoreProduct,
    ));
  }

  /// Create a copy of StockItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<$Res> get storeProduct {
    return $StoreProductCopyWith<$Res>(_self.storeProduct, (value) {
      return _then(_self.copyWith(storeProduct: value));
    });
  }
}

/// @nodoc
mixin _$StoreProduct {
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

  /// Create a copy of StoreProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreProductCopyWith<StoreProduct> get copyWith =>
      _$StoreProductCopyWithImpl<StoreProduct>(
          this as StoreProduct, _$identity);

  /// Serializes this StoreProduct to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreProduct &&
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
    return 'StoreProduct(id: $id, storeId: $storeId, productId: $productId, supplierProductId: $supplierProductId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class $StoreProductCopyWith<$Res> {
  factory $StoreProductCopyWith(
          StoreProduct value, $Res Function(StoreProduct) _then) =
      _$StoreProductCopyWithImpl;
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
class _$StoreProductCopyWithImpl<$Res> implements $StoreProductCopyWith<$Res> {
  _$StoreProductCopyWithImpl(this._self, this._then);

  final StoreProduct _self;
  final $Res Function(StoreProduct) _then;

  /// Create a copy of StoreProduct
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

  /// Create a copy of StoreProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StoreProduct].
extension StoreProductPatterns on StoreProduct {
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
    TResult Function(_StoreProduct value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreProduct() when $default != null:
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
    TResult Function(_StoreProduct value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreProduct():
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
    TResult? Function(_StoreProduct value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreProduct() when $default != null:
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
      case _StoreProduct() when $default != null:
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
      case _StoreProduct():
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
      case _StoreProduct() when $default != null:
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
class _StoreProduct implements StoreProduct {
  const _StoreProduct(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      @JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'supplier_product') required this.supplierProduct});
  factory _StoreProduct.fromJson(Map<String, dynamic> json) =>
      _$StoreProductFromJson(json);

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

  /// Create a copy of StoreProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreProductCopyWith<_StoreProduct> get copyWith =>
      __$StoreProductCopyWithImpl<_StoreProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreProductToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreProduct &&
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
    return 'StoreProduct(id: $id, storeId: $storeId, productId: $productId, supplierProductId: $supplierProductId, sellPrice: $sellPrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class _$StoreProductCopyWith<$Res>
    implements $StoreProductCopyWith<$Res> {
  factory _$StoreProductCopyWith(
          _StoreProduct value, $Res Function(_StoreProduct) _then) =
      __$StoreProductCopyWithImpl;
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
class __$StoreProductCopyWithImpl<$Res>
    implements _$StoreProductCopyWith<$Res> {
  __$StoreProductCopyWithImpl(this._self, this._then);

  final _StoreProduct _self;
  final $Res Function(_StoreProduct) _then;

  /// Create a copy of StoreProduct
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
    return _then(_StoreProduct(
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

  /// Create a copy of StoreProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

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
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  Supplier get supplier;
  Product get product;

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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, productId,
      buyPrice, stockQuantity, status, createdAt, updatedAt, supplier, product);

  @override
  String toString() {
    return 'SupplierProduct(id: $id, supplierId: $supplierId, productId: $productId, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, supplier: $supplier, product: $product)';
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
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Supplier supplier,
      Product product});

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
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplier = null,
    Object? product = null,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            Supplier supplier,
            Product product)?
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
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.product);
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
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            Supplier supplier,
            Product product)
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
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.product);
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
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt,
            Supplier supplier,
            Product product)?
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
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.product);
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
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.supplier,
      required this.product});
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
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final Supplier supplier;
  @override
  final Product product;

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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, productId,
      buyPrice, stockQuantity, status, createdAt, updatedAt, supplier, product);

  @override
  String toString() {
    return 'SupplierProduct(id: $id, supplierId: $supplierId, productId: $productId, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, supplier: $supplier, product: $product)';
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
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Supplier supplier,
      Product product});

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
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplier = null,
    Object? product = null,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      product: null == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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

/// @nodoc
mixin _$Supplier {
  int get id;
  String get name;
  String? get phone;
  String? get email;
  String? get address;
  String get status;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Supplier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SupplierCopyWith<Supplier> get copyWith =>
      _$SupplierCopyWithImpl<Supplier>(this as Supplier, _$identity);

  /// Serializes this Supplier to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Supplier &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, address,
      status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Supplier(id: $id, name: $name, phone: $phone, email: $email, address: $address, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $SupplierCopyWith<$Res> {
  factory $SupplierCopyWith(Supplier value, $Res Function(Supplier) _then) =
      _$SupplierCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String? phone,
      String? email,
      String? address,
      String status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res> implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._self, this._then);

  final Supplier _self;
  final $Res Function(Supplier) _then;

  /// Create a copy of Supplier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// Adds pattern-matching-related methods to [Supplier].
extension SupplierPatterns on Supplier {
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
    TResult Function(_Supplier value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Supplier() when $default != null:
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
    TResult Function(_Supplier value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Supplier():
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
    TResult? Function(_Supplier value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Supplier() when $default != null:
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
            String name,
            String? phone,
            String? email,
            String? address,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Supplier() when $default != null:
        return $default(_that.id, _that.name, _that.phone, _that.email,
            _that.address, _that.status, _that.createdAt, _that.updatedAt);
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
            String name,
            String? phone,
            String? email,
            String? address,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Supplier():
        return $default(_that.id, _that.name, _that.phone, _that.email,
            _that.address, _that.status, _that.createdAt, _that.updatedAt);
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
            String name,
            String? phone,
            String? email,
            String? address,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Supplier() when $default != null:
        return $default(_that.id, _that.name, _that.phone, _that.email,
            _that.address, _that.status, _that.createdAt, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Supplier implements Supplier {
  const _Supplier(
      {required this.id,
      required this.name,
      this.phone,
      this.email,
      this.address,
      required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Create a copy of Supplier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SupplierCopyWith<_Supplier> get copyWith =>
      __$SupplierCopyWithImpl<_Supplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SupplierToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Supplier &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, address,
      status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Supplier(id: $id, name: $name, phone: $phone, email: $email, address: $address, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$SupplierCopyWith<$Res>
    implements $SupplierCopyWith<$Res> {
  factory _$SupplierCopyWith(_Supplier value, $Res Function(_Supplier) _then) =
      __$SupplierCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? phone,
      String? email,
      String? address,
      String status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$SupplierCopyWithImpl<$Res> implements _$SupplierCopyWith<$Res> {
  __$SupplierCopyWithImpl(this._self, this._then);

  final _Supplier _self;
  final $Res Function(_Supplier) _then;

  /// Create a copy of Supplier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Supplier(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
mixin _$Product {
  int get id;
  @JsonKey(name: 'supplier_id')
  int get supplierId;
  @JsonKey(name: 'category_id')
  int get categoryId;
  String get name;
  String? get description;
  @JsonKey(name: 'buy_price')
  String get buyPrice;
  @JsonKey(name: 'stock_quantity')
  int get stockQuantity;
  String get status;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCopyWith<Product> get copyWith =>
      _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, categoryId, name,
      description, buyPrice, stockQuantity, status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Product(id: $id, supplierId: $supplierId, categoryId: $categoryId, name: $name, description: $description, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) =
      _$ProductCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'category_id') int categoryId,
      String name,
      String? description,
      @JsonKey(name: 'buy_price') String buyPrice,
      @JsonKey(name: 'stock_quantity') int stockQuantity,
      String status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = freezed,
    Object? buyPrice = null,
    Object? stockQuantity = null,
    Object? status = null,
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
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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
    TResult Function(_Product value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
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
    TResult Function(_Product value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product():
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
    TResult? Function(_Product value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
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
            @JsonKey(name: 'category_id') int categoryId,
            String name,
            String? description,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(
            _that.id,
            _that.supplierId,
            _that.categoryId,
            _that.name,
            _that.description,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
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
            @JsonKey(name: 'category_id') int categoryId,
            String name,
            String? description,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product():
        return $default(
            _that.id,
            _that.supplierId,
            _that.categoryId,
            _that.name,
            _that.description,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
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
            @JsonKey(name: 'category_id') int categoryId,
            String name,
            String? description,
            @JsonKey(name: 'buy_price') String buyPrice,
            @JsonKey(name: 'stock_quantity') int stockQuantity,
            String status,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Product() when $default != null:
        return $default(
            _that.id,
            _that.supplierId,
            _that.categoryId,
            _that.name,
            _that.description,
            _that.buyPrice,
            _that.stockQuantity,
            _that.status,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Product implements Product {
  const _Product(
      {required this.id,
      @JsonKey(name: 'supplier_id') required this.supplierId,
      @JsonKey(name: 'category_id') required this.categoryId,
      required this.name,
      this.description,
      @JsonKey(name: 'buy_price') required this.buyPrice,
      @JsonKey(name: 'stock_quantity') required this.stockQuantity,
      required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'supplier_id')
  final int supplierId;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'buy_price')
  final String buyPrice;
  @override
  @JsonKey(name: 'stock_quantity')
  final int stockQuantity;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, supplierId, categoryId, name,
      description, buyPrice, stockQuantity, status, createdAt, updatedAt);

  @override
  String toString() {
    return 'Product(id: $id, supplierId: $supplierId, categoryId: $categoryId, name: $name, description: $description, buyPrice: $buyPrice, stockQuantity: $stockQuantity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) =
      __$ProductCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_id') int supplierId,
      @JsonKey(name: 'category_id') int categoryId,
      String name,
      String? description,
      @JsonKey(name: 'buy_price') String buyPrice,
      @JsonKey(name: 'stock_quantity') int stockQuantity,
      String status,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? supplierId = null,
    Object? categoryId = null,
    Object? name = null,
    Object? description = freezed,
    Object? buyPrice = null,
    Object? stockQuantity = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Product(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

// dart format on
