// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stock_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddStockRequest {
  @JsonKey(name: 'store_product_id')
  int get storeProductId;
  int get quantity;
  @JsonKey(name: 'unit_price')
  double get unitPrice;
  @JsonKey(name: 'seller_name')
  String get sellerName;

  /// Create a copy of AddStockRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddStockRequestCopyWith<AddStockRequest> get copyWith =>
      _$AddStockRequestCopyWithImpl<AddStockRequest>(
          this as AddStockRequest, _$identity);

  /// Serializes this AddStockRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddStockRequest &&
            (identical(other.storeProductId, storeProductId) ||
                other.storeProductId == storeProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, storeProductId, quantity, unitPrice, sellerName);

  @override
  String toString() {
    return 'AddStockRequest(storeProductId: $storeProductId, quantity: $quantity, unitPrice: $unitPrice, sellerName: $sellerName)';
  }
}

/// @nodoc
abstract mixin class $AddStockRequestCopyWith<$Res> {
  factory $AddStockRequestCopyWith(
          AddStockRequest value, $Res Function(AddStockRequest) _then) =
      _$AddStockRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'store_product_id') int storeProductId,
      int quantity,
      @JsonKey(name: 'unit_price') double unitPrice,
      @JsonKey(name: 'seller_name') String sellerName});
}

/// @nodoc
class _$AddStockRequestCopyWithImpl<$Res>
    implements $AddStockRequestCopyWith<$Res> {
  _$AddStockRequestCopyWithImpl(this._self, this._then);

  final AddStockRequest _self;
  final $Res Function(AddStockRequest) _then;

  /// Create a copy of AddStockRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeProductId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? sellerName = null,
  }) {
    return _then(_self.copyWith(
      storeProductId: null == storeProductId
          ? _self.storeProductId
          : storeProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddStockRequest].
extension AddStockRequestPatterns on AddStockRequest {
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
    TResult Function(_AddStockRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest() when $default != null:
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
    TResult Function(_AddStockRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest():
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
    TResult? Function(_AddStockRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest() when $default != null:
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'unit_price') double unitPrice,
            @JsonKey(name: 'seller_name') String sellerName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest() when $default != null:
        return $default(_that.storeProductId, _that.quantity, _that.unitPrice,
            _that.sellerName);
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'unit_price') double unitPrice,
            @JsonKey(name: 'seller_name') String sellerName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest():
        return $default(_that.storeProductId, _that.quantity, _that.unitPrice,
            _that.sellerName);
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
            @JsonKey(name: 'store_product_id') int storeProductId,
            int quantity,
            @JsonKey(name: 'unit_price') double unitPrice,
            @JsonKey(name: 'seller_name') String sellerName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddStockRequest() when $default != null:
        return $default(_that.storeProductId, _that.quantity, _that.unitPrice,
            _that.sellerName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddStockRequest implements AddStockRequest {
  const _AddStockRequest(
      {@JsonKey(name: 'store_product_id') required this.storeProductId,
      required this.quantity,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'seller_name') required this.sellerName});
  factory _AddStockRequest.fromJson(Map<String, dynamic> json) =>
      _$AddStockRequestFromJson(json);

  @override
  @JsonKey(name: 'store_product_id')
  final int storeProductId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final double unitPrice;
  @override
  @JsonKey(name: 'seller_name')
  final String sellerName;

  /// Create a copy of AddStockRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddStockRequestCopyWith<_AddStockRequest> get copyWith =>
      __$AddStockRequestCopyWithImpl<_AddStockRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddStockRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddStockRequest &&
            (identical(other.storeProductId, storeProductId) ||
                other.storeProductId == storeProductId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, storeProductId, quantity, unitPrice, sellerName);

  @override
  String toString() {
    return 'AddStockRequest(storeProductId: $storeProductId, quantity: $quantity, unitPrice: $unitPrice, sellerName: $sellerName)';
  }
}

/// @nodoc
abstract mixin class _$AddStockRequestCopyWith<$Res>
    implements $AddStockRequestCopyWith<$Res> {
  factory _$AddStockRequestCopyWith(
          _AddStockRequest value, $Res Function(_AddStockRequest) _then) =
      __$AddStockRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'store_product_id') int storeProductId,
      int quantity,
      @JsonKey(name: 'unit_price') double unitPrice,
      @JsonKey(name: 'seller_name') String sellerName});
}

/// @nodoc
class __$AddStockRequestCopyWithImpl<$Res>
    implements _$AddStockRequestCopyWith<$Res> {
  __$AddStockRequestCopyWithImpl(this._self, this._then);

  final _AddStockRequest _self;
  final $Res Function(_AddStockRequest) _then;

  /// Create a copy of AddStockRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storeProductId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? sellerName = null,
  }) {
    return _then(_AddStockRequest(
      storeProductId: null == storeProductId
          ? _self.storeProductId
          : storeProductId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _self.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellerName: null == sellerName
          ? _self.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
