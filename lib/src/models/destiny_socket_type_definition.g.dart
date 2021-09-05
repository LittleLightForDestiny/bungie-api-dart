// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_socket_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocketTypeDefinition _$DestinySocketTypeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinySocketTypeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..insertAction = json['insertAction'] == null
        ? null
        : DestinyInsertPlugActionDefinition.fromJson(
            json['insertAction'] as Map<String, dynamic>)
    ..plugWhitelist = (json['plugWhitelist'] as List<dynamic>?)
        ?.map((e) => DestinyPlugWhitelistEntryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..socketCategoryHash = json['socketCategoryHash'] as int?
    ..visibility = _$enumDecodeNullable(
        _$DestinySocketVisibilityEnumMap, json['visibility'],
        unknownValue: DestinySocketVisibility.ProtectedInvalidEnumValue)
    ..alwaysRandomizeSockets = json['alwaysRandomizeSockets'] as bool?
    ..isPreviewEnabled = json['isPreviewEnabled'] as bool?
    ..hideDuplicateReusablePlugs = json['hideDuplicateReusablePlugs'] as bool?
    ..overridesUiAppearance = json['overridesUiAppearance'] as bool?
    ..avoidDuplicatesOnInitialization =
        json['avoidDuplicatesOnInitialization'] as bool?
    ..currencyScalars = (json['currencyScalars'] as List<dynamic>?)
        ?.map((e) => DestinySocketTypeScalarMaterialRequirementEntry.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinySocketTypeDefinitionToJson(
        DestinySocketTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'insertAction': instance.insertAction,
      'plugWhitelist': instance.plugWhitelist,
      'socketCategoryHash': instance.socketCategoryHash,
      'visibility': _$DestinySocketVisibilityEnumMap[instance.visibility],
      'alwaysRandomizeSockets': instance.alwaysRandomizeSockets,
      'isPreviewEnabled': instance.isPreviewEnabled,
      'hideDuplicateReusablePlugs': instance.hideDuplicateReusablePlugs,
      'overridesUiAppearance': instance.overridesUiAppearance,
      'avoidDuplicatesOnInitialization':
          instance.avoidDuplicatesOnInitialization,
      'currencyScalars': instance.currencyScalars,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinySocketVisibilityEnumMap = {
  DestinySocketVisibility.Visible: 0,
  DestinySocketVisibility.Hidden: 1,
  DestinySocketVisibility.HiddenWhenEmpty: 2,
  DestinySocketVisibility.HiddenIfNoPlugsAvailable: 3,
  DestinySocketVisibility.ProtectedInvalidEnumValue: 999999999,
};
