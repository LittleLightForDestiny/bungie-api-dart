// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_scored_presentation_node_base_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyScoredPresentationNodeBaseDefinition
    _$DestinyScoredPresentationNodeBaseDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyScoredPresentationNodeBaseDefinition()
    ..maxCategoryRecordScore = json['maxCategoryRecordScore'] as int?
    ..presentationNodeType = _$enumDecodeNullable(
        _$DestinyPresentationNodeTypeEnumMap, json['presentationNodeType'],
        unknownValue: DestinyPresentationNodeType.ProtectedInvalidEnumValue)
    ..traitIds =
        (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..traitHashes =
        (json['traitHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..parentNodeHashes = (json['parentNodeHashes'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList()
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyScoredPresentationNodeBaseDefinitionToJson(
        DestinyScoredPresentationNodeBaseDefinition instance) =>
    <String, dynamic>{
      'maxCategoryRecordScore': instance.maxCategoryRecordScore,
      'presentationNodeType':
          _$DestinyPresentationNodeTypeEnumMap[instance.presentationNodeType],
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'parentNodeHashes': instance.parentNodeHashes,
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

const _$DestinyPresentationNodeTypeEnumMap = {
  DestinyPresentationNodeType.Default: 0,
  DestinyPresentationNodeType.Category: 1,
  DestinyPresentationNodeType.Collectibles: 2,
  DestinyPresentationNodeType.Records: 3,
  DestinyPresentationNodeType.Metric: 4,
  DestinyPresentationNodeType.ProtectedInvalidEnumValue: 999999999,
};
