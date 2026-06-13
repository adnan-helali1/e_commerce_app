// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderResponse {
  CreateOrderData get data;
  String get message;
  dynamic get errors;

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrderResponseCopyWith<CreateOrderResponse> get copyWith =>
      _$CreateOrderResponseCopyWithImpl<CreateOrderResponse>(
          this as CreateOrderResponse, _$identity);

  /// Serializes this CreateOrderResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderResponse &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, message, const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'CreateOrderResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $CreateOrderResponseCopyWith<$Res> {
  factory $CreateOrderResponseCopyWith(
          CreateOrderResponse value, $Res Function(CreateOrderResponse) _then) =
      _$CreateOrderResponseCopyWithImpl;
  @useResult
  $Res call({CreateOrderData data, String message, dynamic errors});

  $CreateOrderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateOrderResponseCopyWithImpl<$Res>
    implements $CreateOrderResponseCopyWith<$Res> {
  _$CreateOrderResponseCopyWithImpl(this._self, this._then);

  final CreateOrderResponse _self;
  final $Res Function(CreateOrderResponse) _then;

  /// Create a copy of CreateOrderResponse
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
              as CreateOrderData,
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

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateOrderDataCopyWith<$Res> get data {
    return $CreateOrderDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CreateOrderResponse].
extension CreateOrderResponsePatterns on CreateOrderResponse {
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
    TResult Function(_CreateOrderResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse() when $default != null:
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
    TResult Function(_CreateOrderResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse():
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
    TResult? Function(_CreateOrderResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse() when $default != null:
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
    TResult Function(CreateOrderData data, String message, dynamic errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse() when $default != null:
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
    TResult Function(CreateOrderData data, String message, dynamic errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse():
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
    TResult? Function(CreateOrderData data, String message, dynamic errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderResponse() when $default != null:
        return $default(_that.data, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrderResponse implements CreateOrderResponse {
  const _CreateOrderResponse(
      {required this.data, required this.message, this.errors});
  factory _CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);

  @override
  final CreateOrderData data;
  @override
  final String message;
  @override
  final dynamic errors;

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderResponseCopyWith<_CreateOrderResponse> get copyWith =>
      __$CreateOrderResponseCopyWithImpl<_CreateOrderResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrderResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderResponse &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, data, message, const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'CreateOrderResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderResponseCopyWith<$Res>
    implements $CreateOrderResponseCopyWith<$Res> {
  factory _$CreateOrderResponseCopyWith(_CreateOrderResponse value,
          $Res Function(_CreateOrderResponse) _then) =
      __$CreateOrderResponseCopyWithImpl;
  @override
  @useResult
  $Res call({CreateOrderData data, String message, dynamic errors});

  @override
  $CreateOrderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateOrderResponseCopyWithImpl<$Res>
    implements _$CreateOrderResponseCopyWith<$Res> {
  __$CreateOrderResponseCopyWithImpl(this._self, this._then);

  final _CreateOrderResponse _self;
  final $Res Function(_CreateOrderResponse) _then;

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_CreateOrderResponse(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateOrderData,
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

  /// Create a copy of CreateOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateOrderDataCopyWith<$Res> get data {
    return $CreateOrderDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CreateOrderData {
  List<OrderModel> get orders;
  @JsonKey(name: 'created_count')
  int get createdCount;

  /// Create a copy of CreateOrderData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrderDataCopyWith<CreateOrderData> get copyWith =>
      _$CreateOrderDataCopyWithImpl<CreateOrderData>(
          this as CreateOrderData, _$identity);

  /// Serializes this CreateOrderData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderData &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            (identical(other.createdCount, createdCount) ||
                other.createdCount == createdCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(orders), createdCount);

  @override
  String toString() {
    return 'CreateOrderData(orders: $orders, createdCount: $createdCount)';
  }
}

/// @nodoc
abstract mixin class $CreateOrderDataCopyWith<$Res> {
  factory $CreateOrderDataCopyWith(
          CreateOrderData value, $Res Function(CreateOrderData) _then) =
      _$CreateOrderDataCopyWithImpl;
  @useResult
  $Res call(
      {List<OrderModel> orders,
      @JsonKey(name: 'created_count') int createdCount});
}

/// @nodoc
class _$CreateOrderDataCopyWithImpl<$Res>
    implements $CreateOrderDataCopyWith<$Res> {
  _$CreateOrderDataCopyWithImpl(this._self, this._then);

  final CreateOrderData _self;
  final $Res Function(CreateOrderData) _then;

  /// Create a copy of CreateOrderData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? createdCount = null,
  }) {
    return _then(_self.copyWith(
      orders: null == orders
          ? _self.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      createdCount: null == createdCount
          ? _self.createdCount
          : createdCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrderData].
extension CreateOrderDataPatterns on CreateOrderData {
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
    TResult Function(_CreateOrderData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData() when $default != null:
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
    TResult Function(_CreateOrderData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData():
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
    TResult? Function(_CreateOrderData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData() when $default != null:
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
    TResult Function(List<OrderModel> orders,
            @JsonKey(name: 'created_count') int createdCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData() when $default != null:
        return $default(_that.orders, _that.createdCount);
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
    TResult Function(List<OrderModel> orders,
            @JsonKey(name: 'created_count') int createdCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData():
        return $default(_that.orders, _that.createdCount);
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
    TResult? Function(List<OrderModel> orders,
            @JsonKey(name: 'created_count') int createdCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderData() when $default != null:
        return $default(_that.orders, _that.createdCount);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrderData implements CreateOrderData {
  const _CreateOrderData(
      {required final List<OrderModel> orders,
      @JsonKey(name: 'created_count') required this.createdCount})
      : _orders = orders;
  factory _CreateOrderData.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDataFromJson(json);

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey(name: 'created_count')
  final int createdCount;

  /// Create a copy of CreateOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderDataCopyWith<_CreateOrderData> get copyWith =>
      __$CreateOrderDataCopyWithImpl<_CreateOrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrderDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderData &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.createdCount, createdCount) ||
                other.createdCount == createdCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), createdCount);

  @override
  String toString() {
    return 'CreateOrderData(orders: $orders, createdCount: $createdCount)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderDataCopyWith<$Res>
    implements $CreateOrderDataCopyWith<$Res> {
  factory _$CreateOrderDataCopyWith(
          _CreateOrderData value, $Res Function(_CreateOrderData) _then) =
      __$CreateOrderDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<OrderModel> orders,
      @JsonKey(name: 'created_count') int createdCount});
}

/// @nodoc
class __$CreateOrderDataCopyWithImpl<$Res>
    implements _$CreateOrderDataCopyWith<$Res> {
  __$CreateOrderDataCopyWithImpl(this._self, this._then);

  final _CreateOrderData _self;
  final $Res Function(_CreateOrderData) _then;

  /// Create a copy of CreateOrderData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orders = null,
    Object? createdCount = null,
  }) {
    return _then(_CreateOrderData(
      orders: null == orders
          ? _self._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      createdCount: null == createdCount
          ? _self.createdCount
          : createdCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$OrderModel {
  int get id;
  @JsonKey(name: 'store_id')
  int get storeId;
  @JsonKey(name: 'supplier_id')
  int get supplierId;
  String get status;
  @JsonKey(name: 'total_buy')
  String get totalBuy;
  @JsonKey(name: 'total_sell')
  String get totalSell;
  String? get notes;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  Supplier get supplier;
  List<OrderItemModel> get items;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<OrderModel> get copyWith =>
      _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalBuy, totalBuy) ||
                other.totalBuy == totalBuy) &&
            (identical(other.totalSell, totalSell) ||
                other.totalSell == totalSell) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      supplierId,
      status,
      totalBuy,
      totalSell,
      notes,
      createdAt,
      updatedAt,
      supplier,
      const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'OrderModel(id: $id, storeId: $storeId, supplierId: $supplierId, status: $status, totalBuy: $totalBuy, totalSell: $totalSell, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, supplier: $supplier, items: $items)';
  }
}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) _then) =
      _$OrderModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'supplier_id') int supplierId,
      String status,
      @JsonKey(name: 'total_buy') String totalBuy,
      @JsonKey(name: 'total_sell') String totalSell,
      String? notes,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Supplier supplier,
      List<OrderItemModel> items});

  $SupplierCopyWith<$Res> get supplier;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? totalBuy = null,
    Object? totalSell = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplier = null,
    Object? items = null,
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
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalBuy: null == totalBuy
          ? _self.totalBuy
          : totalBuy // ignore: cast_nullable_to_non_nullable
              as String,
      totalSell: null == totalSell
          ? _self.totalSell
          : totalSell // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ));
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierCopyWith<$Res> get supplier {
    return $SupplierCopyWith<$Res>(_self.supplier, (value) {
      return _then(_self.copyWith(supplier: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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
    TResult Function(_OrderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
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
    TResult Function(_OrderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
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
    TResult? Function(_OrderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
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
            @JsonKey(name: 'supplier_id') int supplierId,
            String status,
            @JsonKey(name: 'total_buy') String totalBuy,
            @JsonKey(name: 'total_sell') String totalSell,
            String? notes,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            Supplier supplier,
            List<OrderItemModel> items)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierId,
            _that.status,
            _that.totalBuy,
            _that.totalSell,
            _that.notes,
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.items);
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
            @JsonKey(name: 'supplier_id') int supplierId,
            String status,
            @JsonKey(name: 'total_buy') String totalBuy,
            @JsonKey(name: 'total_sell') String totalSell,
            String? notes,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            Supplier supplier,
            List<OrderItemModel> items)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel():
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierId,
            _that.status,
            _that.totalBuy,
            _that.totalSell,
            _that.notes,
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.items);
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
            @JsonKey(name: 'supplier_id') int supplierId,
            String status,
            @JsonKey(name: 'total_buy') String totalBuy,
            @JsonKey(name: 'total_sell') String totalSell,
            String? notes,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            Supplier supplier,
            List<OrderItemModel> items)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderModel() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.supplierId,
            _that.status,
            _that.totalBuy,
            _that.totalSell,
            _that.notes,
            _that.createdAt,
            _that.updatedAt,
            _that.supplier,
            _that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderModel implements OrderModel {
  const _OrderModel(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      @JsonKey(name: 'supplier_id') required this.supplierId,
      required this.status,
      @JsonKey(name: 'total_buy') required this.totalBuy,
      @JsonKey(name: 'total_sell') required this.totalSell,
      this.notes,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.supplier,
      required final List<OrderItemModel> items})
      : _items = items;
  factory _OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_id')
  final int storeId;
  @override
  @JsonKey(name: 'supplier_id')
  final int supplierId;
  @override
  final String status;
  @override
  @JsonKey(name: 'total_buy')
  final String totalBuy;
  @override
  @JsonKey(name: 'total_sell')
  final String totalSell;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final Supplier supplier;
  final List<OrderItemModel> _items;
  @override
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.supplierId, supplierId) ||
                other.supplierId == supplierId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalBuy, totalBuy) ||
                other.totalBuy == totalBuy) &&
            (identical(other.totalSell, totalSell) ||
                other.totalSell == totalSell) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      supplierId,
      status,
      totalBuy,
      totalSell,
      notes,
      createdAt,
      updatedAt,
      supplier,
      const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'OrderModel(id: $id, storeId: $storeId, supplierId: $supplierId, status: $status, totalBuy: $totalBuy, totalSell: $totalSell, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, supplier: $supplier, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) _then) =
      __$OrderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      @JsonKey(name: 'supplier_id') int supplierId,
      String status,
      @JsonKey(name: 'total_buy') String totalBuy,
      @JsonKey(name: 'total_sell') String totalSell,
      String? notes,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Supplier supplier,
      List<OrderItemModel> items});

  @override
  $SupplierCopyWith<$Res> get supplier;
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? supplierId = null,
    Object? status = null,
    Object? totalBuy = null,
    Object? totalSell = null,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplier = null,
    Object? items = null,
  }) {
    return _then(_OrderModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierId: null == supplierId
          ? _self.supplierId
          : supplierId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalBuy: null == totalBuy
          ? _self.totalBuy
          : totalBuy // ignore: cast_nullable_to_non_nullable
              as String,
      totalSell: null == totalSell
          ? _self.totalSell
          : totalSell // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      supplier: null == supplier
          ? _self.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as Supplier,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ));
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierCopyWith<$Res> get supplier {
    return $SupplierCopyWith<$Res>(_self.supplier, (value) {
      return _then(_self.copyWith(supplier: value));
    });
  }
}

/// @nodoc
mixin _$OrderItemModel {
  int get id;
  @JsonKey(name: 'order_id')
  int get orderId;
  @JsonKey(name: 'product_id')
  int get productId;
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
  int get quantity;
  @JsonKey(name: 'unit_buy_price')
  String get unitBuyPrice;
  @JsonKey(name: 'unit_sell_price')
  String get unitSellPrice;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'supplier_product')
  SupplierProduct get supplierProduct;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      _$OrderItemModelCopyWithImpl<OrderItemModel>(
          this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitBuyPrice, unitBuyPrice) ||
                other.unitBuyPrice == unitBuyPrice) &&
            (identical(other.unitSellPrice, unitSellPrice) ||
                other.unitSellPrice == unitSellPrice) &&
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
      orderId,
      productId,
      supplierProductId,
      quantity,
      unitBuyPrice,
      unitSellPrice,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, orderId: $orderId, productId: $productId, supplierProductId: $supplierProductId, quantity: $quantity, unitBuyPrice: $unitBuyPrice, unitSellPrice: $unitSellPrice, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) _then) =
      _$OrderItemModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      int quantity,
      @JsonKey(name: 'unit_buy_price') String unitBuyPrice,
      @JsonKey(name: 'unit_sell_price') String unitSellPrice,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? supplierProductId = null,
    Object? quantity = null,
    Object? unitBuyPrice = null,
    Object? unitSellPrice = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitBuyPrice: null == unitBuyPrice
          ? _self.unitBuyPrice
          : unitBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      unitSellPrice: null == unitSellPrice
          ? _self.unitSellPrice
          : unitSellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      supplierProduct: null == supplierProduct
          ? _self.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProduct,
    ));
  }

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupplierProductCopyWith<$Res> get supplierProduct {
    return $SupplierProductCopyWith<$Res>(_self.supplierProduct, (value) {
      return _then(_self.copyWith(supplierProduct: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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
    TResult Function(_OrderItemModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
    TResult Function(_OrderItemModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
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
    TResult? Function(_OrderItemModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
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
            @JsonKey(name: 'order_id') int orderId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity,
            @JsonKey(name: 'unit_buy_price') String unitBuyPrice,
            @JsonKey(name: 'unit_sell_price') String unitSellPrice,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.supplierProductId,
            _that.quantity,
            _that.unitBuyPrice,
            _that.unitSellPrice,
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
            @JsonKey(name: 'order_id') int orderId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity,
            @JsonKey(name: 'unit_buy_price') String unitBuyPrice,
            @JsonKey(name: 'unit_sell_price') String unitSellPrice,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel():
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.supplierProductId,
            _that.quantity,
            _that.unitBuyPrice,
            _that.unitSellPrice,
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
            @JsonKey(name: 'order_id') int orderId,
            @JsonKey(name: 'product_id') int productId,
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity,
            @JsonKey(name: 'unit_buy_price') String unitBuyPrice,
            @JsonKey(name: 'unit_sell_price') String unitSellPrice,
            @JsonKey(name: 'created_at') String createdAt,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemModel() when $default != null:
        return $default(
            _that.id,
            _that.orderId,
            _that.productId,
            _that.supplierProductId,
            _that.quantity,
            _that.unitBuyPrice,
            _that.unitSellPrice,
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
class _OrderItemModel implements OrderItemModel {
  const _OrderItemModel(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      required this.quantity,
      @JsonKey(name: 'unit_buy_price') required this.unitBuyPrice,
      @JsonKey(name: 'unit_sell_price') required this.unitSellPrice,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'supplier_product') required this.supplierProduct});
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'unit_buy_price')
  final String unitBuyPrice;
  @override
  @JsonKey(name: 'unit_sell_price')
  final String unitSellPrice;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'supplier_product')
  final SupplierProduct supplierProduct;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemModelCopyWith<_OrderItemModel> get copyWith =>
      __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitBuyPrice, unitBuyPrice) ||
                other.unitBuyPrice == unitBuyPrice) &&
            (identical(other.unitSellPrice, unitSellPrice) ||
                other.unitSellPrice == unitSellPrice) &&
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
      orderId,
      productId,
      supplierProductId,
      quantity,
      unitBuyPrice,
      unitSellPrice,
      createdAt,
      updatedAt,
      supplierProduct);

  @override
  String toString() {
    return 'OrderItemModel(id: $id, orderId: $orderId, productId: $productId, supplierProductId: $supplierProductId, quantity: $quantity, unitBuyPrice: $unitBuyPrice, unitSellPrice: $unitSellPrice, createdAt: $createdAt, updatedAt: $updatedAt, supplierProduct: $supplierProduct)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(
          _OrderItemModel value, $Res Function(_OrderItemModel) _then) =
      __$OrderItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
      int quantity,
      @JsonKey(name: 'unit_buy_price') String unitBuyPrice,
      @JsonKey(name: 'unit_sell_price') String unitSellPrice,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'supplier_product') SupplierProduct supplierProduct});

  @override
  $SupplierProductCopyWith<$Res> get supplierProduct;
}

/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? supplierProductId = null,
    Object? quantity = null,
    Object? unitBuyPrice = null,
    Object? unitSellPrice = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? supplierProduct = null,
  }) {
    return _then(_OrderItemModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitBuyPrice: null == unitBuyPrice
          ? _self.unitBuyPrice
          : unitBuyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      unitSellPrice: null == unitSellPrice
          ? _self.unitSellPrice
          : unitSellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      supplierProduct: null == supplierProduct
          ? _self.supplierProduct
          : supplierProduct // ignore: cast_nullable_to_non_nullable
              as SupplierProduct,
    ));
  }

  /// Create a copy of OrderItemModel
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
