// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogResponse {
  List<CatalogItem> get data;
  CatalogSummary get summary;
  CatalogMeta get meta;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogResponseCopyWith<CatalogResponse> get copyWith =>
      _$CatalogResponseCopyWithImpl<CatalogResponse>(
          this as CatalogResponse, _$identity);

  /// Serializes this CatalogResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogResponse &&
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
    return 'CatalogResponse(data: $data, summary: $summary, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $CatalogResponseCopyWith<$Res> {
  factory $CatalogResponseCopyWith(
          CatalogResponse value, $Res Function(CatalogResponse) _then) =
      _$CatalogResponseCopyWithImpl;
  @useResult
  $Res call({List<CatalogItem> data, CatalogSummary summary, CatalogMeta meta});

  $CatalogSummaryCopyWith<$Res> get summary;
  $CatalogMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._self, this._then);

  final CatalogResponse _self;
  final $Res Function(CatalogResponse) _then;

  /// Create a copy of CatalogResponse
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
              as List<CatalogItem>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CatalogSummary,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CatalogMeta,
    ));
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogSummaryCopyWith<$Res> get summary {
    return $CatalogSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogMetaCopyWith<$Res> get meta {
    return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CatalogResponse].
extension CatalogResponsePatterns on CatalogResponse {
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
    TResult Function(_CatalogResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse() when $default != null:
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
    TResult Function(_CatalogResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse():
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
    TResult? Function(_CatalogResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse() when $default != null:
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
            List<CatalogItem> data, CatalogSummary summary, CatalogMeta meta)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse() when $default != null:
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
    TResult Function(
            List<CatalogItem> data, CatalogSummary summary, CatalogMeta meta)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse():
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
    TResult? Function(
            List<CatalogItem> data, CatalogSummary summary, CatalogMeta meta)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogResponse() when $default != null:
        return $default(_that.data, _that.summary, _that.meta);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogResponse implements CatalogResponse {
  const _CatalogResponse(
      {required final List<CatalogItem> data,
      required this.summary,
      required this.meta})
      : _data = data;
  factory _CatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogResponseFromJson(json);

  final List<CatalogItem> _data;
  @override
  List<CatalogItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final CatalogSummary summary;
  @override
  final CatalogMeta meta;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogResponseCopyWith<_CatalogResponse> get copyWith =>
      __$CatalogResponseCopyWithImpl<_CatalogResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogResponse &&
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
    return 'CatalogResponse(data: $data, summary: $summary, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$CatalogResponseCopyWith<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  factory _$CatalogResponseCopyWith(
          _CatalogResponse value, $Res Function(_CatalogResponse) _then) =
      __$CatalogResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<CatalogItem> data, CatalogSummary summary, CatalogMeta meta});

  @override
  $CatalogSummaryCopyWith<$Res> get summary;
  @override
  $CatalogMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$CatalogResponseCopyWithImpl<$Res>
    implements _$CatalogResponseCopyWith<$Res> {
  __$CatalogResponseCopyWithImpl(this._self, this._then);

  final _CatalogResponse _self;
  final $Res Function(_CatalogResponse) _then;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? summary = null,
    Object? meta = null,
  }) {
    return _then(_CatalogResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatalogItem>,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CatalogSummary,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as CatalogMeta,
    ));
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogSummaryCopyWith<$Res> get summary {
    return $CatalogSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogMetaCopyWith<$Res> get meta {
    return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
