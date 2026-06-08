// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogSummary {
  @JsonKey(name: 'total_products')
  int get totalProducts;
  @JsonKey(name: 'active_products')
  int get activeProducts;
  @JsonKey(name: 'total_profit')
  double get totalProfit;

  /// Create a copy of CatalogSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogSummaryCopyWith<CatalogSummary> get copyWith =>
      _$CatalogSummaryCopyWithImpl<CatalogSummary>(
          this as CatalogSummary, _$identity);

  /// Serializes this CatalogSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogSummary &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.activeProducts, activeProducts) ||
                other.activeProducts == activeProducts) &&
            (identical(other.totalProfit, totalProfit) ||
                other.totalProfit == totalProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalProducts, activeProducts, totalProfit);

  @override
  String toString() {
    return 'CatalogSummary(totalProducts: $totalProducts, activeProducts: $activeProducts, totalProfit: $totalProfit)';
  }
}

/// @nodoc
abstract mixin class $CatalogSummaryCopyWith<$Res> {
  factory $CatalogSummaryCopyWith(
          CatalogSummary value, $Res Function(CatalogSummary) _then) =
      _$CatalogSummaryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'total_profit') double totalProfit});
}

/// @nodoc
class _$CatalogSummaryCopyWithImpl<$Res>
    implements $CatalogSummaryCopyWith<$Res> {
  _$CatalogSummaryCopyWithImpl(this._self, this._then);

  final CatalogSummary _self;
  final $Res Function(CatalogSummary) _then;

  /// Create a copy of CatalogSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalProducts = null,
    Object? activeProducts = null,
    Object? totalProfit = null,
  }) {
    return _then(_self.copyWith(
      totalProducts: null == totalProducts
          ? _self.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      activeProducts: null == activeProducts
          ? _self.activeProducts
          : activeProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalProfit: null == totalProfit
          ? _self.totalProfit
          : totalProfit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [CatalogSummary].
extension CatalogSummaryPatterns on CatalogSummary {
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
    TResult Function(_CatalogSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary() when $default != null:
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
    TResult Function(_CatalogSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary():
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
    TResult? Function(_CatalogSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary() when $default != null:
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
            @JsonKey(name: 'total_products') int totalProducts,
            @JsonKey(name: 'active_products') int activeProducts,
            @JsonKey(name: 'total_profit') double totalProfit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary() when $default != null:
        return $default(
            _that.totalProducts, _that.activeProducts, _that.totalProfit);
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
            @JsonKey(name: 'total_products') int totalProducts,
            @JsonKey(name: 'active_products') int activeProducts,
            @JsonKey(name: 'total_profit') double totalProfit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary():
        return $default(
            _that.totalProducts, _that.activeProducts, _that.totalProfit);
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
            @JsonKey(name: 'total_products') int totalProducts,
            @JsonKey(name: 'active_products') int activeProducts,
            @JsonKey(name: 'total_profit') double totalProfit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogSummary() when $default != null:
        return $default(
            _that.totalProducts, _that.activeProducts, _that.totalProfit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogSummary implements CatalogSummary {
  const _CatalogSummary(
      {@JsonKey(name: 'total_products') required this.totalProducts,
      @JsonKey(name: 'active_products') required this.activeProducts,
      @JsonKey(name: 'total_profit') required this.totalProfit});
  factory _CatalogSummary.fromJson(Map<String, dynamic> json) =>
      _$CatalogSummaryFromJson(json);

  @override
  @JsonKey(name: 'total_products')
  final int totalProducts;
  @override
  @JsonKey(name: 'active_products')
  final int activeProducts;
  @override
  @JsonKey(name: 'total_profit')
  final double totalProfit;

  /// Create a copy of CatalogSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogSummaryCopyWith<_CatalogSummary> get copyWith =>
      __$CatalogSummaryCopyWithImpl<_CatalogSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogSummary &&
            (identical(other.totalProducts, totalProducts) ||
                other.totalProducts == totalProducts) &&
            (identical(other.activeProducts, activeProducts) ||
                other.activeProducts == activeProducts) &&
            (identical(other.totalProfit, totalProfit) ||
                other.totalProfit == totalProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalProducts, activeProducts, totalProfit);

  @override
  String toString() {
    return 'CatalogSummary(totalProducts: $totalProducts, activeProducts: $activeProducts, totalProfit: $totalProfit)';
  }
}

/// @nodoc
abstract mixin class _$CatalogSummaryCopyWith<$Res>
    implements $CatalogSummaryCopyWith<$Res> {
  factory _$CatalogSummaryCopyWith(
          _CatalogSummary value, $Res Function(_CatalogSummary) _then) =
      __$CatalogSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'total_profit') double totalProfit});
}

/// @nodoc
class __$CatalogSummaryCopyWithImpl<$Res>
    implements _$CatalogSummaryCopyWith<$Res> {
  __$CatalogSummaryCopyWithImpl(this._self, this._then);

  final _CatalogSummary _self;
  final $Res Function(_CatalogSummary) _then;

  /// Create a copy of CatalogSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalProducts = null,
    Object? activeProducts = null,
    Object? totalProfit = null,
  }) {
    return _then(_CatalogSummary(
      totalProducts: null == totalProducts
          ? _self.totalProducts
          : totalProducts // ignore: cast_nullable_to_non_nullable
              as int,
      activeProducts: null == activeProducts
          ? _self.activeProducts
          : activeProducts // ignore: cast_nullable_to_non_nullable
              as int,
      totalProfit: null == totalProfit
          ? _self.totalProfit
          : totalProfit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
