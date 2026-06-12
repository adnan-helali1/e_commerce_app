// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_offer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActiveOfferItem {
  int get id;
  String get name;
  @JsonKey(name: 'supplier_name')
  String get supplierName;
  @JsonKey(name: 'buy_price')
  double get buyPrice;
  @JsonKey(name: 'sell_price')
  double get sellPrice;
  @JsonKey(name: 'profit_per_unit')
  double get profitPerUnit;
  @JsonKey(name: 'profit_percentage')
  double get profitPercentage;
  int get stock;
  @JsonKey(name: 'total_profit')
  double get totalProfit;
  @JsonKey(name: 'is_active')
  bool get isActive;
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of ActiveOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveOfferItemCopyWith<ActiveOfferItem> get copyWith =>
      _$ActiveOfferItemCopyWithImpl<ActiveOfferItem>(
          this as ActiveOfferItem, _$identity);

  /// Serializes this ActiveOfferItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveOfferItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.profitPerUnit, profitPerUnit) ||
                other.profitPerUnit == profitPerUnit) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.totalProfit, totalProfit) ||
                other.totalProfit == totalProfit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      supplierName,
      buyPrice,
      sellPrice,
      profitPerUnit,
      profitPercentage,
      stock,
      totalProfit,
      isActive,
      imageUrl);

  @override
  String toString() {
    return 'ActiveOfferItem(id: $id, name: $name, supplierName: $supplierName, buyPrice: $buyPrice, sellPrice: $sellPrice, profitPerUnit: $profitPerUnit, profitPercentage: $profitPercentage, stock: $stock, totalProfit: $totalProfit, isActive: $isActive, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $ActiveOfferItemCopyWith<$Res> {
  factory $ActiveOfferItemCopyWith(
          ActiveOfferItem value, $Res Function(ActiveOfferItem) _then) =
      _$ActiveOfferItemCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'supplier_name') String supplierName,
      @JsonKey(name: 'buy_price') double buyPrice,
      @JsonKey(name: 'sell_price') double sellPrice,
      @JsonKey(name: 'profit_per_unit') double profitPerUnit,
      @JsonKey(name: 'profit_percentage') double profitPercentage,
      int stock,
      @JsonKey(name: 'total_profit') double totalProfit,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$ActiveOfferItemCopyWithImpl<$Res>
    implements $ActiveOfferItemCopyWith<$Res> {
  _$ActiveOfferItemCopyWithImpl(this._self, this._then);

  final ActiveOfferItem _self;
  final $Res Function(ActiveOfferItem) _then;

  /// Create a copy of ActiveOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? supplierName = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? profitPerUnit = null,
    Object? profitPercentage = null,
    Object? stock = null,
    Object? totalProfit = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrice: null == buyPrice
          ? _self.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double,
      profitPerUnit: null == profitPerUnit
          ? _self.profitPerUnit
          : profitPerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      profitPercentage: null == profitPercentage
          ? _self.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalProfit: null == totalProfit
          ? _self.totalProfit
          : totalProfit // ignore: cast_nullable_to_non_nullable
              as double,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ActiveOfferItem].
