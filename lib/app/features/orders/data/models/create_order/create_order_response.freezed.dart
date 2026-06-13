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
  List<OrderModel> get orders; // ✅ الآن يستخدم OrderModel من get_orders
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

// ✅ الآن يستخدم OrderModel من get_orders
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

// dart format on
