// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_faction_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFactionDefinition _$DestinyFactionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFactionDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..progressionHash = (json['progressionHash'] as num?)?.toInt()
      ..tokenValues = (json['tokenValues'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      )
      ..rewardItemHash = (json['rewardItemHash'] as num?)?.toInt()
      ..rewardVendorHash = (json['rewardVendorHash'] as num?)?.toInt()
      ..vendors =
          (json['vendors'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFactionVendorDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFactionDefinitionToJson(
  DestinyFactionDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'progressionHash': instance.progressionHash,
  'tokenValues': instance.tokenValues,
  'rewardItemHash': instance.rewardItemHash,
  'rewardVendorHash': instance.rewardVendorHash,
  'vendors': instance.vendors?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
