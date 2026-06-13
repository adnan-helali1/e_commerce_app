// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models/active_offers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActiveOffersResponse {
  List<ActiveOfferItem> get data;
  ActiveOffersSummary get summary;
  ActiveOffersMeta get meta;

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveOffersResponseCopyWith<ActiveOffersResponse> get copyWith =>
      _$ActiveOffersResponseCopyWithImpl<ActiveOffersResponse>(
          this as ActiveOffersResponse, _$identity);

  /// Serializes this ActiveOffersResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveOffersResponse &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), summary, meta);

  @override
  String toString() {
    return 'ActiveOffersResponse(data: $data, summary: $summary, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $ActiveOffersResponseCopyWith<$Res> {
  factory $ActiveOffersResponseCopyWith(ActiveOffersResponse value,
          $Res Function(ActiveOffersResponse) _then) =
      _$ActiveOffersResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<ActiveOfferItem> data,
      ActiveOffersSummary summary,
      ActiveOffersMeta meta});

  $ActiveOffersSummaryCopyWith<$Res> get summary;
  $ActiveOffersMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ActiveOffersResponseCopyWithImpl<$Res>
    implements $ActiveOffersResponseCopyWith<$Res> {
  _$ActiveOffersResponseCopyWithImpl(this._self, this._then);

  final ActiveOffersResponse _self;
  final $Res Function(ActiveOffersResponse) _then;

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? summary = null,
    Object? meta = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ActiveOfferItem>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ActiveOffersSummary,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ActiveOffersMeta,
    ));
  }

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveOffersSummaryCopyWith<$Res> get summary {
    return $ActiveOffersSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveOffersMetaCopyWith<$Res> get meta {
    return $ActiveOffersMetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ActiveOffersResponse].
extension ActiveOffersResponsePatterns on ActiveOffersResponse {
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
    TResult Function(_ActiveOffersResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse() when $default != null:
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
    TResult Function(_ActiveOffersResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse():
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
    TResult? Function(_ActiveOffersResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse() when $default != null:
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
    TResult Function(List<ActiveOfferItem> data, ActiveOffersSummary summary,
            ActiveOffersMeta meta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse() when $default != null:
        return $default(_that.data, _that.summary, _that.meta);
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
    TResult Function(List<ActiveOfferItem> data, ActiveOffersSummary summary,
            ActiveOffersMeta meta)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse():
        return $default(_that.data, _that.summary, _that.meta);
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
    TResult? Function(List<ActiveOfferItem> data, ActiveOffersSummary summary,
            ActiveOffersMeta meta)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersResponse() when $default != null:
        return $default(_that.data, _that.summary, _that.meta);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveOffersResponse implements ActiveOffersResponse {
  const _ActiveOffersResponse(
      {required final List<ActiveOfferItem> data,
      required this.summary,
      required this.meta})
      : _data = data;
  factory _ActiveOffersResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveOffersResponseFromJson(json);

  final List<ActiveOfferItem> _data;
  @override
  List<ActiveOfferItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final ActiveOffersSummary summary;
  @override
  final ActiveOffersMeta meta;

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveOffersResponseCopyWith<_ActiveOffersResponse> get copyWith =>
      __$ActiveOffersResponseCopyWithImpl<_ActiveOffersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveOffersResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveOffersResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), summary, meta);

  @override
  String toString() {
    return 'ActiveOffersResponse(data: $data, summary: $summary, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$ActiveOffersResponseCopyWith<$Res>
    implements $ActiveOffersResponseCopyWith<$Res> {
  factory _$ActiveOffersResponseCopyWith(_ActiveOffersResponse value,
          $Res Function(_ActiveOffersResponse) _then) =
      __$ActiveOffersResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ActiveOfferItem> data,
      ActiveOffersSummary summary,
      ActiveOffersMeta meta});

  @override
  $ActiveOffersSummaryCopyWith<$Res> get summary;
  @override
  $ActiveOffersMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$ActiveOffersResponseCopyWithImpl<$Res>
    implements _$ActiveOffersResponseCopyWith<$Res> {
  __$ActiveOffersResponseCopyWithImpl(this._self, this._then);

  final _ActiveOffersResponse _self;
  final $Res Function(_ActiveOffersResponse) _then;

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? summary = null,
    Object? meta = null,
  }) {
    return _then(_ActiveOffersResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ActiveOfferItem>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as ActiveOffersSummary,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ActiveOffersMeta,
    ));
  }

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveOffersSummaryCopyWith<$Res> get summary {
    return $ActiveOffersSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of ActiveOffersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActiveOffersMetaCopyWith<$Res> get meta {
    return $ActiveOffersMetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
