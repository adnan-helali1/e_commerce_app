// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogData {
  @JsonKey(name: 'current_page')
  int get currentPage;
  List<CatalogItem> get data;
  @JsonKey(name: 'per_page')
  int get perPage;
  @JsonKey(name: 'last_page')
  int get lastPage;
  int get total;

  /// Create a copy of CatalogData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogDataCopyWith<CatalogData> get copyWith =>
      _$CatalogDataCopyWithImpl<CatalogData>(this as CatalogData, _$identity);

  /// Serializes this CatalogData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(data), perPage, lastPage, total);

  @override
  String toString() {
    return 'CatalogData(currentPage: $currentPage, data: $data, perPage: $perPage, lastPage: $lastPage, total: $total)';
  }
}

/// @nodoc
abstract mixin class $CatalogDataCopyWith<$Res> {
  factory $CatalogDataCopyWith(
          CatalogData value, $Res Function(CatalogData) _then) =
      _$CatalogDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<CatalogItem> data,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'last_page') int lastPage,
      int total});
}

/// @nodoc
class _$CatalogDataCopyWithImpl<$Res> implements $CatalogDataCopyWith<$Res> {
  _$CatalogDataCopyWithImpl(this._self, this._then);

  final CatalogData _self;
  final $Res Function(CatalogData) _then;

  /// Create a copy of CatalogData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? perPage = null,
    Object? lastPage = null,
    Object? total = null,
  }) {
    return _then(_self.copyWith(
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatalogItem>,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [CatalogData].
extension CatalogDataPatterns on CatalogData {
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
    TResult Function(_CatalogData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogData() when $default != null:
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
    TResult Function(_CatalogData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogData():
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
    TResult? Function(_CatalogData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogData() when $default != null:
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
            @JsonKey(name: 'current_page') int currentPage,
            List<CatalogItem> data,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'last_page') int lastPage,
            int total)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogData() when $default != null:
        return $default(_that.currentPage, _that.data, _that.perPage,
            _that.lastPage, _that.total);
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
            @JsonKey(name: 'current_page') int currentPage,
            List<CatalogItem> data,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'last_page') int lastPage,
            int total)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogData():
        return $default(_that.currentPage, _that.data, _that.perPage,
            _that.lastPage, _that.total);
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
            @JsonKey(name: 'current_page') int currentPage,
            List<CatalogItem> data,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'last_page') int lastPage,
            int total)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogData() when $default != null:
        return $default(_that.currentPage, _that.data, _that.perPage,
            _that.lastPage, _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogData implements CatalogData {
  const _CatalogData(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<CatalogItem> data,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'last_page') required this.lastPage,
      required this.total})
      : _data = data;
  factory _CatalogData.fromJson(Map<String, dynamic> json) =>
      _$CatalogDataFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<CatalogItem> _data;
  @override
  List<CatalogItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  final int total;

  /// Create a copy of CatalogData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogDataCopyWith<_CatalogData> get copyWith =>
      __$CatalogDataCopyWithImpl<_CatalogData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogData &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage,
      const DeepCollectionEquality().hash(_data), perPage, lastPage, total);

  @override
  String toString() {
    return 'CatalogData(currentPage: $currentPage, data: $data, perPage: $perPage, lastPage: $lastPage, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$CatalogDataCopyWith<$Res>
    implements $CatalogDataCopyWith<$Res> {
  factory _$CatalogDataCopyWith(
          _CatalogData value, $Res Function(_CatalogData) _then) =
      __$CatalogDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<CatalogItem> data,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'last_page') int lastPage,
      int total});
}

/// @nodoc
class __$CatalogDataCopyWithImpl<$Res> implements _$CatalogDataCopyWith<$Res> {
  __$CatalogDataCopyWithImpl(this._self, this._then);

  final _CatalogData _self;
  final $Res Function(_CatalogData) _then;

  /// Create a copy of CatalogData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? perPage = null,
    Object? lastPage = null,
    Object? total = null,
  }) {
    return _then(_CatalogData(
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatalogItem>,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
