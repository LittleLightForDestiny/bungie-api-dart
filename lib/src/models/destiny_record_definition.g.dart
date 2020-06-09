// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordDefinition _$DestinyRecordDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..scope = _$enumDecodeNullable(_$DestinyScopeEnumMap, json['scope'],
        unknownValue: DestinyScope.ProtectedInvalidEnumValue)
    ..presentationInfo = json['presentationInfo'] == null
        ? null
        : DestinyPresentationChildBlock.fromJson(
            json['presentationInfo'] as Map<String, dynamic>)
    ..loreHash = json['loreHash'] as int
    ..objectiveHashes =
        (json['objectiveHashes'] as List)?.map((e) => e as int)?.toList()
    ..recordValueStyle = _$enumDecodeNullable(
        _$DestinyRecordValueStyleEnumMap, json['recordValueStyle'],
        unknownValue: DestinyRecordValueStyle.ProtectedInvalidEnumValue)
    ..titleInfo = json['titleInfo'] == null
        ? null
        : DestinyRecordTitleBlock.fromJson(
            json['titleInfo'] as Map<String, dynamic>)
    ..completionInfo = json['completionInfo'] == null
        ? null
        : DestinyRecordCompletionBlock.fromJson(
            json['completionInfo'] as Map<String, dynamic>)
    ..stateInfo = json['stateInfo'] == null
        ? null
        : SchemaRecordStateBlock.fromJson(json['stateInfo'] as Map<String, dynamic>)
    ..requirements = json['requirements'] == null ? null : DestinyPresentationNodeRequirementsBlock.fromJson(json['requirements'] as Map<String, dynamic>)
    ..expirationInfo = json['expirationInfo'] == null ? null : DestinyRecordExpirationBlock.fromJson(json['expirationInfo'] as Map<String, dynamic>)
    ..intervalInfo = json['intervalInfo'] == null ? null : DestinyRecordIntervalBlock.fromJson(json['intervalInfo'] as Map<String, dynamic>)
    ..rewardItems = (json['rewardItems'] as List)?.map((e) => e == null ? null : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))?.toList()
    ..presentationNodeType = _$enumDecodeNullable(_$DestinyPresentationNodeTypeEnumMap, json['presentationNodeType'], unknownValue: DestinyPresentationNodeType.ProtectedInvalidEnumValue)
    ..traitIds = (json['traitIds'] as List)?.map((e) => e as String)?.toList()
    ..traitHashes = (json['traitHashes'] as List)?.map((e) => e as int)?.toList()
    ..parentNodeHashes = (json['parentNodeHashes'] as List)?.map((e) => e as int)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyRecordDefinitionToJson(
        DestinyRecordDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': _$DestinyScopeEnumMap[instance.scope],
      'presentationInfo': instance.presentationInfo,
      'loreHash': instance.loreHash,
      'objectiveHashes': instance.objectiveHashes,
      'recordValueStyle':
          _$DestinyRecordValueStyleEnumMap[instance.recordValueStyle],
      'titleInfo': instance.titleInfo,
      'completionInfo': instance.completionInfo,
      'stateInfo': instance.stateInfo,
      'requirements': instance.requirements,
      'expirationInfo': instance.expirationInfo,
      'intervalInfo': instance.intervalInfo,
      'rewardItems': instance.rewardItems,
      'presentationNodeType':
          _$DestinyPresentationNodeTypeEnumMap[instance.presentationNodeType],
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$DestinyScopeEnumMap = {
  DestinyScope.Profile: 0,
  DestinyScope.Character: 1,
  DestinyScope.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyRecordValueStyleEnumMap = {
  DestinyRecordValueStyle.Integer: 0,
  DestinyRecordValueStyle.Percentage: 1,
  DestinyRecordValueStyle.Milliseconds: 2,
  DestinyRecordValueStyle.Boolean: 3,
  DestinyRecordValueStyle.Decimal: 4,
  DestinyRecordValueStyle.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyPresentationNodeTypeEnumMap = {
  DestinyPresentationNodeType.Default: 0,
  DestinyPresentationNodeType.Category: 1,
  DestinyPresentationNodeType.Collectibles: 2,
  DestinyPresentationNodeType.Records: 3,
  DestinyPresentationNodeType.Metric: 4,
  DestinyPresentationNodeType.ProtectedInvalidEnumValue: 999999999,
};
