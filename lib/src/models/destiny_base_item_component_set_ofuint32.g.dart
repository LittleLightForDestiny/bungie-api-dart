// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_base_item_component_set_ofuint32.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBaseItemComponentSetOfuint32
    _$DestinyBaseItemComponentSetOfuint32FromJson(Map<String, dynamic> json) {
  return DestinyBaseItemComponentSetOfuint32()
    ..objectives = json['objectives'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent
            .fromJson(json['objectives'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyBaseItemComponentSetOfuint32ToJson(
        DestinyBaseItemComponentSetOfuint32 instance) =>
    <String, dynamic>{
      'objectives': instance.objectives,
    };
