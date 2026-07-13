// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 bool get loadingProductList; Option<Either<ProductFailure, Unit>> get failOrFetchSuccess; List<Product> get productList; PaginationData get productListpaging; List<Product> get searchProductResult; PaginationData get productSearchpaging;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.loadingProductList, loadingProductList) || other.loadingProductList == loadingProductList)&&(identical(other.failOrFetchSuccess, failOrFetchSuccess) || other.failOrFetchSuccess == failOrFetchSuccess)&&const DeepCollectionEquality().equals(other.productList, productList)&&(identical(other.productListpaging, productListpaging) || other.productListpaging == productListpaging)&&const DeepCollectionEquality().equals(other.searchProductResult, searchProductResult)&&(identical(other.productSearchpaging, productSearchpaging) || other.productSearchpaging == productSearchpaging));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProductList,failOrFetchSuccess,const DeepCollectionEquality().hash(productList),productListpaging,const DeepCollectionEquality().hash(searchProductResult),productSearchpaging);

@override
String toString() {
  return 'ProductState(loadingProductList: $loadingProductList, failOrFetchSuccess: $failOrFetchSuccess, productList: $productList, productListpaging: $productListpaging, searchProductResult: $searchProductResult, productSearchpaging: $productSearchpaging)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 bool loadingProductList, Option<Either<ProductFailure, Unit>> failOrFetchSuccess, List<Product> productList, PaginationData productListpaging, List<Product> searchProductResult, PaginationData productSearchpaging
});




}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadingProductList = null,Object? failOrFetchSuccess = null,Object? productList = null,Object? productListpaging = null,Object? searchProductResult = null,Object? productSearchpaging = null,}) {
  return _then(_self.copyWith(
loadingProductList: null == loadingProductList ? _self.loadingProductList : loadingProductList // ignore: cast_nullable_to_non_nullable
as bool,failOrFetchSuccess: null == failOrFetchSuccess ? _self.failOrFetchSuccess : failOrFetchSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ProductFailure, Unit>>,productList: null == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as List<Product>,productListpaging: null == productListpaging ? _self.productListpaging : productListpaging // ignore: cast_nullable_to_non_nullable
as PaginationData,searchProductResult: null == searchProductResult ? _self.searchProductResult : searchProductResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productSearchpaging: null == productSearchpaging ? _self.productSearchpaging : productSearchpaging // ignore: cast_nullable_to_non_nullable
as PaginationData,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductState value)  $default,){
final _that = this;
switch (_that) {
case _ProductState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loadingProductList,  Option<Either<ProductFailure, Unit>> failOrFetchSuccess,  List<Product> productList,  PaginationData productListpaging,  List<Product> searchProductResult,  PaginationData productSearchpaging)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListpaging,_that.searchProductResult,_that.productSearchpaging);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loadingProductList,  Option<Either<ProductFailure, Unit>> failOrFetchSuccess,  List<Product> productList,  PaginationData productListpaging,  List<Product> searchProductResult,  PaginationData productSearchpaging)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListpaging,_that.searchProductResult,_that.productSearchpaging);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loadingProductList,  Option<Either<ProductFailure, Unit>> failOrFetchSuccess,  List<Product> productList,  PaginationData productListpaging,  List<Product> searchProductResult,  PaginationData productSearchpaging)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListpaging,_that.searchProductResult,_that.productSearchpaging);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState implements ProductState {
  const _ProductState({required this.loadingProductList, required this.failOrFetchSuccess, required final  List<Product> productList, required this.productListpaging, required final  List<Product> searchProductResult, required this.productSearchpaging}): _productList = productList,_searchProductResult = searchProductResult;
  

@override final  bool loadingProductList;
@override final  Option<Either<ProductFailure, Unit>> failOrFetchSuccess;
 final  List<Product> _productList;
@override List<Product> get productList {
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productList);
}

@override final  PaginationData productListpaging;
 final  List<Product> _searchProductResult;
@override List<Product> get searchProductResult {
  if (_searchProductResult is EqualUnmodifiableListView) return _searchProductResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchProductResult);
}

