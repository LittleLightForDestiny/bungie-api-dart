// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerksComponent _$DestinyItemPerksComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPerksComponent()
    ..perks = (json['perks'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPerkReference.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemPerksComponentToJson(
        DestinyItemPerksComponent instance) =>
    <String, dynamic>{
      'perks': instance.perks,
    };
