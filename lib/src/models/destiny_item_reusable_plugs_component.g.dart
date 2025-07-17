// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_reusable_plugs_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemReusablePlugsComponent _$DestinyItemReusablePlugsComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemReusablePlugsComponent()
      ..plugs = (json['plugs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map(
                (e) => DestinyItemPlugBase.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );

Map<String, dynamic> _$DestinyItemReusablePlugsComponentToJson(
  DestinyItemReusablePlugsComponent instance,
) => <String, dynamic>{
  'plugs': instance.plugs?.map(
    (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
  ),
};
