// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_base_item_component_set_ofint32.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBaseItemComponentSetOfint32 _$DestinyBaseItemComponentSetOfint32FromJson(
  Map<String, dynamic> json,
) =>
    DestinyBaseItemComponentSetOfint32()
      ..objectives =
          json['objectives'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..perks =
          json['perks'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(
                json['perks'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyBaseItemComponentSetOfint32ToJson(
  DestinyBaseItemComponentSetOfint32 instance,
) => <String, dynamic>{
  'objectives': instance.objectives?.toJson(),
  'perks': instance.perks?.toJson(),
};
