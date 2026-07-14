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

 bool get loadingProductList; Either<ProductFailure, Unit> get failOrFetchSuccess; List<Product> get productList; PaginationData get productListPaging; Either<ProductFailure, Unit> get failOrSearchSuccess; List<Product> get searchProductResult; PaginationData get productSearchPaging;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.loadingProductList, loadingProductList) || other.loadingProductList == loadingProductList)&&(identical(other.failOrFetchSuccess, failOrFetchSuccess) || other.failOrFetchSuccess == failOrFetchSuccess)&&const DeepCollectionEquality().equals(other.productList, productList)&&(identical(other.productListPaging, productListPaging) || other.productListPaging == productListPaging)&&(identical(other.failOrSearchSuccess, failOrSearchSuccess) || other.failOrSearchSuccess == failOrSearchSuccess)&&const DeepCollectionEquality().equals(other.searchProductResult, searchProductResult)&&(identical(other.productSearchPaging, productSearchPaging) || other.productSearchPaging == productSearchPaging));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProductList,failOrFetchSuccess,const DeepCollectionEquality().hash(productList),productListPaging,failOrSearchSuccess,const DeepCollectionEquality().hash(searchProductResult),productSearchPaging);

@override
String toString() {
  return 'ProductState(loadingProductList: $loadingProductList, failOrFetchSuccess: $failOrFetchSuccess, productList: $productList, productListPaging: $productListPaging, failOrSearchSuccess: $failOrSearchSuccess, searchProductResult: $searchProductResult, productSearchPaging: $productSearchPaging)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 bool loadingProductList, Either<ProductFailure, Unit> failOrFetchSuccess, List<Product> productList, PaginationData productListPaging, Either<ProductFailure, Unit> failOrSearchSuccess, List<Product> searchProductResult, PaginationData productSearchPaging
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
@pragma('vm:prefer-inline') @override $Res call({Object? loadingProductList = null,Object? failOrFetchSuccess = null,Object? productList = null,Object? productListPaging = null,Object? failOrSearchSuccess = null,Object? searchProductResult = null,Object? productSearchPaging = null,}) {
  return _then(_self.copyWith(
loadingProductList: null == loadingProductList ? _self.loadingProductList : loadingProductList // ignore: cast_nullable_to_non_nullable
as bool,failOrFetchSuccess: null == failOrFetchSuccess ? _self.failOrFetchSuccess : failOrFetchSuccess // ignore: cast_nullable_to_non_nullable
as Either<ProductFailure, Unit>,productList: null == productList ? _self.productList : productList // ignore: cast_nullable_to_non_nullable
as List<Product>,productListPaging: null == productListPaging ? _self.productListPaging : productListPaging // ignore: cast_nullable_to_non_nullable
as PaginationData,failOrSearchSuccess: null == failOrSearchSuccess ? _self.failOrSearchSuccess : failOrSearchSuccess // ignore: cast_nullable_to_non_nullable
as Either<ProductFailure, Unit>,searchProductResult: null == searchProductResult ? _self.searchProductResult : searchProductResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productSearchPaging: null == productSearchPaging ? _self.productSearchPaging : productSearchPaging // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loadingProductList,  Either<ProductFailure, Unit> failOrFetchSuccess,  List<Product> productList,  PaginationData productListPaging,  Either<ProductFailure, Unit> failOrSearchSuccess,  List<Product> searchProductResult,  PaginationData productSearchPaging)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListPaging,_that.failOrSearchSuccess,_that.searchProductResult,_that.productSearchPaging);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loadingProductList,  Either<ProductFailure, Unit> failOrFetchSuccess,  List<Product> productList,  PaginationData productListPaging,  Either<ProductFailure, Unit> failOrSearchSuccess,  List<Product> searchProductResult,  PaginationData productSearchPaging)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListPaging,_that.failOrSearchSuccess,_that.searchProductResult,_that.productSearchPaging);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loadingProductList,  Either<ProductFailure, Unit> failOrFetchSuccess,  List<Product> productList,  PaginationData productListPaging,  Either<ProductFailure, Unit> failOrSearchSuccess,  List<Product> searchProductResult,  PaginationData productSearchPaging)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.loadingProductList,_that.failOrFetchSuccess,_that.productList,_that.productListPaging,_that.failOrSearchSuccess,_that.searchProductResult,_that.productSearchPaging);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState implements ProductState {
  const _ProductState({required this.loadingProductList, required this.failOrFetchSuccess, required final  List<Product> productList, required this.productListPaging, required this.failOrSearchSuccess, required final  List<Product> searchProductResult, required this.productSearchPaging}): _productList = productList,_searchProductResult = searchProductResult;
  

@override final  bool loadingProductList;
@override final  Either<ProductFailure, Unit> failOrFetchSuccess;
 final  List<Product> _productList;
@override List<Product> get productList {
  if (_productList is EqualUnmodifiableListView) return _productList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productList);
}

@override final  PaginationData productListPaging;
@override final  Either<ProductFailure, Unit> failOrSearchSuccess;
 final  List<Product> _searchProductResult;
@override List<Product> get searchProductResult {
  if (_searchProductResult is EqualUnmodifiableListView) return _searchProductResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchProductResult);
}

@override final  PaginationData productSearchPaging;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.loadingProductList, loadingProductList) || other.loadingProductList == loadingProductList)&&(identical(other.failOrFetchSuccess, failOrFetchSuccess) || other.failOrFetchSuccess == failOrFetchSuccess)&&const DeepCollectionEquality().equals(other._productList, _productList)&&(identical(other.productListPaging, productListPaging) || other.productListPaging == productListPaging)&&(identical(other.failOrSearchSuccess, failOrSearchSuccess) || other.failOrSearchSuccess == failOrSearchSuccess)&&const DeepCollectionEquality().equals(other._searchProductResult, _searchProductResult)&&(identical(other.productSearchPaging, productSearchPaging) || other.productSearchPaging == productSearchPaging));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProductList,failOrFetchSuccess,const DeepCollectionEquality().hash(_productList),productListPaging,failOrSearchSuccess,const DeepCollectionEquality().hash(_searchProductResult),productSearchPaging);

