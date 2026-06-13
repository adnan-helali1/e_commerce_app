// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_offers_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActiveOffersSummary {
  @JsonKey(name: 'total_products')
  int get totalProducts;
  @JsonKey(name: 'active_products')
  int get activeProducts;
  @JsonKey(name: 'total_profit')
  double get totalProfit;

  /// Create a copy of ActiveOffersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveOffersSummaryCopyWith<ActiveOffersSummary> get copyWith =>
      _$ActiveOffersSummaryCopyWithImpl<ActiveOffersSummary>(
          this as ActiveOffersSummary, _$identity);

  /// Serializes this ActiveOffersSummary to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveOffersSummary &&
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
    return 'ActiveOffersSummary(totalProducts: $totalProducts, activeProducts: $activeProducts, totalProfit: $totalProfit)';
  }
}

/// @nodoc
abstract mixin class $ActiveOffersSummaryCopyWith<$Res> {
  factory $ActiveOffersSummaryCopyWith(
          ActiveOffersSummary value, $Res Function(ActiveOffersSummary) _then) =
      _$ActiveOffersSummaryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'total_profit') double totalProfit});
}

/// @nodoc
class _$ActiveOffersSummaryCopyWithImpl<$Res>
    implements $ActiveOffersSummaryCopyWith<$Res> {
  _$ActiveOffersSummaryCopyWithImpl(this._self, this._then);

  final ActiveOffersSummary _self;
  final $Res Function(ActiveOffersSummary) _then;

  /// Create a copy of ActiveOffersSummary
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

/// Adds pattern-matching-related methods to [ActiveOffersSummary].
extension ActiveOffersSummaryPatterns on ActiveOffersSummary {
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
    TResult Function(_ActiveOffersSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersSummary() when $default != null:
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
    TResult Function(_ActiveOffersSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersSummary():
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
    TResult? Function(_ActiveOffersSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOffersSummary() when $default != null:
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
      case _ActiveOffersSummary() when $default != null:
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
      case _ActiveOffersSummary():
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
      case _ActiveOffersSummary() when $default != null:
        return $default(
            _that.totalProducts, _that.activeProducts, _that.totalProfit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveOffersSummary implements ActiveOffersSummary {
  const _ActiveOffersSummary(
      {@JsonKey(name: 'total_products') required this.totalProducts,
      @JsonKey(name: 'active_products') required this.activeProducts,
      @JsonKey(name: 'total_profit') required this.totalProfit});
  factory _ActiveOffersSummary.fromJson(Map<String, dynamic> json) =>
      _$ActiveOffersSummaryFromJson(json);

  @override
  @JsonKey(name: 'total_products')
  final int totalProducts;
  @override
  @JsonKey(name: 'active_products')
  final int activeProducts;
  @override
  @JsonKey(name: 'total_profit')
  final double totalProfit;

  /// Create a copy of ActiveOffersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveOffersSummaryCopyWith<_ActiveOffersSummary> get copyWith =>
      __$ActiveOffersSummaryCopyWithImpl<_ActiveOffersSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveOffersSummaryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveOffersSummary &&
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
    return 'ActiveOffersSummary(totalProducts: $totalProducts, activeProducts: $activeProducts, totalProfit: $totalProfit)';
  }
}

/// @nodoc
abstract mixin class _$ActiveOffersSummaryCopyWith<$Res>
    implements $ActiveOffersSummaryCopyWith<$Res> {
  factory _$ActiveOffersSummaryCopyWith(_ActiveOffersSummary value,
          $Res Function(_ActiveOffersSummary) _then) =
      __$ActiveOffersSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_products') int totalProducts,
      @JsonKey(name: 'active_products') int activeProducts,
      @JsonKey(name: 'total_profit') double totalProfit});
}

/// @nodoc
class __$ActiveOffersSummaryCopyWithImpl<$Res>
    implements _$ActiveOffersSummaryCopyWith<$Res> {
  __$ActiveOffersSummaryCopyWithImpl(this._self, this._then);

  final _ActiveOffersSummary _self;
  final $Res Function(_ActiveOffersSummary) _then;

  /// Create a copy of ActiveOffersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalProducts = null,
    Object? activeProducts = null,
    Object? totalProfit = null,
  }) {
    return _then(_ActiveOffersSummary(
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
