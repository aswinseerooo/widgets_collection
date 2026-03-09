// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeItemModel {

 String get title;@JsonKey(includeFromJson: false, includeToJson: false) IconData? get icon;@JsonKey(includeFromJson: false, includeToJson: false) PageRouteInfo<Object?>? get route;@JsonKey(includeFromJson: false, includeToJson: false) HomeTabType? get type;
/// Create a copy of HomeItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeItemModelCopyWith<HomeItemModel> get copyWith => _$HomeItemModelCopyWithImpl<HomeItemModel>(this as HomeItemModel, _$identity);

  /// Serializes this HomeItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.route, route) || other.route == route)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,icon,route,type);

@override
String toString() {
  return 'HomeItemModel(title: $title, icon: $icon, route: $route, type: $type)';
}


}

/// @nodoc
abstract mixin class $HomeItemModelCopyWith<$Res>  {
  factory $HomeItemModelCopyWith(HomeItemModel value, $Res Function(HomeItemModel) _then) = _$HomeItemModelCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(includeFromJson: false, includeToJson: false) IconData? icon,@JsonKey(includeFromJson: false, includeToJson: false) PageRouteInfo<Object?>? route,@JsonKey(includeFromJson: false, includeToJson: false) HomeTabType? type
});




}
/// @nodoc
class _$HomeItemModelCopyWithImpl<$Res>
    implements $HomeItemModelCopyWith<$Res> {
  _$HomeItemModelCopyWithImpl(this._self, this._then);

  final HomeItemModel _self;
  final $Res Function(HomeItemModel) _then;

/// Create a copy of HomeItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? icon = freezed,Object? route = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as PageRouteInfo<Object?>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HomeTabType?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeItemModel].
extension HomeItemModelPatterns on HomeItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeItemModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeItemModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(includeFromJson: false, includeToJson: false)  IconData? icon, @JsonKey(includeFromJson: false, includeToJson: false)  PageRouteInfo<Object?>? route, @JsonKey(includeFromJson: false, includeToJson: false)  HomeTabType? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeItemModel() when $default != null:
return $default(_that.title,_that.icon,_that.route,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(includeFromJson: false, includeToJson: false)  IconData? icon, @JsonKey(includeFromJson: false, includeToJson: false)  PageRouteInfo<Object?>? route, @JsonKey(includeFromJson: false, includeToJson: false)  HomeTabType? type)  $default,) {final _that = this;
switch (_that) {
case _HomeItemModel():
return $default(_that.title,_that.icon,_that.route,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(includeFromJson: false, includeToJson: false)  IconData? icon, @JsonKey(includeFromJson: false, includeToJson: false)  PageRouteInfo<Object?>? route, @JsonKey(includeFromJson: false, includeToJson: false)  HomeTabType? type)?  $default,) {final _that = this;
switch (_that) {
case _HomeItemModel() when $default != null:
return $default(_that.title,_that.icon,_that.route,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeItemModel implements HomeItemModel {
  const _HomeItemModel({required this.title, @JsonKey(includeFromJson: false, includeToJson: false) this.icon, @JsonKey(includeFromJson: false, includeToJson: false) this.route, @JsonKey(includeFromJson: false, includeToJson: false) this.type});
  factory _HomeItemModel.fromJson(Map<String, dynamic> json) => _$HomeItemModelFromJson(json);

@override final  String title;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  IconData? icon;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  PageRouteInfo<Object?>? route;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  HomeTabType? type;

/// Create a copy of HomeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeItemModelCopyWith<_HomeItemModel> get copyWith => __$HomeItemModelCopyWithImpl<_HomeItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.route, route) || other.route == route)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,icon,route,type);

@override
String toString() {
  return 'HomeItemModel(title: $title, icon: $icon, route: $route, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HomeItemModelCopyWith<$Res> implements $HomeItemModelCopyWith<$Res> {
  factory _$HomeItemModelCopyWith(_HomeItemModel value, $Res Function(_HomeItemModel) _then) = __$HomeItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(includeFromJson: false, includeToJson: false) IconData? icon,@JsonKey(includeFromJson: false, includeToJson: false) PageRouteInfo<Object?>? route,@JsonKey(includeFromJson: false, includeToJson: false) HomeTabType? type
});




}
/// @nodoc
class __$HomeItemModelCopyWithImpl<$Res>
    implements _$HomeItemModelCopyWith<$Res> {
  __$HomeItemModelCopyWithImpl(this._self, this._then);

  final _HomeItemModel _self;
  final $Res Function(_HomeItemModel) _then;

/// Create a copy of HomeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? icon = freezed,Object? route = freezed,Object? type = freezed,}) {
  return _then(_HomeItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData?,route: freezed == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as PageRouteInfo<Object?>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HomeTabType?,
  ));
}


}

// dart format on
