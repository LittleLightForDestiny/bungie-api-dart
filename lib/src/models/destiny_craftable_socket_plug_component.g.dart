// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_craftable_socket_plug_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCraftableSocketPlugComponent
    _$DestinyCraftableSocketPlugComponentFromJson(Map<String, dynamic> json) =>
        DestinyCraftableSocketPlugComponent()
          ..plugItemHash = json['plugItemHash'] as int?
          ..failedRequirementIndexes =
              (json['failedRequirementIndexes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList();

Map<String, dynamic> _$DestinyCraftableSocketPlugComponentToJson(
        DestinyCraftableSocketPlugComponent instance) =>
    <String, dynamic>{
      'plugItemHash': instance.plugItemHash,
      'failedRequirementIndexes': instance.failedRequirementIndexes,
    };
