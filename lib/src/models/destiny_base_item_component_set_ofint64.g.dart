// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_base_item_component_set_ofint64.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBaseItemComponentSetOfint64 _$DestinyBaseItemComponentSetOfint64FromJson(
  Map<String, dynamic> json,
) =>
    DestinyBaseItemComponentSetOfint64()
      ..objectives =
          json['objectives'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..perks =
          json['perks'] == null
              ? null
              : DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromJson(
                json['perks'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyBaseItemComponentSetOfint64ToJson(
  DestinyBaseItemComponentSetOfint64 instance,
) => <String, dynamic>{
  'objectives': instance.objectives?.toJson(),
  'perks': instance.perks?.toJson(),
};
