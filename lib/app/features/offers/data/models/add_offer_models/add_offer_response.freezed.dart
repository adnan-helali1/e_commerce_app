// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_offer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddOfferResponse {
  AddOfferData get data;
  String get message;
  dynamic get errors;

  /// Create a copy of AddOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddOfferResponseCopyWith<AddOfferResponse> get copyWith =>
      _$AddOfferResponseCopyWithImpl<AddOfferResponse>(
          this as AddOfferResponse, _$identity);

  /// Serializes this AddOfferResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddOfferResponse &&
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
    return 'AddOfferResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $AddOfferResponseCopyWith<$Res> {
  factory $AddOfferResponseCopyWith(
          AddOfferResponse value, $Res Function(AddOfferResponse) _then) =
      _$AddOfferResponseCopyWithImpl;
  @useResult
  $Res call({AddOfferData data, String message, dynamic errors});

  $AddOfferDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AddOfferResponseCopyWithImpl<$Res>
    implements $AddOfferResponseCopyWith<$Res> {
  _$AddOfferResponseCopyWithImpl(this._self, this._then);

  final AddOfferResponse _self;
  final $Res Function(AddOfferResponse) _then;

  /// Create a copy of AddOfferResponse
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
              as AddOfferData,
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

  /// Create a copy of AddOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddOfferDataCopyWith<$Res> get data {
    return $AddOfferDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AddOfferResponse].
extension AddOfferResponsePatterns on AddOfferResponse {
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
    TResult Function(_AddOfferResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse() when $default != null:
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
    TResult Function(_AddOfferResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse():
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
    TResult? Function(_AddOfferResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse() when $default != null:
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
    TResult Function(AddOfferData data, String message, dynamic errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse() when $default != null:
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
    TResult Function(AddOfferData data, String message, dynamic errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse():
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
    TResult? Function(AddOfferData data, String message, dynamic errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddOfferResponse() when $default != null:
        return $default(_that.data, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddOfferResponse implements AddOfferResponse {
  const _AddOfferResponse(
      {required this.data, required this.message, this.errors});
  factory _AddOfferResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOfferResponseFromJson(json);

  @override
  final AddOfferData data;
  @override
  final String message;
  @override
  final dynamic errors;

  /// Create a copy of AddOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddOfferResponseCopyWith<_AddOfferResponse> get copyWith =>
      __$AddOfferResponseCopyWithImpl<_AddOfferResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddOfferResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddOfferResponse &&
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
    return 'AddOfferResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$AddOfferResponseCopyWith<$Res>
    implements $AddOfferResponseCopyWith<$Res> {
  factory _$AddOfferResponseCopyWith(
          _AddOfferResponse value, $Res Function(_AddOfferResponse) _then) =
      __$AddOfferResponseCopyWithImpl;
  @override
  @useResult
  $Res call({AddOfferData data, String message, dynamic errors});

  @override
  $AddOfferDataCopyWith<$Res> get data;
}

/// @nodoc
class __$AddOfferResponseCopyWithImpl<$Res>
    implements _$AddOfferResponseCopyWith<$Res> {
  __$AddOfferResponseCopyWithImpl(this._self, this._then);

  final _AddOfferResponse _self;
  final $Res Function(_AddOfferResponse) _then;

  /// Create a copy of AddOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_AddOfferResponse(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddOfferData,
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

  /// Create a copy of AddOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddOfferDataCopyWith<$Res> get data {
    return $AddOfferDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