@override
String toString() {
  return 'ProductState(loadingProductList: $loadingProductList, failOrFetchSuccess: $failOrFetchSuccess, productList: $productList, productListPaging: $productListPaging, failOrSearchSuccess: $failOrSearchSuccess, searchProductResult: $searchProductResult, productSearchPaging: $productSearchPaging)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 bool loadingProductList, Either<ProductFailure, Unit> failOrFetchSuccess, List<Product> productList, PaginationData productListPaging, Either<ProductFailure, Unit> failOrSearchSuccess, List<Product> searchProductResult, PaginationData productSearchPaging
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
@override @pragma('vm:prefer-inline') $Res call({Object? loadingProductList = null,Object? failOrFetchSuccess = null,Object? productList = null,Object? productListPaging = null,Object? failOrSearchSuccess = null,Object? searchProductResult = null,Object? productSearchPaging = null,}) {
  return _then(_ProductState(
loadingProductList: null == loadingProductList ? _self.loadingProductList : loadingProductList // ignore: cast_nullable_to_non_nullable
as bool,failOrFetchSuccess: null == failOrFetchSuccess ? _self.failOrFetchSuccess : failOrFetchSuccess // ignore: cast_nullable_to_non_nullable
as Either<ProductFailure, Unit>,productList: null == productList ? _self._productList : productList // ignore: cast_nullable_to_non_nullable
as List<Product>,productListPaging: null == productListPaging ? _self.productListPaging : productListPaging // ignore: cast_nullable_to_non_nullable
as PaginationData,failOrSearchSuccess: null == failOrSearchSuccess ? _self.failOrSearchSuccess : failOrSearchSuccess // ignore: cast_nullable_to_non_nullable
as Either<ProductFailure, Unit>,searchProductResult: null == searchProductResult ? _self._searchProductResult : searchProductResult // ignore: cast_nullable_to_non_nullable
as List<Product>,productSearchPaging: null == productSearchPaging ? _self.productSearchPaging : productSearchPaging // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchProductData value)?  fetchProductData,TResult Function( _FetchMoreProductData value)?  fetchMoreProductData,TResult Function( _GetProductDetailById value)?  getProductDetailById,TResult Function( _OnSearchMoreProduct value)?  onSearchMoreProduct,TResult Function( _OnSearchProduct value)?  onSearchProduct,TResult Function( _OnTypeSearchProduct value)?  onTypeSearchProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData(_that);case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData(_that);case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that);case _OnSearchMoreProduct() when onSearchMoreProduct != null:
return onSearchMoreProduct(_that);case _OnSearchProduct() when onSearchProduct != null:
return onSearchProduct(_that);case _OnTypeSearchProduct() when onTypeSearchProduct != null:
return onTypeSearchProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchProductData value)  fetchProductData,required TResult Function( _FetchMoreProductData value)  fetchMoreProductData,required TResult Function( _GetProductDetailById value)  getProductDetailById,required TResult Function( _OnSearchMoreProduct value)  onSearchMoreProduct,required TResult Function( _OnSearchProduct value)  onSearchProduct,required TResult Function( _OnTypeSearchProduct value)  onTypeSearchProduct,}){
final _that = this;
switch (_that) {
case _FetchProductData():
return fetchProductData(_that);case _FetchMoreProductData():
return fetchMoreProductData(_that);case _GetProductDetailById():
return getProductDetailById(_that);case _OnSearchMoreProduct():
return onSearchMoreProduct(_that);case _OnSearchProduct():
return onSearchProduct(_that);case _OnTypeSearchProduct():
return onTypeSearchProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchProductData value)?  fetchProductData,TResult? Function( _FetchMoreProductData value)?  fetchMoreProductData,TResult? Function( _GetProductDetailById value)?  getProductDetailById,TResult? Function( _OnSearchMoreProduct value)?  onSearchMoreProduct,TResult? Function( _OnSearchProduct value)?  onSearchProduct,TResult? Function( _OnTypeSearchProduct value)?  onTypeSearchProduct,}){
final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData(_that);case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData(_that);case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that);case _OnSearchMoreProduct() when onSearchMoreProduct != null:
return onSearchMoreProduct(_that);case _OnSearchProduct() when onSearchProduct != null:
return onSearchProduct(_that);case _OnTypeSearchProduct() when onTypeSearchProduct != null:
return onTypeSearchProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchProductData,TResult Function()?  fetchMoreProductData,TResult Function( String id)?  getProductDetailById,TResult Function( String keyword)?  onSearchMoreProduct,TResult Function( String keyword)?  onSearchProduct,TResult Function( String keyword,  bool isFirstPage)?  onTypeSearchProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData();case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData();case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that.id);case _OnSearchMoreProduct() when onSearchMoreProduct != null:
return onSearchMoreProduct(_that.keyword);case _OnSearchProduct() when onSearchProduct != null:
return onSearchProduct(_that.keyword);case _OnTypeSearchProduct() when onTypeSearchProduct != null:
return onTypeSearchProduct(_that.keyword,_that.isFirstPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchProductData,required TResult Function()  fetchMoreProductData,required TResult Function( String id)  getProductDetailById,required TResult Function( String keyword)  onSearchMoreProduct,required TResult Function( String keyword)  onSearchProduct,required TResult Function( String keyword,  bool isFirstPage)  onTypeSearchProduct,}) {final _that = this;
switch (_that) {
case _FetchProductData():
return fetchProductData();case _FetchMoreProductData():
return fetchMoreProductData();case _GetProductDetailById():
return getProductDetailById(_that.id);case _OnSearchMoreProduct():
return onSearchMoreProduct(_that.keyword);case _OnSearchProduct():
return onSearchProduct(_that.keyword);case _OnTypeSearchProduct():
return onTypeSearchProduct(_that.keyword,_that.isFirstPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchProductData,TResult? Function()?  fetchMoreProductData,TResult? Function( String id)?  getProductDetailById,TResult? Function( String keyword)?  onSearchMoreProduct,TResult? Function( String keyword)?  onSearchProduct,TResult? Function( String keyword,  bool isFirstPage)?  onTypeSearchProduct,}) {final _that = this;
switch (_that) {
case _FetchProductData() when fetchProductData != null:
return fetchProductData();case _FetchMoreProductData() when fetchMoreProductData != null:
return fetchMoreProductData();case _GetProductDetailById() when getProductDetailById != null:
return getProductDetailById(_that.id);case _OnSearchMoreProduct() when onSearchMoreProduct != null:
return onSearchMoreProduct(_that.keyword);case _OnSearchProduct() when onSearchProduct != null:
return onSearchProduct(_that.keyword);case _OnTypeSearchProduct() when onTypeSearchProduct != null:
return onTypeSearchProduct(_that.keyword,_that.isFirstPage);case _:
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

/// @nodoc


class _OnSearchMoreProduct implements ProductEvent {
  const _OnSearchMoreProduct(this.keyword);
  

 final  String keyword;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnSearchMoreProductCopyWith<_OnSearchMoreProduct> get copyWith => __$OnSearchMoreProductCopyWithImpl<_OnSearchMoreProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSearchMoreProduct&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,keyword);

@override
String toString() {
  return 'ProductEvent.onSearchMoreProduct(keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$OnSearchMoreProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$OnSearchMoreProductCopyWith(_OnSearchMoreProduct value, $Res Function(_OnSearchMoreProduct) _then) = __$OnSearchMoreProductCopyWithImpl;
@useResult
$Res call({
 String keyword
});




}
/// @nodoc
class __$OnSearchMoreProductCopyWithImpl<$Res>
    implements _$OnSearchMoreProductCopyWith<$Res> {
  __$OnSearchMoreProductCopyWithImpl(this._self, this._then);

  final _OnSearchMoreProduct _self;
  final $Res Function(_OnSearchMoreProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,}) {
  return _then(_OnSearchMoreProduct(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnSearchProduct implements ProductEvent {
  const _OnSearchProduct(this.keyword);
  

 final  String keyword;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnSearchProductCopyWith<_OnSearchProduct> get copyWith => __$OnSearchProductCopyWithImpl<_OnSearchProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnSearchProduct&&(identical(other.keyword, keyword) || other.keyword == keyword));
}


@override
int get hashCode => Object.hash(runtimeType,keyword);

@override
String toString() {
  return 'ProductEvent.onSearchProduct(keyword: $keyword)';
}


}

/// @nodoc
abstract mixin class _$OnSearchProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$OnSearchProductCopyWith(_OnSearchProduct value, $Res Function(_OnSearchProduct) _then) = __$OnSearchProductCopyWithImpl;
@useResult
$Res call({
 String keyword
});




}
/// @nodoc
class __$OnSearchProductCopyWithImpl<$Res>
    implements _$OnSearchProductCopyWith<$Res> {
  __$OnSearchProductCopyWithImpl(this._self, this._then);

  final _OnSearchProduct _self;
  final $Res Function(_OnSearchProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,}) {
  return _then(_OnSearchProduct(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OnTypeSearchProduct implements ProductEvent {
  const _OnTypeSearchProduct(this.keyword, this.isFirstPage);
  

 final  String keyword;
 final  bool isFirstPage;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnTypeSearchProductCopyWith<_OnTypeSearchProduct> get copyWith => __$OnTypeSearchProductCopyWithImpl<_OnTypeSearchProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnTypeSearchProduct&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.isFirstPage, isFirstPage) || other.isFirstPage == isFirstPage));
}


@override
int get hashCode => Object.hash(runtimeType,keyword,isFirstPage);

@override
String toString() {
  return 'ProductEvent.onTypeSearchProduct(keyword: $keyword, isFirstPage: $isFirstPage)';
}


}

/// @nodoc
abstract mixin class _$OnTypeSearchProductCopyWith<$Res> implements $ProductEventCopyWith<$Res> {
  factory _$OnTypeSearchProductCopyWith(_OnTypeSearchProduct value, $Res Function(_OnTypeSearchProduct) _then) = __$OnTypeSearchProductCopyWithImpl;
@useResult
$Res call({
 String keyword, bool isFirstPage
});




}
/// @nodoc
class __$OnTypeSearchProductCopyWithImpl<$Res>
    implements _$OnTypeSearchProductCopyWith<$Res> {
  __$OnTypeSearchProductCopyWithImpl(this._self, this._then);

  final _OnTypeSearchProduct _self;
  final $Res Function(_OnTypeSearchProduct) _then;

/// Create a copy of ProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? keyword = null,Object? isFirstPage = null,}) {
  return _then(_OnTypeSearchProduct(
null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,null == isFirstPage ? _self.isFirstPage : isFirstPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
