// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerResponse {
  LedgerData get data;
  String get message;
  dynamic get errors;

  /// Create a copy of LedgerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerResponseCopyWith<LedgerResponse> get copyWith =>
      _$LedgerResponseCopyWithImpl<LedgerResponse>(
          this as LedgerResponse, _$identity);

  /// Serializes this LedgerResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerResponse &&
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
    return 'LedgerResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $LedgerResponseCopyWith<$Res> {
  factory $LedgerResponseCopyWith(
          LedgerResponse value, $Res Function(LedgerResponse) _then) =
      _$LedgerResponseCopyWithImpl;
  @useResult
  $Res call({LedgerData data, String message, dynamic errors});

  $LedgerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LedgerResponseCopyWithImpl<$Res>
    implements $LedgerResponseCopyWith<$Res> {
  _$LedgerResponseCopyWithImpl(this._self, this._then);

  final LedgerResponse _self;
  final $Res Function(LedgerResponse) _then;

  /// Create a copy of LedgerResponse
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
              as LedgerData,
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

  /// Create a copy of LedgerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerDataCopyWith<$Res> get data {
    return $LedgerDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LedgerResponse].
extension LedgerResponsePatterns on LedgerResponse {
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
    TResult Function(_LedgerResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse() when $default != null:
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
    TResult Function(_LedgerResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse():
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
    TResult? Function(_LedgerResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse() when $default != null:
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
    TResult Function(LedgerData data, String message, dynamic errors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse() when $default != null:
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
    TResult Function(LedgerData data, String message, dynamic errors) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse():
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
    TResult? Function(LedgerData data, String message, dynamic errors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerResponse() when $default != null:
        return $default(_that.data, _that.message, _that.errors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerResponse implements LedgerResponse {
  const _LedgerResponse(
      {required this.data, required this.message, this.errors});
  factory _LedgerResponse.fromJson(Map<String, dynamic> json) =>
      _$LedgerResponseFromJson(json);

  @override
  final LedgerData data;
  @override
  final String message;
  @override
  final dynamic errors;

  /// Create a copy of LedgerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerResponseCopyWith<_LedgerResponse> get copyWith =>
      __$LedgerResponseCopyWithImpl<_LedgerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerResponse &&
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
    return 'LedgerResponse(data: $data, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$LedgerResponseCopyWith<$Res>
    implements $LedgerResponseCopyWith<$Res> {
  factory _$LedgerResponseCopyWith(
          _LedgerResponse value, $Res Function(_LedgerResponse) _then) =
      __$LedgerResponseCopyWithImpl;
  @override
  @useResult
  $Res call({LedgerData data, String message, dynamic errors});

  @override
  $LedgerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LedgerResponseCopyWithImpl<$Res>
    implements _$LedgerResponseCopyWith<$Res> {
  __$LedgerResponseCopyWithImpl(this._self, this._then);

  final _LedgerResponse _self;
  final $Res Function(_LedgerResponse) _then;

  /// Create a copy of LedgerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? errors = freezed,
  }) {
    return _then(_LedgerResponse(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LedgerData,
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

  /// Create a copy of LedgerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerDataCopyWith<$Res> get data {
    return $LedgerDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$LedgerData {
  LedgerEntries get entries;
  LedgerSummary get summary;

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerDataCopyWith<LedgerData> get copyWith =>
      _$LedgerDataCopyWithImpl<LedgerData>(this as LedgerData, _$identity);

  /// Serializes this LedgerData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerData &&
            (identical(other.entries, entries) || other.entries == entries) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entries, summary);

  @override
  String toString() {
    return 'LedgerData(entries: $entries, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $LedgerDataCopyWith<$Res> {
  factory $LedgerDataCopyWith(
          LedgerData value, $Res Function(LedgerData) _then) =
      _$LedgerDataCopyWithImpl;
  @useResult
  $Res call({LedgerEntries entries, LedgerSummary summary});

  $LedgerEntriesCopyWith<$Res> get entries;
  $LedgerSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$LedgerDataCopyWithImpl<$Res> implements $LedgerDataCopyWith<$Res> {
  _$LedgerDataCopyWithImpl(this._self, this._then);

  final LedgerData _self;
  final $Res Function(LedgerData) _then;

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? summary = null,
  }) {
    return _then(_self.copyWith(
      entries: null == entries
          ? _self.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as LedgerEntries,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as LedgerSummary,
    ));
  }

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerEntriesCopyWith<$Res> get entries {
    return $LedgerEntriesCopyWith<$Res>(_self.entries, (value) {
      return _then(_self.copyWith(entries: value));
    });
  }

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSummaryCopyWith<$Res> get summary {
    return $LedgerSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LedgerData].
extension LedgerDataPatterns on LedgerData {
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
    TResult Function(_LedgerData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerData() when $default != null:
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
    TResult Function(_LedgerData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerData():
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
    TResult? Function(_LedgerData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerData() when $default != null:
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
    TResult Function(LedgerEntries entries, LedgerSummary summary)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerData() when $default != null:
        return $default(_that.entries, _that.summary);
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
    TResult Function(LedgerEntries entries, LedgerSummary summary) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerData():
        return $default(_that.entries, _that.summary);
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
    TResult? Function(LedgerEntries entries, LedgerSummary summary)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerData() when $default != null:
        return $default(_that.entries, _that.summary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerData implements LedgerData {
  const _LedgerData({required this.entries, required this.summary});
  factory _LedgerData.fromJson(Map<String, dynamic> json) =>
      _$LedgerDataFromJson(json);

  @override
  final LedgerEntries entries;
  @override
  final LedgerSummary summary;

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerDataCopyWith<_LedgerData> get copyWith =>
      __$LedgerDataCopyWithImpl<_LedgerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerData &&
            (identical(other.entries, entries) || other.entries == entries) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entries, summary);

  @override
  String toString() {
    return 'LedgerData(entries: $entries, summary: $summary)';
  }
}

/// @nodoc
abstract mixin class _$LedgerDataCopyWith<$Res>
    implements $LedgerDataCopyWith<$Res> {
  factory _$LedgerDataCopyWith(
          _LedgerData value, $Res Function(_LedgerData) _then) =
      __$LedgerDataCopyWithImpl;
  @override
  @useResult
  $Res call({LedgerEntries entries, LedgerSummary summary});

  @override
  $LedgerEntriesCopyWith<$Res> get entries;
  @override
  $LedgerSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$LedgerDataCopyWithImpl<$Res> implements _$LedgerDataCopyWith<$Res> {
  __$LedgerDataCopyWithImpl(this._self, this._then);

  final _LedgerData _self;
  final $Res Function(_LedgerData) _then;

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entries = null,
    Object? summary = null,
  }) {
    return _then(_LedgerData(
      entries: null == entries
          ? _self.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as LedgerEntries,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as LedgerSummary,
    ));
  }

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerEntriesCopyWith<$Res> get entries {
    return $LedgerEntriesCopyWith<$Res>(_self.entries, (value) {
      return _then(_self.copyWith(entries: value));
    });
  }

  /// Create a copy of LedgerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSummaryCopyWith<$Res> get summary {
    return $LedgerSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// @nodoc
mixin _$LedgerEntries {
  @JsonKey(name: 'current_page')
  int get currentPage;
  List<LedgerEntry> get data;
  @JsonKey(name: 'first_page_url')
  String get firstPageUrl;
  int get from;
  @JsonKey(name: 'last_page')
  int get lastPage;
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl;
  List<PaginationLink> get links;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  String get path;
  @JsonKey(name: 'per_page')
  int get perPage;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  int get to;
  int get total;

  /// Create a copy of LedgerEntries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerEntriesCopyWith<LedgerEntries> get copyWith =>
      _$LedgerEntriesCopyWithImpl<LedgerEntries>(
          this as LedgerEntries, _$identity);

  /// Serializes this LedgerEntries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerEntries &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other.links, links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @override
  String toString() {
    return 'LedgerEntries(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }
}

/// @nodoc
abstract mixin class $LedgerEntriesCopyWith<$Res> {
  factory $LedgerEntriesCopyWith(
          LedgerEntries value, $Res Function(LedgerEntries) _then) =
      _$LedgerEntriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<LedgerEntry> data,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      List<PaginationLink> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class _$LedgerEntriesCopyWithImpl<$Res>
    implements $LedgerEntriesCopyWith<$Res> {
  _$LedgerEntriesCopyWithImpl(this._self, this._then);

  final LedgerEntries _self;
  final $Res Function(LedgerEntries) _then;

  /// Create a copy of LedgerEntries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
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
              as List<LedgerEntry>,
      firstPageUrl: null == firstPageUrl
          ? _self.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _self.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PaginationLink>,
      nextPageUrl: freezed == nextPageUrl
          ? _self.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _self.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LedgerEntries].
extension LedgerEntriesPatterns on LedgerEntries {
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
    TResult Function(_LedgerEntries value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries() when $default != null:
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
    TResult Function(_LedgerEntries value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries():
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
    TResult? Function(_LedgerEntries value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries() when $default != null:
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
            List<LedgerEntry> data,
            @JsonKey(name: 'first_page_url') String firstPageUrl,
            int from,
            @JsonKey(name: 'last_page') int lastPage,
            @JsonKey(name: 'last_page_url') String lastPageUrl,
            List<PaginationLink> links,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String path,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int to,
            int total)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries() when $default != null:
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.links,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
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
            List<LedgerEntry> data,
            @JsonKey(name: 'first_page_url') String firstPageUrl,
            int from,
            @JsonKey(name: 'last_page') int lastPage,
            @JsonKey(name: 'last_page_url') String lastPageUrl,
            List<PaginationLink> links,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String path,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int to,
            int total)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries():
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.links,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
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
            List<LedgerEntry> data,
            @JsonKey(name: 'first_page_url') String firstPageUrl,
            int from,
            @JsonKey(name: 'last_page') int lastPage,
            @JsonKey(name: 'last_page_url') String lastPageUrl,
            List<PaginationLink> links,
            @JsonKey(name: 'next_page_url') String? nextPageUrl,
            String path,
            @JsonKey(name: 'per_page') int perPage,
            @JsonKey(name: 'prev_page_url') String? prevPageUrl,
            int to,
            int total)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntries() when $default != null:
        return $default(
            _that.currentPage,
            _that.data,
            _that.firstPageUrl,
            _that.from,
            _that.lastPage,
            _that.lastPageUrl,
            _that.links,
            _that.nextPageUrl,
            _that.path,
            _that.perPage,
            _that.prevPageUrl,
            _that.to,
            _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerEntries implements LedgerEntries {
  const _LedgerEntries(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<LedgerEntry> data,
      @JsonKey(name: 'first_page_url') required this.firstPageUrl,
      required this.from,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') required this.lastPageUrl,
      required final List<PaginationLink> links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      required this.path,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      required this.to,
      required this.total})
      : _data = data,
        _links = links;
  factory _LedgerEntries.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntriesFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<LedgerEntry> _data;
  @override
  List<LedgerEntry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @override
  final int from;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  final List<PaginationLink> _links;
  @override
  List<PaginationLink> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String path;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int to;
  @override
  final int total;

  /// Create a copy of LedgerEntries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerEntriesCopyWith<_LedgerEntries> get copyWith =>
      __$LedgerEntriesCopyWithImpl<_LedgerEntries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerEntriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerEntries &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @override
  String toString() {
    return 'LedgerEntries(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$LedgerEntriesCopyWith<$Res>
    implements $LedgerEntriesCopyWith<$Res> {
  factory _$LedgerEntriesCopyWith(
          _LedgerEntries value, $Res Function(_LedgerEntries) _then) =
      __$LedgerEntriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<LedgerEntry> data,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      int from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      List<PaginationLink> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int to,
      int total});
}

/// @nodoc
class __$LedgerEntriesCopyWithImpl<$Res>
    implements _$LedgerEntriesCopyWith<$Res> {
  __$LedgerEntriesCopyWithImpl(this._self, this._then);

  final _LedgerEntries _self;
  final $Res Function(_LedgerEntries) _then;

  /// Create a copy of LedgerEntries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = null,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = null,
    Object? total = null,
  }) {
    return _then(_LedgerEntries(
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LedgerEntry>,
      firstPageUrl: null == firstPageUrl
          ? _self.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _self.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _self.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _self._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<PaginationLink>,
      nextPageUrl: freezed == nextPageUrl
          ? _self.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _self.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$LedgerEntry {
  int get id;
  @JsonKey(name: 'store_id')
  int get storeId;
  EntryType get type;
  @JsonKey(name: 'source_type')
  String get sourceType;
  @JsonKey(name: 'source_id')
  int get sourceId;
  String get amount;
  @JsonKey(name: 'occurred_at')
  DateTime get occurredAt;
  String? get notes;
  @JsonKey(name: 'created_by_admin_id')
  int? get createdByAdminId;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of LedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerEntryCopyWith<LedgerEntry> get copyWith =>
      _$LedgerEntryCopyWithImpl<LedgerEntry>(this as LedgerEntry, _$identity);

  /// Serializes this LedgerEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdByAdminId, createdByAdminId) ||
                other.createdByAdminId == createdByAdminId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      type,
      sourceType,
      sourceId,
      amount,
      occurredAt,
      notes,
      createdByAdminId,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'LedgerEntry(id: $id, storeId: $storeId, type: $type, sourceType: $sourceType, sourceId: $sourceId, amount: $amount, occurredAt: $occurredAt, notes: $notes, createdByAdminId: $createdByAdminId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $LedgerEntryCopyWith<$Res> {
  factory $LedgerEntryCopyWith(
          LedgerEntry value, $Res Function(LedgerEntry) _then) =
      _$LedgerEntryCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      EntryType type,
      @JsonKey(name: 'source_type') String sourceType,
      @JsonKey(name: 'source_id') int sourceId,
      String amount,
      @JsonKey(name: 'occurred_at') DateTime occurredAt,
      String? notes,
      @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$LedgerEntryCopyWithImpl<$Res> implements $LedgerEntryCopyWith<$Res> {
  _$LedgerEntryCopyWithImpl(this._self, this._then);

  final LedgerEntry _self;
  final $Res Function(LedgerEntry) _then;

  /// Create a copy of LedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? type = null,
    Object? sourceType = null,
    Object? sourceId = null,
    Object? amount = null,
    Object? occurredAt = null,
    Object? notes = freezed,
    Object? createdByAdminId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      occurredAt: null == occurredAt
          ? _self.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByAdminId: freezed == createdByAdminId
          ? _self.createdByAdminId
          : createdByAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [LedgerEntry].
extension LedgerEntryPatterns on LedgerEntry {
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
    TResult Function(_LedgerEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry() when $default != null:
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
    TResult Function(_LedgerEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry():
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
    TResult? Function(_LedgerEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry() when $default != null:
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
            int id,
            @JsonKey(name: 'store_id') int storeId,
            EntryType type,
            @JsonKey(name: 'source_type') String sourceType,
            @JsonKey(name: 'source_id') int sourceId,
            String amount,
            @JsonKey(name: 'occurred_at') DateTime occurredAt,
            String? notes,
            @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.type,
            _that.sourceType,
            _that.sourceId,
            _that.amount,
            _that.occurredAt,
            _that.notes,
            _that.createdByAdminId,
            _that.createdAt,
            _that.updatedAt);
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
            int id,
            @JsonKey(name: 'store_id') int storeId,
            EntryType type,
            @JsonKey(name: 'source_type') String sourceType,
            @JsonKey(name: 'source_id') int sourceId,
            String amount,
            @JsonKey(name: 'occurred_at') DateTime occurredAt,
            String? notes,
            @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry():
        return $default(
            _that.id,
            _that.storeId,
            _that.type,
            _that.sourceType,
            _that.sourceId,
            _that.amount,
            _that.occurredAt,
            _that.notes,
            _that.createdByAdminId,
            _that.createdAt,
            _that.updatedAt);
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
            int id,
            @JsonKey(name: 'store_id') int storeId,
            EntryType type,
            @JsonKey(name: 'source_type') String sourceType,
            @JsonKey(name: 'source_id') int sourceId,
            String amount,
            @JsonKey(name: 'occurred_at') DateTime occurredAt,
            String? notes,
            @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
            @JsonKey(name: 'created_at') DateTime createdAt,
            @JsonKey(name: 'updated_at') DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerEntry() when $default != null:
        return $default(
            _that.id,
            _that.storeId,
            _that.type,
            _that.sourceType,
            _that.sourceId,
            _that.amount,
            _that.occurredAt,
            _that.notes,
            _that.createdByAdminId,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerEntry implements LedgerEntry {
  const _LedgerEntry(
      {required this.id,
      @JsonKey(name: 'store_id') required this.storeId,
      required this.type,
      @JsonKey(name: 'source_type') required this.sourceType,
      @JsonKey(name: 'source_id') required this.sourceId,
      required this.amount,
      @JsonKey(name: 'occurred_at') required this.occurredAt,
      this.notes,
      @JsonKey(name: 'created_by_admin_id') this.createdByAdminId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _LedgerEntry.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntryFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'store_id')
  final int storeId;
  @override
  final EntryType type;
  @override
  @JsonKey(name: 'source_type')
  final String sourceType;
  @override
  @JsonKey(name: 'source_id')
  final int sourceId;
  @override
  final String amount;
  @override
  @JsonKey(name: 'occurred_at')
  final DateTime occurredAt;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_by_admin_id')
  final int? createdByAdminId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// Create a copy of LedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerEntryCopyWith<_LedgerEntry> get copyWith =>
      __$LedgerEntryCopyWithImpl<_LedgerEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerEntry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdByAdminId, createdByAdminId) ||
                other.createdByAdminId == createdByAdminId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      type,
      sourceType,
      sourceId,
      amount,
      occurredAt,
      notes,
      createdByAdminId,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'LedgerEntry(id: $id, storeId: $storeId, type: $type, sourceType: $sourceType, sourceId: $sourceId, amount: $amount, occurredAt: $occurredAt, notes: $notes, createdByAdminId: $createdByAdminId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$LedgerEntryCopyWith<$Res>
    implements $LedgerEntryCopyWith<$Res> {
  factory _$LedgerEntryCopyWith(
          _LedgerEntry value, $Res Function(_LedgerEntry) _then) =
      __$LedgerEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'store_id') int storeId,
      EntryType type,
      @JsonKey(name: 'source_type') String sourceType,
      @JsonKey(name: 'source_id') int sourceId,
      String amount,
      @JsonKey(name: 'occurred_at') DateTime occurredAt,
      String? notes,
      @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$LedgerEntryCopyWithImpl<$Res> implements _$LedgerEntryCopyWith<$Res> {
  __$LedgerEntryCopyWithImpl(this._self, this._then);

  final _LedgerEntry _self;
  final $Res Function(_LedgerEntry) _then;

  /// Create a copy of LedgerEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? type = null,
    Object? sourceType = null,
    Object? sourceId = null,
    Object? amount = null,
    Object? occurredAt = null,
    Object? notes = freezed,
    Object? createdByAdminId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_LedgerEntry(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeId: null == storeId
          ? _self.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: null == sourceId
          ? _self.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      occurredAt: null == occurredAt
          ? _self.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdByAdminId: freezed == createdByAdminId
          ? _self.createdByAdminId
          : createdByAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$PaginationLink {
  String? get url;
  String get label;
  int? get page;
  bool get active;

  /// Create a copy of PaginationLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationLinkCopyWith<PaginationLink> get copyWith =>
      _$PaginationLinkCopyWithImpl<PaginationLink>(
          this as PaginationLink, _$identity);

  /// Serializes this PaginationLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, page, active);

  @override
  String toString() {
    return 'PaginationLink(url: $url, label: $label, page: $page, active: $active)';
  }
}

/// @nodoc
abstract mixin class $PaginationLinkCopyWith<$Res> {
  factory $PaginationLinkCopyWith(
          PaginationLink value, $Res Function(PaginationLink) _then) =
      _$PaginationLinkCopyWithImpl;
  @useResult
  $Res call({String? url, String label, int? page, bool active});
}

/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._self, this._then);

  final PaginationLink _self;
  final $Res Function(PaginationLink) _then;

  /// Create a copy of PaginationLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? page = freezed,
    Object? active = null,
  }) {
    return _then(_self.copyWith(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginationLink].
extension PaginationLinkPatterns on PaginationLink {
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
    TResult Function(_PaginationLink value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationLink() when $default != null:
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
    TResult Function(_PaginationLink value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationLink():
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
    TResult? Function(_PaginationLink value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationLink() when $default != null:
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
    TResult Function(String? url, String label, int? page, bool active)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginationLink() when $default != null:
        return $default(_that.url, _that.label, _that.page, _that.active);
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
    TResult Function(String? url, String label, int? page, bool active)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationLink():
        return $default(_that.url, _that.label, _that.page, _that.active);
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
    TResult? Function(String? url, String label, int? page, bool active)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginationLink() when $default != null:
        return $default(_that.url, _that.label, _that.page, _that.active);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PaginationLink implements PaginationLink {
  const _PaginationLink(
      {this.url, required this.label, this.page, required this.active});
  factory _PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);

  @override
  final String? url;
  @override
  final String label;
  @override
  final int? page;
  @override
  final bool active;

  /// Create a copy of PaginationLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationLinkCopyWith<_PaginationLink> get copyWith =>
      __$PaginationLinkCopyWithImpl<_PaginationLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationLinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationLink &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, page, active);

  @override
  String toString() {
    return 'PaginationLink(url: $url, label: $label, page: $page, active: $active)';
  }
}

/// @nodoc
abstract mixin class _$PaginationLinkCopyWith<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  factory _$PaginationLinkCopyWith(
          _PaginationLink value, $Res Function(_PaginationLink) _then) =
      __$PaginationLinkCopyWithImpl;
  @override
  @useResult
  $Res call({String? url, String label, int? page, bool active});
}

/// @nodoc
class __$PaginationLinkCopyWithImpl<$Res>
    implements _$PaginationLinkCopyWith<$Res> {
  __$PaginationLinkCopyWithImpl(this._self, this._then);

  final _PaginationLink _self;
  final $Res Function(_PaginationLink) _then;

  /// Create a copy of PaginationLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
    Object? label = null,
    Object? page = freezed,
    Object? active = null,
  }) {
    return _then(_PaginationLink(
      url: freezed == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$LedgerSummary {
  @JsonKey(name: 'total_credits')
  double get totalCredits;
  @JsonKey(name: 'total_debits')
  double get totalDebits;
  double get balance;

  /// Create a copy of LedgerSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerSummaryCopyWith<LedgerSummary> get copyWith =>
      _$LedgerSummaryCopyWithImpl<LedgerSummary>(
          this as LedgerSummary, _$identity);

  /// Serializes this LedgerSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerSummary &&
            (identical(other.totalCredits, totalCredits) ||
                other.totalCredits == totalCredits) &&
            (identical(other.totalDebits, totalDebits) ||
                other.totalDebits == totalDebits) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCredits, totalDebits, balance);

  @override
  String toString() {
    return 'LedgerSummary(totalCredits: $totalCredits, totalDebits: $totalDebits, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class $LedgerSummaryCopyWith<$Res> {
  factory $LedgerSummaryCopyWith(
          LedgerSummary value, $Res Function(LedgerSummary) _then) =
      _$LedgerSummaryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_credits') double totalCredits,
      @JsonKey(name: 'total_debits') double totalDebits,
      double balance});
}

/// @nodoc
class _$LedgerSummaryCopyWithImpl<$Res>
    implements $LedgerSummaryCopyWith<$Res> {
  _$LedgerSummaryCopyWithImpl(this._self, this._then);

  final LedgerSummary _self;
  final $Res Function(LedgerSummary) _then;

  /// Create a copy of LedgerSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCredits = null,
    Object? totalDebits = null,
    Object? balance = null,
  }) {
    return _then(_self.copyWith(
      totalCredits: null == totalCredits
          ? _self.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as double,
      totalDebits: null == totalDebits
          ? _self.totalDebits
          : totalDebits // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [LedgerSummary].
extension LedgerSummaryPatterns on LedgerSummary {
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
    TResult Function(_LedgerSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary() when $default != null:
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
    TResult Function(_LedgerSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary():
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
    TResult? Function(_LedgerSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary() when $default != null:
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
    TResult Function(@JsonKey(name: 'total_credits') double totalCredits,
            @JsonKey(name: 'total_debits') double totalDebits, double balance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary() when $default != null:
        return $default(_that.totalCredits, _that.totalDebits, _that.balance);
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
    TResult Function(@JsonKey(name: 'total_credits') double totalCredits,
            @JsonKey(name: 'total_debits') double totalDebits, double balance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary():
        return $default(_that.totalCredits, _that.totalDebits, _that.balance);
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
    TResult? Function(@JsonKey(name: 'total_credits') double totalCredits,
            @JsonKey(name: 'total_debits') double totalDebits, double balance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LedgerSummary() when $default != null:
        return $default(_that.totalCredits, _that.totalDebits, _that.balance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerSummary implements LedgerSummary {
  const _LedgerSummary(
      {@JsonKey(name: 'total_credits') required this.totalCredits,
      @JsonKey(name: 'total_debits') required this.totalDebits,
      required this.balance});
  factory _LedgerSummary.fromJson(Map<String, dynamic> json) =>
      _$LedgerSummaryFromJson(json);

  @override
  @JsonKey(name: 'total_credits')
  final double totalCredits;
  @override
  @JsonKey(name: 'total_debits')
  final double totalDebits;
  @override
  final double balance;

  /// Create a copy of LedgerSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerSummaryCopyWith<_LedgerSummary> get copyWith =>
      __$LedgerSummaryCopyWithImpl<_LedgerSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerSummary &&
            (identical(other.totalCredits, totalCredits) ||
                other.totalCredits == totalCredits) &&
            (identical(other.totalDebits, totalDebits) ||
                other.totalDebits == totalDebits) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCredits, totalDebits, balance);

  @override
  String toString() {
    return 'LedgerSummary(totalCredits: $totalCredits, totalDebits: $totalDebits, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class _$LedgerSummaryCopyWith<$Res>
    implements $LedgerSummaryCopyWith<$Res> {
  factory _$LedgerSummaryCopyWith(
          _LedgerSummary value, $Res Function(_LedgerSummary) _then) =
      __$LedgerSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_credits') double totalCredits,
      @JsonKey(name: 'total_debits') double totalDebits,
      double balance});
}

/// @nodoc
class __$LedgerSummaryCopyWithImpl<$Res>
    implements _$LedgerSummaryCopyWith<$Res> {
  __$LedgerSummaryCopyWithImpl(this._self, this._then);

  final _LedgerSummary _self;
  final $Res Function(_LedgerSummary) _then;

  /// Create a copy of LedgerSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalCredits = null,
    Object? totalDebits = null,
    Object? balance = null,
  }) {
    return _then(_LedgerSummary(
      totalCredits: null == totalCredits
          ? _self.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as double,
      totalDebits: null == totalDebits
          ? _self.totalDebits
          : totalDebits // ignore: cast_nullable_to_non_nullable
              as double,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
