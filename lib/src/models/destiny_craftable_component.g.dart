// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_craftable_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCraftableComponent _$DestinyCraftableComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCraftableComponent()
      ..visible = json['visible'] as bool?
      ..failedRequirementIndexes =
          (json['failedRequirementIndexes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
      ..sockets = (json['sockets'] as List<dynamic>?)
          ?.map((e) => DestinyCraftableSocketComponent.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyCraftableComponentToJson(
        DestinyCraftableComponent instance) =>
    <String, dynamic>{
      'visible': instance.visible,
      'failedRequirementIndexes': instance.failedRequirementIndexes,
      'sockets': instance.sockets?.map((e) => e.toJson()).toList(),
    };
