// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_create_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UiCreateOrderState {
  Map<int, bool> get selectedOffers;
  Map<int, int> get quantities;
  Map<int, String?> get quantityErrors; // ✅ نمخزن الأخطاء هنا
  double get totalPrice;
  String get note;

  /// Create a copy of UiCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UiCreateOrderStateCopyWith<UiCreateOrderState> get copyWith =>
      _$UiCreateOrderStateCopyWithImpl<UiCreateOrderState>(
          this as UiCreateOrderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UiCreateOrderState &&
            const DeepCollectionEquality()
                .equals(other.selectedOffers, selectedOffers) &&
            const DeepCollectionEquality()
                .equals(other.quantities, quantities) &&
            const DeepCollectionEquality()
                .equals(other.quantityErrors, quantityErrors) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedOffers),
      const DeepCollectionEquality().hash(quantities),
      const DeepCollectionEquality().hash(quantityErrors),
      totalPrice,
      note);

  @override
  String toString() {
    return 'UiCreateOrderState(selectedOffers: $selectedOffers, quantities: $quantities, quantityErrors: $quantityErrors, totalPrice: $totalPrice, note: $note)';
  }
}

/// @nodoc
abstract mixin class $UiCreateOrderStateCopyWith<$Res> {
  factory $UiCreateOrderStateCopyWith(
          UiCreateOrderState value, $Res Function(UiCreateOrderState) _then) =
      _$UiCreateOrderStateCopyWithImpl;
  @useResult
  $Res call(
      {Map<int, bool> selectedOffers,
      Map<int, int> quantities,
      Map<int, String?> quantityErrors,
      double totalPrice,
      String note});
}

/// @nodoc
class _$UiCreateOrderStateCopyWithImpl<$Res>
    implements $UiCreateOrderStateCopyWith<$Res> {
  _$UiCreateOrderStateCopyWithImpl(this._self, this._then);

  final UiCreateOrderState _self;
  final $Res Function(UiCreateOrderState) _then;

  /// Create a copy of UiCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedOffers = null,
    Object? quantities = null,
    Object? quantityErrors = null,
    Object? totalPrice = null,
    Object? note = null,
  }) {
    return _then(_self.copyWith(
      selectedOffers: null == selectedOffers
          ? _self.selectedOffers
          : selectedOffers // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      quantities: null == quantities
          ? _self.quantities
          : quantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      quantityErrors: null == quantityErrors
          ? _self.quantityErrors
          : quantityErrors // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UiCreateOrderState].
extension UiCreateOrderStatePatterns on UiCreateOrderState {
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
    TResult Function(_CreateOrderState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState() when $default != null:
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
    TResult Function(_CreateOrderState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState():
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
    TResult? Function(_CreateOrderState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState() when $default != null:
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
    TResult Function(Map<int, bool> selectedOffers, Map<int, int> quantities,
            Map<int, String?> quantityErrors, double totalPrice, String note)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState() when $default != null:
        return $default(_that.selectedOffers, _that.quantities,
            _that.quantityErrors, _that.totalPrice, _that.note);
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
    TResult Function(Map<int, bool> selectedOffers, Map<int, int> quantities,
            Map<int, String?> quantityErrors, double totalPrice, String note)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState():
        return $default(_that.selectedOffers, _that.quantities,
            _that.quantityErrors, _that.totalPrice, _that.note);
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
    TResult? Function(Map<int, bool> selectedOffers, Map<int, int> quantities,
            Map<int, String?> quantityErrors, double totalPrice, String note)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderState() when $default != null:
        return $default(_that.selectedOffers, _that.quantities,
            _that.quantityErrors, _that.totalPrice, _that.note);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CreateOrderState implements UiCreateOrderState {
  const _CreateOrderState(
      {final Map<int, bool> selectedOffers = const {},
      final Map<int, int> quantities = const {},
      final Map<int, String?> quantityErrors = const {},
      this.totalPrice = 0,
      this.note = ''})
      : _selectedOffers = selectedOffers,
        _quantities = quantities,
        _quantityErrors = quantityErrors;

  final Map<int, bool> _selectedOffers;
  @override
  @JsonKey()
  Map<int, bool> get selectedOffers {
    if (_selectedOffers is EqualUnmodifiableMapView) return _selectedOffers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOffers);
  }

  final Map<int, int> _quantities;
  @override
  @JsonKey()
  Map<int, int> get quantities {
    if (_quantities is EqualUnmodifiableMapView) return _quantities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quantities);
  }

  final Map<int, String?> _quantityErrors;
  @override
  @JsonKey()
  Map<int, String?> get quantityErrors {
    if (_quantityErrors is EqualUnmodifiableMapView) return _quantityErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quantityErrors);
  }

// ✅ نمخزن الأخطاء هنا
  @override
  @JsonKey()
  final double totalPrice;
  @override
  @JsonKey()
  final String note;

  /// Create a copy of UiCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderStateCopyWith<_CreateOrderState> get copyWith =>
      __$CreateOrderStateCopyWithImpl<_CreateOrderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderState &&
            const DeepCollectionEquality()
                .equals(other._selectedOffers, _selectedOffers) &&
            const DeepCollectionEquality()
                .equals(other._quantities, _quantities) &&
            const DeepCollectionEquality()
                .equals(other._quantityErrors, _quantityErrors) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedOffers),
      const DeepCollectionEquality().hash(_quantities),
      const DeepCollectionEquality().hash(_quantityErrors),
      totalPrice,
      note);

  @override
  String toString() {
    return 'UiCreateOrderState(selectedOffers: $selectedOffers, quantities: $quantities, quantityErrors: $quantityErrors, totalPrice: $totalPrice, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderStateCopyWith<$Res>
    implements $UiCreateOrderStateCopyWith<$Res> {
  factory _$CreateOrderStateCopyWith(
          _CreateOrderState value, $Res Function(_CreateOrderState) _then) =
      __$CreateOrderStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Map<int, bool> selectedOffers,
      Map<int, int> quantities,
      Map<int, String?> quantityErrors,
      double totalPrice,
      String note});
}

/// @nodoc
class __$CreateOrderStateCopyWithImpl<$Res>
    implements _$CreateOrderStateCopyWith<$Res> {
  __$CreateOrderStateCopyWithImpl(this._self, this._then);

  final _CreateOrderState _self;
  final $Res Function(_CreateOrderState) _then;

  /// Create a copy of UiCreateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedOffers = null,
    Object? quantities = null,
    Object? quantityErrors = null,
    Object? totalPrice = null,
    Object? note = null,
  }) {
    return _then(_CreateOrderState(
      selectedOffers: null == selectedOffers
          ? _self._selectedOffers
          : selectedOffers // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      quantities: null == quantities
          ? _self._quantities
          : quantities // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      quantityErrors: null == quantityErrors
          ? _self._quantityErrors
          : quantityErrors // ignore: cast_nullable_to_non_nullable
              as Map<int, String?>,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
