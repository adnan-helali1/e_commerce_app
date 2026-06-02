// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffersResponse {
  List<OfferData> get data;
  Stats get stats;
  Pagination get pagination;
  String get message;
  dynamic get errors;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffersResponseCopyWith<OffersResponse> get copyWith =>
      _$OffersResponseCopyWithImpl<OffersResponse>(
          this as OffersResponse, _$identity);

  /// Serializes this OffersResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffersResponse &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      stats,
      pagination,
      message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'OffersResponse(data: $data, stats: $stats, pagination: $pagination, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $OffersResponseCopyWith<$Res> {
  factory $OffersResponseCopyWith(
          OffersResponse value, $Res Function(OffersResponse) _then) =
      _$OffersResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<OfferData> data,
      Stats stats,
      Pagination pagination,
      String message,
      dynamic errors});

  $StatsCopyWith<$Res> get stats;
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$OffersResponseCopyWithImpl<$Res>
    implements $OffersResponseCopyWith<$Res> {
  _$OffersResponseCopyWithImpl(this._self, this._then);

  final OffersResponse _self;
  final $Res Function(OffersResponse) _then;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? stats = null,
    Object? pagination = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>,
      stats: null == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
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

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_self.stats, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OffersResponse].
extension OffersResponsePatterns on OffersResponse {
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
    TResult Function(_OffersResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OffersResponse() when $default != null:
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
    TResult Function(_OffersResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OffersResponse():
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
    TResult? Function(_OffersResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OffersResponse() when $default != null:
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
    TResult Function(List<OfferData> data, Stats stats, Pagination pagination,
            String message, dynamic errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OffersResponse() when $default != null:
        return $default(_that.data, _that.stats, _that.pagination,
            _that.message, _that.errors);
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
    TResult Function(List<OfferData> data, Stats stats, Pagination pagination,
            String message, dynamic errors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OffersResponse():
        return $default(_that.data, _that.stats, _that.pagination,
            _that.message, _that.errors);
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
    TResult? Function(List<OfferData> data, Stats stats, Pagination pagination,
            String message, dynamic errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OffersResponse() when $default != null:
        return $default(_that.data, _that.stats, _that.pagination,
            _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OffersResponse implements OffersResponse {
  const _OffersResponse(
      {required final List<OfferData> data,
      required this.stats,
      required this.pagination,
      required this.message,
      this.errors})
      : _data = data;
  factory _OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$OffersResponseFromJson(json);

  final List<OfferData> _data;
  @override
  List<OfferData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Stats stats;
  @override
  final Pagination pagination;
  @override
  final String message;
  @override
  final dynamic errors;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffersResponseCopyWith<_OffersResponse> get copyWith =>
      __$OffersResponseCopyWithImpl<_OffersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffersResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffersResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      stats,
      pagination,
      message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'OffersResponse(data: $data, stats: $stats, pagination: $pagination, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$OffersResponseCopyWith<$Res>
    implements $OffersResponseCopyWith<$Res> {
  factory _$OffersResponseCopyWith(
          _OffersResponse value, $Res Function(_OffersResponse) _then) =
      __$OffersResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<OfferData> data,
      Stats stats,
      Pagination pagination,
      String message,
      dynamic errors});

  @override
  $StatsCopyWith<$Res> get stats;
  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$OffersResponseCopyWithImpl<$Res>
    implements _$OffersResponseCopyWith<$Res> {
  __$OffersResponseCopyWithImpl(this._self, this._then);

  final _OffersResponse _self;
  final $Res Function(_OffersResponse) _then;

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? stats = null,
    Object? pagination = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_OffersResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OfferData>,
      stats: null == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
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

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_self.stats, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }

  /// Create a copy of OffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

// dart format on