extension ActiveOfferItemPatterns on ActiveOfferItem {
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
    TResult Function(_ActiveOfferItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem() when $default != null:
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
    TResult Function(_ActiveOfferItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem():
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
    TResult? Function(_ActiveOfferItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem() when $default != null:
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
            String name,
            @JsonKey(name: 'supplier_name') String supplierName,
            @JsonKey(name: 'buy_price') double buyPrice,
            @JsonKey(name: 'sell_price') double sellPrice,
            @JsonKey(name: 'profit_per_unit') double profitPerUnit,
            @JsonKey(name: 'profit_percentage') double profitPercentage,
            int stock,
            @JsonKey(name: 'total_profit') double totalProfit,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.supplierName,
            _that.buyPrice,
            _that.sellPrice,
            _that.profitPerUnit,
            _that.profitPercentage,
            _that.stock,
            _that.totalProfit,
            _that.isActive,
            _that.imageUrl);
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
            String name,
            @JsonKey(name: 'supplier_name') String supplierName,
            @JsonKey(name: 'buy_price') double buyPrice,
            @JsonKey(name: 'sell_price') double sellPrice,
            @JsonKey(name: 'profit_per_unit') double profitPerUnit,
            @JsonKey(name: 'profit_percentage') double profitPercentage,
            int stock,
            @JsonKey(name: 'total_profit') double totalProfit,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem():
        return $default(
            _that.id,
            _that.name,
            _that.supplierName,
            _that.buyPrice,
            _that.sellPrice,
            _that.profitPerUnit,
            _that.profitPercentage,
            _that.stock,
            _that.totalProfit,
            _that.isActive,
            _that.imageUrl);
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
            String name,
            @JsonKey(name: 'supplier_name') String supplierName,
            @JsonKey(name: 'buy_price') double buyPrice,
            @JsonKey(name: 'sell_price') double sellPrice,
            @JsonKey(name: 'profit_per_unit') double profitPerUnit,
            @JsonKey(name: 'profit_percentage') double profitPercentage,
            int stock,
            @JsonKey(name: 'total_profit') double totalProfit,
            @JsonKey(name: 'is_active') bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ActiveOfferItem() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.supplierName,
            _that.buyPrice,
            _that.sellPrice,
            _that.profitPerUnit,
            _that.profitPercentage,
            _that.stock,
            _that.totalProfit,
            _that.isActive,
            _that.imageUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveOfferItem implements ActiveOfferItem {
  const _ActiveOfferItem(
      {required this.id,
      required this.name,
      @JsonKey(name: 'supplier_name') required this.supplierName,
      @JsonKey(name: 'buy_price') required this.buyPrice,
      @JsonKey(name: 'sell_price') required this.sellPrice,
      @JsonKey(name: 'profit_per_unit') required this.profitPerUnit,
      @JsonKey(name: 'profit_percentage') required this.profitPercentage,
      required this.stock,
      @JsonKey(name: 'total_profit') required this.totalProfit,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'image_url') this.imageUrl});
  factory _ActiveOfferItem.fromJson(Map<String, dynamic> json) =>
      _$ActiveOfferItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'supplier_name')
  final String supplierName;
  @override
  @JsonKey(name: 'buy_price')
  final double buyPrice;
  @override
  @JsonKey(name: 'sell_price')
  final double sellPrice;
  @override
  @JsonKey(name: 'profit_per_unit')
  final double profitPerUnit;
  @override
  @JsonKey(name: 'profit_percentage')
  final double profitPercentage;
  @override
  final int stock;
  @override
  @JsonKey(name: 'total_profit')
  final double totalProfit;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  /// Create a copy of ActiveOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveOfferItemCopyWith<_ActiveOfferItem> get copyWith =>
      __$ActiveOfferItemCopyWithImpl<_ActiveOfferItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveOfferItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveOfferItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.supplierName, supplierName) ||
                other.supplierName == supplierName) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.profitPerUnit, profitPerUnit) ||
                other.profitPerUnit == profitPerUnit) &&
            (identical(other.profitPercentage, profitPercentage) ||
                other.profitPercentage == profitPercentage) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.totalProfit, totalProfit) ||
                other.totalProfit == totalProfit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      supplierName,
      buyPrice,
      sellPrice,
      profitPerUnit,
      profitPercentage,
      stock,
      totalProfit,
      isActive,
      imageUrl);

  @override
  String toString() {
    return 'ActiveOfferItem(id: $id, name: $name, supplierName: $supplierName, buyPrice: $buyPrice, sellPrice: $sellPrice, profitPerUnit: $profitPerUnit, profitPercentage: $profitPercentage, stock: $stock, totalProfit: $totalProfit, isActive: $isActive, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$ActiveOfferItemCopyWith<$Res>
    implements $ActiveOfferItemCopyWith<$Res> {
  factory _$ActiveOfferItemCopyWith(
          _ActiveOfferItem value, $Res Function(_ActiveOfferItem) _then) =
      __$ActiveOfferItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'supplier_name') String supplierName,
      @JsonKey(name: 'buy_price') double buyPrice,
      @JsonKey(name: 'sell_price') double sellPrice,
      @JsonKey(name: 'profit_per_unit') double profitPerUnit,
      @JsonKey(name: 'profit_percentage') double profitPercentage,
      int stock,
      @JsonKey(name: 'total_profit') double totalProfit,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$ActiveOfferItemCopyWithImpl<$Res>
    implements _$ActiveOfferItemCopyWith<$Res> {
  __$ActiveOfferItemCopyWithImpl(this._self, this._then);

  final _ActiveOfferItem _self;
  final $Res Function(_ActiveOfferItem) _then;

  /// Create a copy of ActiveOfferItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? supplierName = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? profitPerUnit = null,
    Object? profitPercentage = null,
    Object? stock = null,
    Object? totalProfit = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_ActiveOfferItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      supplierName: null == supplierName
          ? _self.supplierName
          : supplierName // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrice: null == buyPrice
          ? _self.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellPrice: null == sellPrice
          ? _self.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as double,
      profitPerUnit: null == profitPerUnit
          ? _self.profitPerUnit
          : profitPerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      profitPercentage: null == profitPercentage
          ? _self.profitPercentage
          : profitPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      totalProfit: null == totalProfit
          ? _self.totalProfit
          : totalProfit // ignore: cast_nullable_to_non_nullable
              as double,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
