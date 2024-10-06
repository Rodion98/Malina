// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_delivery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) add,
    required TResult Function(int price) delete,
    required TResult Function(BasketType baskettype) getBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? add,
    TResult? Function(int price)? delete,
    TResult? Function(BasketType baskettype)? getBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? add,
    TResult Function(int price)? delete,
    TResult Function(BasketType baskettype)? getBasket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetBasket value) getBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetBasket value)? getBasket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetBasket value)? getBasket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketEventCopyWith<$Res> {
  factory $BasketEventCopyWith(
          BasketEvent value, $Res Function(BasketEvent) then) =
      _$BasketEventCopyWithImpl<$Res, BasketEvent>;
}

/// @nodoc
class _$BasketEventCopyWithImpl<$Res, $Val extends BasketEvent>
    implements $BasketEventCopyWith<$Res> {
  _$BasketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$AddImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl({required this.price});

  @override
  final int price;

  @override
  String toString() {
    return 'BasketEvent.add(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) add,
    required TResult Function(int price) delete,
    required TResult Function(BasketType baskettype) getBasket,
  }) {
    return add(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? add,
    TResult? Function(int price)? delete,
    TResult? Function(BasketType baskettype)? getBasket,
  }) {
    return add?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? add,
    TResult Function(int price)? delete,
    TResult Function(BasketType baskettype)? getBasket,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetBasket value) getBasket,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetBasket value)? getBasket,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetBasket value)? getBasket,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements BasketEvent {
  const factory _Add({required final int price}) = _$AddImpl;

  int get price;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$DeleteImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.price});

  @override
  final int price;

  @override
  String toString() {
    return 'BasketEvent.delete(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) add,
    required TResult Function(int price) delete,
    required TResult Function(BasketType baskettype) getBasket,
  }) {
    return delete(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? add,
    TResult? Function(int price)? delete,
    TResult? Function(BasketType baskettype)? getBasket,
  }) {
    return delete?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? add,
    TResult Function(int price)? delete,
    TResult Function(BasketType baskettype)? getBasket,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetBasket value) getBasket,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetBasket value)? getBasket,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetBasket value)? getBasket,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements BasketEvent {
  const factory _Delete({required final int price}) = _$DeleteImpl;

  int get price;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBasketImplCopyWith<$Res> {
  factory _$$GetBasketImplCopyWith(
          _$GetBasketImpl value, $Res Function(_$GetBasketImpl) then) =
      __$$GetBasketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BasketType baskettype});
}

/// @nodoc
class __$$GetBasketImplCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$GetBasketImpl>
    implements _$$GetBasketImplCopyWith<$Res> {
  __$$GetBasketImplCopyWithImpl(
      _$GetBasketImpl _value, $Res Function(_$GetBasketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baskettype = null,
  }) {
    return _then(_$GetBasketImpl(
      baskettype: null == baskettype
          ? _value.baskettype
          : baskettype // ignore: cast_nullable_to_non_nullable
              as BasketType,
    ));
  }
}

/// @nodoc

class _$GetBasketImpl implements _GetBasket {
  const _$GetBasketImpl({required this.baskettype});

  @override
  final BasketType baskettype;

  @override
  String toString() {
    return 'BasketEvent.getBasket(baskettype: $baskettype)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBasketImpl &&
            (identical(other.baskettype, baskettype) ||
                other.baskettype == baskettype));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baskettype);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBasketImplCopyWith<_$GetBasketImpl> get copyWith =>
      __$$GetBasketImplCopyWithImpl<_$GetBasketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int price) add,
    required TResult Function(int price) delete,
    required TResult Function(BasketType baskettype) getBasket,
  }) {
    return getBasket(baskettype);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int price)? add,
    TResult? Function(int price)? delete,
    TResult? Function(BasketType baskettype)? getBasket,
  }) {
    return getBasket?.call(baskettype);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int price)? add,
    TResult Function(int price)? delete,
    TResult Function(BasketType baskettype)? getBasket,
    required TResult orElse(),
  }) {
    if (getBasket != null) {
      return getBasket(baskettype);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_Delete value) delete,
    required TResult Function(_GetBasket value) getBasket,
  }) {
    return getBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Add value)? add,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_GetBasket value)? getBasket,
  }) {
    return getBasket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_Delete value)? delete,
    TResult Function(_GetBasket value)? getBasket,
    required TResult orElse(),
  }) {
    if (getBasket != null) {
      return getBasket(this);
    }
    return orElse();
  }
}

abstract class _GetBasket implements BasketEvent {
  const factory _GetBasket({required final BasketType baskettype}) =
      _$GetBasketImpl;

  BasketType get baskettype;
  @JsonKey(ignore: true)
  _$$GetBasketImplCopyWith<_$GetBasketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasketState {
  BasketType get basketType => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<MarketModel> get markets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call(
      {BasketType basketType,
      int totalPrice,
      int count,
      List<MarketModel> markets});
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketType = null,
    Object? totalPrice = null,
    Object? count = null,
    Object? markets = null,
  }) {
    return _then(_value.copyWith(
      basketType: null == basketType
          ? _value.basketType
          : basketType // ignore: cast_nullable_to_non_nullable
              as BasketType,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      markets: null == markets
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketStateImplCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$BasketStateImplCopyWith(
          _$BasketStateImpl value, $Res Function(_$BasketStateImpl) then) =
      __$$BasketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasketType basketType,
      int totalPrice,
      int count,
      List<MarketModel> markets});
}

/// @nodoc
class __$$BasketStateImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateImpl>
    implements _$$BasketStateImplCopyWith<$Res> {
  __$$BasketStateImplCopyWithImpl(
      _$BasketStateImpl _value, $Res Function(_$BasketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketType = null,
    Object? totalPrice = null,
    Object? count = null,
    Object? markets = null,
  }) {
    return _then(_$BasketStateImpl(
      null == basketType
          ? _value.basketType
          : basketType // ignore: cast_nullable_to_non_nullable
              as BasketType,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      markets: null == markets
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
    ));
  }
}

/// @nodoc

class _$BasketStateImpl implements _BasketState {
  const _$BasketStateImpl(this.basketType,
      {required this.totalPrice,
      required this.count,
      required final List<MarketModel> markets})
      : _markets = markets;

  @override
  final BasketType basketType;
  @override
  final int totalPrice;
  @override
  final int count;
  final List<MarketModel> _markets;
  @override
  List<MarketModel> get markets {
    if (_markets is EqualUnmodifiableListView) return _markets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

  @override
  String toString() {
    return 'BasketState(basketType: $basketType, totalPrice: $totalPrice, count: $count, markets: $markets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateImpl &&
            (identical(other.basketType, basketType) ||
                other.basketType == basketType) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._markets, _markets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketType, totalPrice, count,
      const DeepCollectionEquality().hash(_markets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      __$$BasketStateImplCopyWithImpl<_$BasketStateImpl>(this, _$identity);
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(final BasketType basketType,
      {required final int totalPrice,
      required final int count,
      required final List<MarketModel> markets}) = _$BasketStateImpl;

  @override
  BasketType get basketType;
  @override
  int get totalPrice;
  @override
  int get count;
  @override
  List<MarketModel> get markets;
  @override
  @JsonKey(ignore: true)
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
