// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_activity_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderActivitySetDefinition
_$DestinyFireteamFinderActivitySetDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderActivitySetDefinition()
      ..maximumPartySize = (json['maximumPartySize'] as num?)?.toInt()
      ..optionHashes =
          (json['optionHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..labelHashes =
          (json['labelHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..activityGraphHashes =
          (json['activityGraphHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..activityHashes =
          (json['activityHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderActivitySetDefinitionToJson(
  DestinyFireteamFinderActivitySetDefinition instance,
) => <String, dynamic>{
  'maximumPartySize': instance.maximumPartySize,
  'optionHashes': instance.optionHashes,
  'labelHashes': instance.labelHashes,
  'activityGraphHashes': instance.activityGraphHashes,
  'activityHashes': instance.activityHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
