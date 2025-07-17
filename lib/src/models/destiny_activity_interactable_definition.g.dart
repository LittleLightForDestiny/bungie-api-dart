// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_interactable_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityInteractableDefinition
_$DestinyActivityInteractableDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivityInteractableDefinition()
      ..entries =
          (json['entries'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityInteractableEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityInteractableDefinitionToJson(
  DestinyActivityInteractableDefinition instance,
) => <String, dynamic>{
  'entries': instance.entries?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
