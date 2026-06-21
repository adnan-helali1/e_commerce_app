// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_catalog_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatchCatalogRequest {
  @JsonKey(name: 'sell_price')
  String get sellPrice;
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of PatchCatalogRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PatchCatalogRequestCopyWith<PatchCatalogRequest> get copyWith =>
      _$PatchCatalogRequestCopyWithImpl<PatchCatalogRequest>(
          this as PatchCatalogRequest, _$identity);

  /// Serializes this PatchCatalogRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatchCatalogRequest &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sellPrice, isActive);

  @override
  String toString() {
    return 'PatchCatalogRequest(sellPrice: $sellPrice, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class $PatchCatalogRequestCopyWith<$Res> {
  factory $PatchCatalogRequestCopyWith(
          PatchCatalogRequest value, $Res Function(PatchCatalogRequest) _then) =
      _$PatchCatalogRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class _$PatchCatalogRequestCopyWithImpl<$Res>
    implements $PatchCatalogRequestCopyWith<$Res> {
  _$PatchCatalogRequestCopyWithImpl(this._self, this._then);

  final PatchCatalogRequest _self;
  final $Res Function(PatchCatalogRequest) _then;

  /// Create a copy of PatchCatalogRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellPrice = null,
    Object? isActive = null,
  }) {
    return _then(_self.copyWith(
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PatchCatalogRequest].
extension PatchCatalogRequestPatterns on PatchCatalogRequest {
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
    TResult Function(_PatchCatalogRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest() when $default != null:
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
    TResult Function(_PatchCatalogRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest():
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
    TResult? Function(_PatchCatalogRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest() when $default != null:
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
    TResult Function(@JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest() when $default != null:
        return $default(_that.sellPrice, _that.isActive);
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
    TResult Function(@JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest():
        return $default(_that.sellPrice, _that.isActive);
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
    TResult? Function(@JsonKey(name: 'sell_price') String sellPrice,
            @JsonKey(name: 'is_active') bool isActive)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PatchCatalogRequest() when $default != null:
        return $default(_that.sellPrice, _that.isActive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PatchCatalogRequest implements PatchCatalogRequest {
  const _PatchCatalogRequest(
      {@JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'is_active') required this.isActive});
  factory _PatchCatalogRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchCatalogRequestFromJson(json);

  @override
  @JsonKey(name: 'sell_price')
  final String sellPrice;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  /// Create a copy of PatchCatalogRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PatchCatalogRequestCopyWith<_PatchCatalogRequest> get copyWith =>
      __$PatchCatalogRequestCopyWithImpl<_PatchCatalogRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PatchCatalogRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatchCatalogRequest &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sellPrice, isActive);

  @override
  String toString() {
    return 'PatchCatalogRequest(sellPrice: $sellPrice, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class _$PatchCatalogRequestCopyWith<$Res>
    implements $PatchCatalogRequestCopyWith<$Res> {
  factory _$PatchCatalogRequestCopyWith(_PatchCatalogRequest value,
          $Res Function(_PatchCatalogRequest) _then) =
      __$PatchCatalogRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sell_price') String sellPrice,
      @JsonKey(name: 'is_active') bool isActive});
}

/// @nodoc
class __$PatchCatalogRequestCopyWithImpl<$Res>
    implements _$PatchCatalogRequestCopyWith<$Res> {
  __$PatchCatalogRequestCopyWithImpl(this._self, this._then);

  final _PatchCatalogRequest _self;
  final $Res Function(_PatchCatalogRequest) _then;

  /// Create a copy of PatchCatalogRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sellPrice = null,
    Object? isActive = null,
  }) {
    return _then(_PatchCatalogRequest(
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
