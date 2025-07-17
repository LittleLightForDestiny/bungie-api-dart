// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_socket_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocketTypeDefinition _$DestinySocketTypeDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySocketTypeDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..insertAction =
          json['insertAction'] == null
              ? null
              : DestinyInsertPlugActionDefinition.fromJson(
                json['insertAction'] as Map<String, dynamic>,
              )
      ..plugWhitelist =
          (json['plugWhitelist'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPlugWhitelistEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..socketCategoryHash = (json['socketCategoryHash'] as num?)?.toInt()
      ..visibility = decodeDestinySocketVisibility(json['visibility'])
      ..alwaysRandomizeSockets = json['alwaysRandomizeSockets'] as bool?
      ..isPreviewEnabled = json['isPreviewEnabled'] as bool?
      ..hideDuplicateReusablePlugs = json['hideDuplicateReusablePlugs'] as bool?
      ..overridesUiAppearance = json['overridesUiAppearance'] as bool?
      ..avoidDuplicatesOnInitialization =
          json['avoidDuplicatesOnInitialization'] as bool?
      ..currencyScalars =
          (json['currencyScalars'] as List<dynamic>?)
              ?.map(
                (e) => DestinySocketTypeScalarMaterialRequirementEntry.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySocketTypeDefinitionToJson(
  DestinySocketTypeDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'insertAction': instance.insertAction?.toJson(),
  'plugWhitelist': instance.plugWhitelist?.map((e) => e.toJson()).toList(),
  'socketCategoryHash': instance.socketCategoryHash,
  'visibility': encodeDestinySocketVisibility(instance.visibility),
  'alwaysRandomizeSockets': instance.alwaysRandomizeSockets,
  'isPreviewEnabled': instance.isPreviewEnabled,
  'hideDuplicateReusablePlugs': instance.hideDuplicateReusablePlugs,
  'overridesUiAppearance': instance.overridesUiAppearance,
  'avoidDuplicatesOnInitialization': instance.avoidDuplicatesOnInitialization,
  'currencyScalars': instance.currencyScalars?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
