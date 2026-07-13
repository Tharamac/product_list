// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductFailure()';
}


}

/// @nodoc
class $ProductFailureCopyWith<$Res>  {
$ProductFailureCopyWith(ProductFailure _, $Res Function(ProductFailure) __);
}


/// Adds pattern-matching-related methods to [ProductFailure].
extension ProductFailurePatterns on ProductFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InternetError value)?  internetError,TResult Function( _UnknownError value)?  unknownError,TResult Function( _AcceptableError value)?  acceptableError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InternetError() when internetError != null:
return internetError(_that);case _UnknownError() when unknownError != null:
return unknownError(_that);case _AcceptableError() when acceptableError != null:
return acceptableError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InternetError value)  internetError,required TResult Function( _UnknownError value)  unknownError,required TResult Function( _AcceptableError value)  acceptableError,}){
final _that = this;
switch (_that) {
case _InternetError():
return internetError(_that);case _UnknownError():
return unknownError(_that);case _AcceptableError():
return acceptableError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InternetError value)?  internetError,TResult? Function( _UnknownError value)?  unknownError,TResult? Function( _AcceptableError value)?  acceptableError,}){
final _that = this;
switch (_that) {
case _InternetError() when internetError != null:
return internetError(_that);case _UnknownError() when unknownError != null:
return unknownError(_that);case _AcceptableError() when acceptableError != null:
return acceptableError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  internetError,TResult Function()?  unknownError,TResult Function( int errCode,  String message)?  acceptableError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InternetError() when internetError != null:
return internetError();case _UnknownError() when unknownError != null:
return unknownError();case _AcceptableError() when acceptableError != null:
return acceptableError(_that.errCode,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  internetError,required TResult Function()  unknownError,required TResult Function( int errCode,  String message)  acceptableError,}) {final _that = this;
switch (_that) {
case _InternetError():
return internetError();case _UnknownError():
return unknownError();case _AcceptableError():
return acceptableError(_that.errCode,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  internetError,TResult? Function()?  unknownError,TResult? Function( int errCode,  String message)?  acceptableError,}) {final _that = this;
switch (_that) {
case _InternetError() when internetError != null:
return internetError();case _UnknownError() when unknownError != null:
return unknownError();case _AcceptableError() when acceptableError != null:
return acceptableError(_that.errCode,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _InternetError implements ProductFailure {
  const _InternetError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternetError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductFailure.internetError()';
}


}




/// @nodoc


class _UnknownError implements ProductFailure {
  const _UnknownError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnknownError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductFailure.unknownError()';
}


}




/// @nodoc


class _AcceptableError implements ProductFailure {
  const _AcceptableError({required this.errCode, required this.message});
  

 final  int errCode;
 final  String message;

/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptableErrorCopyWith<_AcceptableError> get copyWith => __$AcceptableErrorCopyWithImpl<_AcceptableError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptableError&&(identical(other.errCode, errCode) || other.errCode == errCode)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,errCode,message);

@override
String toString() {
  return 'ProductFailure.acceptableError(errCode: $errCode, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AcceptableErrorCopyWith<$Res> implements $ProductFailureCopyWith<$Res> {
  factory _$AcceptableErrorCopyWith(_AcceptableError value, $Res Function(_AcceptableError) _then) = __$AcceptableErrorCopyWithImpl;
@useResult
$Res call({
 int errCode, String message
});




}
/// @nodoc
class __$AcceptableErrorCopyWithImpl<$Res>
    implements _$AcceptableErrorCopyWith<$Res> {
  __$AcceptableErrorCopyWithImpl(this._self, this._then);

  final _AcceptableError _self;
  final $Res Function(_AcceptableError) _then;

/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errCode = null,Object? message = null,}) {
  return _then(_AcceptableError(
errCode: null == errCode ? _self.errCode : errCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
