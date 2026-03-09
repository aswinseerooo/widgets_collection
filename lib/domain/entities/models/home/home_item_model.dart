import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:widgets_collection/domain/entities/enums/enums.dart';

part 'home_item_model.freezed.dart';
part 'home_item_model.g.dart';

@freezed
sealed class HomeItemModel with _$HomeItemModel {
  const factory HomeItemModel({
    required String title,
    @JsonKey(includeFromJson: false, includeToJson: false) IconData? icon,
    @JsonKey(includeFromJson: false, includeToJson: false)
    PageRouteInfo<Object?>? route,
    @JsonKey(includeFromJson: false, includeToJson: false) HomeTabType? type,
  }) = _HomeItemModel;

  factory HomeItemModel.fromJson(Map<String, dynamic> json) =>
      _$HomeItemModelFromJson(json);
}
