// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogItem {
  int get id;
  @JsonKey(name: 'supplier_product_id')
  int get supplierProductId;
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

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogItemCopyWith<CatalogItem> get copyWith =>
      _$CatalogItemCopyWithImpl<CatalogItem>(this as CatalogItem, _$identity);

  /// Serializes this CatalogItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
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
      supplierProductId,
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
    return 'CatalogItem(id: $id, supplierProductId: $supplierProductId, name: $name, supplierName: $supplierName, buyPrice: $buyPrice, sellPrice: $sellPrice, profitPerUnit: $profitPerUnit, profitPercentage: $profitPercentage, stock: $stock, totalProfit: $totalProfit, isActive: $isActive, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $CatalogItemCopyWith<$Res> {
  factory $CatalogItemCopyWith(
          CatalogItem value, $Res Function(CatalogItem) _then) =
      _$CatalogItemCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
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
class _$CatalogItemCopyWithImpl<$Res> implements $CatalogItemCopyWith<$Res> {
  _$CatalogItemCopyWithImpl(this._self, this._then);

  final CatalogItem _self;
  final $Res Function(CatalogItem) _then;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? supplierProductId = null,
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
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [CatalogItem].
extension CatalogItemPatterns on CatalogItem {
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
    TResult Function(_CatalogItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
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
    TResult Function(_CatalogItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem():
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
    TResult? Function(_CatalogItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CatalogItem() when $default != null:
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
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
      case _CatalogItem() when $default != null:
        return $default(
            _that.id,
            _that.supplierProductId,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
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
      case _CatalogItem():
        return $default(
            _that.id,
            _that.supplierProductId,
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
            @JsonKey(name: 'supplier_product_id') int supplierProductId,
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
      case _CatalogItem() when $default != null:
        return $default(
            _that.id,
            _that.supplierProductId,
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
class _CatalogItem implements CatalogItem {
  const _CatalogItem(
      {required this.id,
      @JsonKey(name: 'supplier_product_id') required this.supplierProductId,
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
  factory _CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'supplier_product_id')
  final int supplierProductId;
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

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogItemCopyWith<_CatalogItem> get copyWith =>
      __$CatalogItemCopyWithImpl<_CatalogItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.supplierProductId, supplierProductId) ||
                other.supplierProductId == supplierProductId) &&
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
      supplierProductId,
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
    return 'CatalogItem(id: $id, supplierProductId: $supplierProductId, name: $name, supplierName: $supplierName, buyPrice: $buyPrice, sellPrice: $sellPrice, profitPerUnit: $profitPerUnit, profitPercentage: $profitPercentage, stock: $stock, totalProfit: $totalProfit, isActive: $isActive, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$CatalogItemCopyWith<$Res>
    implements $CatalogItemCopyWith<$Res> {
  factory _$CatalogItemCopyWith(
          _CatalogItem value, $Res Function(_CatalogItem) _then) =
      __$CatalogItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'supplier_product_id') int supplierProductId,
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
class __$CatalogItemCopyWithImpl<$Res> implements _$CatalogItemCopyWith<$Res> {
  __$CatalogItemCopyWithImpl(this._self, this._then);

  final _CatalogItem _self;
  final $Res Function(_CatalogItem) _then;

  /// Create a copy of CatalogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? supplierProductId = null,
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
    return _then(_CatalogItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      supplierProductId: null == supplierProductId
          ? _self.supplierProductId
          : supplierProductId // ignore: cast_nullable_to_non_nullable
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
