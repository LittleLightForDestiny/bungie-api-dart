// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerksComponent _$DestinyItemPerksComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemPerksComponent()
      ..perks =
          (json['perks'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPerkReference.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyItemPerksComponentToJson(
  DestinyItemPerksComponent instance,
) => <String, dynamic>{
  'perks': instance.perks?.map((e) => e.toJson()).toList(),
};
