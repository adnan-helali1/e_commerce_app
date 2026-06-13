// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderRequest {
  List<OrderItemRequest> get items;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrderRequestCopyWith<CreateOrderRequest> get copyWith =>
      _$CreateOrderRequestCopyWithImpl<CreateOrderRequest>(
          this as CreateOrderRequest, _$identity);

  /// Serializes this CreateOrderRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderRequest &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'CreateOrderRequest(items: $items)';
  }
}

/// @nodoc
abstract mixin class $CreateOrderRequestCopyWith<$Res> {
  factory $CreateOrderRequestCopyWith(
          CreateOrderRequest value, $Res Function(CreateOrderRequest) _then) =
      _$CreateOrderRequestCopyWithImpl;
  @useResult
  $Res call({List<OrderItemRequest> items});
}

/// @nodoc
class _$CreateOrderRequestCopyWithImpl<$Res>
    implements $CreateOrderRequestCopyWith<$Res> {
  _$CreateOrderRequestCopyWithImpl(this._self, this._then);

  final CreateOrderRequest _self;
  final $Res Function(CreateOrderRequest) _then;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemRequest>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrderRequest].
extension CreateOrderRequestPatterns on CreateOrderRequest {
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
    TResult Function(_CreateOrderRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest() when $default != null:
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
    TResult Function(_CreateOrderRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest():
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
    TResult? Function(_CreateOrderRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest() when $default != null:
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
    TResult Function(List<OrderItemRequest> items)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest() when $default != null:
        return $default(_that.items);
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
    TResult Function(List<OrderItemRequest> items) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest():
        return $default(_that.items);
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
    TResult? Function(List<OrderItemRequest> items)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderRequest() when $default != null:
        return $default(_that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CreateOrderRequest implements CreateOrderRequest {
  const _CreateOrderRequest({required final List<OrderItemRequest> items})
      : _items = items;
  factory _CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  final List<OrderItemRequest> _items;
  @override
  List<OrderItemRequest> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderRequestCopyWith<_CreateOrderRequest> get copyWith =>
      __$CreateOrderRequestCopyWithImpl<_CreateOrderRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrderRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderRequest &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'CreateOrderRequest(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderRequestCopyWith<$Res>
    implements $CreateOrderRequestCopyWith<$Res> {
  factory _$CreateOrderRequestCopyWith(
          _CreateOrderRequest value, $Res Function(_CreateOrderRequest) _then) =
      __$CreateOrderRequestCopyWithImpl;
  @override
  @useResult
  $Res call({List<OrderItemRequest> items});
}

/// @nodoc
class __$CreateOrderRequestCopyWithImpl<$Res>
    implements _$CreateOrderRequestCopyWith<$Res> {
  __$CreateOrderRequestCopyWithImpl(this._self, this._then);

  final _CreateOrderRequest _self;
  final $Res Function(_CreateOrderRequest) _then;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_CreateOrderRequest(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemRequest>,
    ));
  }
}

/// @nodoc
mixin _$OrderItemRequest {
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
  int get quantity;

  /// Create a copy of OrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderItemRequestCopyWith<OrderItemRequest> get copyWith =>
      _$OrderItemRequestCopyWithImpl<OrderItemRequest>(
          this as OrderItemRequest, _$identity);

  /// Serializes this OrderItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderItemRequest &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supplierProductId, quantity);

  @override
  String toString() {
    return 'OrderItemRequest(supplierProductId: $supplierProductId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $OrderItemRequestCopyWith<$Res> {
  factory $OrderItemRequestCopyWith(
          OrderItemRequest value, $Res Function(OrderItemRequest) _then) =
      _$OrderItemRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'supplier_product_id') int supplierProductId,
      int quantity});
}

/// @nodoc
class _$OrderItemRequestCopyWithImpl<$Res>
    implements $OrderItemRequestCopyWith<$Res> {
  _$OrderItemRequestCopyWithImpl(this._self, this._then);

  final OrderItemRequest _self;
  final $Res Function(OrderItemRequest) _then;

  /// Create a copy of OrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supplierProductId = null,
    Object? quantity = null,
  }) {
    return _then(_self.copyWith(
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderItemRequest].
extension OrderItemRequestPatterns on OrderItemRequest {
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
    TResult Function(_OrderItemRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest() when $default != null:
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
    TResult Function(_OrderItemRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest():
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
    TResult? Function(_OrderItemRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest() when $default != null:
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest() when $default != null:
        return $default(_that.supplierProductId, _that.quantity);
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest():
        return $default(_that.supplierProductId, _that.quantity);
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
            int quantity)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderItemRequest() when $default != null:
        return $default(_that.supplierProductId, _that.quantity);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderItemRequest implements OrderItemRequest {
  const _OrderItemRequest(
      {@JsonKey(name: 'supplier_product_id') required this.supplierProductId,
      required this.quantity});
  factory _OrderItemRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderItemRequestFromJson(json);

  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
  @override
  final int quantity;

  /// Create a copy of OrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderItemRequestCopyWith<_OrderItemRequest> get copyWith =>
      __$OrderItemRequestCopyWithImpl<_OrderItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemRequest &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, supplierProductId, quantity);

  @override
  String toString() {
    return 'OrderItemRequest(supplierProductId: $supplierProductId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$OrderItemRequestCopyWith<$Res>
    implements $OrderItemRequestCopyWith<$Res> {
  factory _$OrderItemRequestCopyWith(
          _OrderItemRequest value, $Res Function(_OrderItemRequest) _then) =
      __$OrderItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'supplier_product_id') int supplierProductId,
      int quantity});
}

/// @nodoc
class __$OrderItemRequestCopyWithImpl<$Res>
    implements _$OrderItemRequestCopyWith<$Res> {
  __$OrderItemRequestCopyWithImpl(this._self, this._then);

  final _OrderItemRequest _self;
  final $Res Function(_OrderItemRequest) _then;

  /// Create a copy of OrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supplierProductId = null,
    Object? quantity = null,
  }) {
    return _then(_OrderItemRequest(
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