@override final  PaginationData productSearchpaging;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.loadingProductList, loadingProductList) || other.loadingProductList == loadingProductList)&&(identical(other.failOrFetchSuccess, failOrFetchSuccess) || other.failOrFetchSuccess == failOrFetchSuccess)&&const DeepCollectionEquality().equals(other._productList, _productList)&&(identical(other.productListpaging, productListpaging) || other.productListpaging == productListpaging)&&const DeepCollectionEquality().equals(other._searchProductResult, _searchProductResult)&&(identical(other.productSearchpaging, productSearchpaging) || other.productSearchpaging == productSearchpaging));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProductList,failOrFetchSuccess,const DeepCollectionEquality().hash(_productList),productListpaging,const DeepCollectionEquality().hash(_searchProductResult),productSearchpaging);

@override
String toString() {
  return 'ProductState(loadingProductList: $loadingProductList, failOrFetchSuccess: $failOrFetchSuccess, productList: $productList, productListpaging: $productListpaging, searchProductResult: $searchProductResult, productSearchpaging: $productSearchpaging)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 bool loadingProductList, Option<Either<ProductFailure, Unit>> failOrFetchSuccess, List<Product> productList, PaginationData productListpaging, List<Product> searchProductResult, PaginationData productSearchpaging
});




}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadingProductList = null,Object? failOrFetchSuccess = null,Object? productList = null,Object? productListpaging = null,Object? searchProductResult = null,Object? productSearchpaging = null,}) {
  return _then(_ProductState(
loadingProductList: null == loadingProductList ? _self.loadingProductList : loadingProductList // ignore: cast_nullable_to_non_nullable
as bool,failOrFetchSuccess: null == failOrFetchSuccess ? _self.failOrFetchSuccess : failOrFetchSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ProductFailure, Unit>>,productList: null == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<Product>,productListpaging: null == productListpaging ? _self.productListpaging : productListpaging // ignore: cast_nullable_to_non_nullable
as PaginationData,searchProductResult: null == searchProductResult ? _self._searchProductResult : searchProductResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productSearchpaging: null == productSearchpaging ? _self.productSearchpaging : productSearchpaging // ignore: cast_nullable_to_non_nullable
as PaginationData,
  ));
}


}

/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchProductData value)?  fetchProductData,TResult Function( _FetchMoreProductData value)?  fetchMoreProductData,TResult Function( _GetProductDetailById value)?  getProductDetailById,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData(_that);case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData(_that);case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchProductData value)  fetchProductData,required TResult Function( _FetchMoreProductData value)  fetchMoreProductData,required TResult Function( _GetProductDetailById value)  getProductDetailById,}){
final _that = this;
switch (_that) {
case _FetchProductData():
return fetchProductData(_that);case _FetchMoreProductData():
return fetchMoreProductData(_that);case _GetProductDetailById():
return getProductDetailById(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchProductData value)?  fetchProductData,TResult? Function( _FetchMoreProductData value)?  fetchMoreProductData,TResult? Function( _GetProductDetailById value)?  getProductDetailById,}){
final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData(_that);case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData(_that);case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchProductData,TResult Function()?  fetchMoreProductData,TResult Function( String id)?  getProductDetailById,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData();case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData();case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchProductData,required TResult Function()  fetchMoreProductData,required TResult Function( String id)  getProductDetailById,}) {final _that = this;
switch (_that) {
case _FetchProductData():
return fetchProductData();case _FetchMoreProductData():
return fetchMoreProductData();case _GetProductDetailById():
return getProductDetailById(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchProductData,TResult? Function()?  fetchMoreProductData,TResult? Function( String id)?  getProductDetailById,}) {final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData();case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData();case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _FetchProductData implements ProductEvent {
  const _FetchProductData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchProductData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.fetchProductData()';
}


}




/// @nodoc


class _FetchMoreProductData implements ProductEvent {
  const _FetchMoreProductData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMoreProductData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.fetchMoreProductData()';
}


}




/// @nodoc


class _GetProductDetailById implements ProductEvent {
  const _GetProductDetailById(this.id);
  

 final  String id;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductDetailByIdCopyWith<_GetProductDetailById> get copyWith => __$GetProductDetailByIdCopyWithImpl<_GetProductDetailById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductDetailById&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProductEvent.getProductDetailById(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetProductDetailByIdCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$GetProductDetailByIdCopyWith(_GetProductDetailById value, $Res Function(_GetProductDetailById) _then) = __$GetProductDetailByIdCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetProductDetailByIdCopyWithImpl<$Res>
    implements _$GetProductDetailByIdCopyWith<$Res> {
  __$GetProductDetailByIdCopyWithImpl(this._self, this._then);

  final _GetProductDetailById _self;
  final $Res Function(_GetProductDetailById) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetProductDetailById(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
