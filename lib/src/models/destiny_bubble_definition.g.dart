// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_bubble_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyBubbleDefinition _$DestinyBubbleDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyBubbleDefinition()
      ..hash = (json['hash'] as num?)?.toInt()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyBubbleDefinitionToJson(
  DestinyBubbleDefinition instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'displayProperties': instance.displayProperties?.toJson(),
};
