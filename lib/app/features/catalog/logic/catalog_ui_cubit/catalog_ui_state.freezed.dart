// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogUiState {
  CatalogResponse? get response;
  bool get isLoading;
  String? get error;
  bool get activeOnly;

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogUiStateCopyWith<CatalogUiState> get copyWith =>
      _$CatalogUiStateCopyWithImpl<CatalogUiState>(
          this as CatalogUiState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogUiState &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.activeOnly, activeOnly) ||
                other.activeOnly == activeOnly));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, response, isLoading, error, activeOnly);

  @override
  String toString() {
    return 'CatalogUiState(response: $response, isLoading: $isLoading, error: $error, activeOnly: $activeOnly)';
  }
}

/// @nodoc
abstract mixin class $CatalogUiStateCopyWith<$Res> {
  factory $CatalogUiStateCopyWith(
          CatalogUiState value, $Res Function(CatalogUiState) _then) =
      _$CatalogUiStateCopyWithImpl;
  @useResult
  $Res call(
      {CatalogResponse? response,
      bool isLoading,
      String? error,
      bool activeOnly});

  $CatalogResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$CatalogUiStateCopyWithImpl<$Res>
    implements $CatalogUiStateCopyWith<$Res> {
  _$CatalogUiStateCopyWithImpl(this._self, this._then);

  final CatalogUiState _self;
  final $Res Function(CatalogUiState) _then;

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? activeOnly = null,
  }) {
    return _then(_self.copyWith(
      response: freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as CatalogResponse?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      activeOnly: null == activeOnly
          ? _self.activeOnly
          : activeOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
      return null;
    }

    return $CatalogResponseCopyWith<$Res>(_self.response!, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CatalogUiState].
extension CatalogUiStatePatterns on CatalogUiState {
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
    TResult Function(_CatalogUiState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState() when $default != null:
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
    TResult Function(_CatalogUiState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState():
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
    TResult? Function(_CatalogUiState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState() when $default != null:
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
    TResult Function(CatalogResponse? response, bool isLoading, String? error,
            bool activeOnly)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState() when $default != null:
        return $default(
            _that.response, _that.isLoading, _that.error, _that.activeOnly);
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
    TResult Function(CatalogResponse? response, bool isLoading, String? error,
            bool activeOnly)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState():
        return $default(
            _that.response, _that.isLoading, _that.error, _that.activeOnly);
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
    TResult? Function(CatalogResponse? response, bool isLoading, String? error,
            bool activeOnly)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogUiState() when $default != null:
        return $default(
            _that.response, _that.isLoading, _that.error, _that.activeOnly);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CatalogUiState implements CatalogUiState {
  const _CatalogUiState(
      {this.response,
      this.isLoading = false,
      this.error,
      this.activeOnly = false});

  @override
  final CatalogResponse? response;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool activeOnly;

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogUiStateCopyWith<_CatalogUiState> get copyWith =>
      __$CatalogUiStateCopyWithImpl<_CatalogUiState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogUiState &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.activeOnly, activeOnly) ||
                other.activeOnly == activeOnly));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, response, isLoading, error, activeOnly);

  @override
  String toString() {
    return 'CatalogUiState(response: $response, isLoading: $isLoading, error: $error, activeOnly: $activeOnly)';
  }
}

/// @nodoc
abstract mixin class _$CatalogUiStateCopyWith<$Res>
    implements $CatalogUiStateCopyWith<$Res> {
  factory _$CatalogUiStateCopyWith(
          _CatalogUiState value, $Res Function(_CatalogUiState) _then) =
      __$CatalogUiStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CatalogResponse? response,
      bool isLoading,
      String? error,
      bool activeOnly});

  @override
  $CatalogResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$CatalogUiStateCopyWithImpl<$Res>
    implements _$CatalogUiStateCopyWith<$Res> {
  __$CatalogUiStateCopyWithImpl(this._self, this._then);

  final _CatalogUiState _self;
  final $Res Function(_CatalogUiState) _then;

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? activeOnly = null,
  }) {
    return _then(_CatalogUiState(
      response: freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as CatalogResponse?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      activeOnly: null == activeOnly
          ? _self.activeOnly
          : activeOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of CatalogUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogResponseCopyWith<$Res>? get response {
    if (_self.response == null) {
      return null;
    }

    return $CatalogResponseCopyWith<$Res>(_self.response!, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

// dart format on
