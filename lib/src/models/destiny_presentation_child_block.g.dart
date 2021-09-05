// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_child_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationChildBlock _$DestinyPresentationChildBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyPresentationChildBlock()
    ..presentationNodeType = _$enumDecodeNullable(
        _$DestinyPresentationNodeTypeEnumMap, json['presentationNodeType'],
        unknownValue: DestinyPresentationNodeType.ProtectedInvalidEnumValue)
    ..parentPresentationNodeHashes =
        (json['parentPresentationNodeHashes'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList()
    ..displayStyle = _$enumDecodeNullable(
        _$DestinyPresentationDisplayStyleEnumMap, json['displayStyle'],
        unknownValue:
            DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyPresentationChildBlockToJson(
        DestinyPresentationChildBlock instance) =>
    <String, dynamic>{
      'presentationNodeType':
          _$DestinyPresentationNodeTypeEnumMap[instance.presentationNodeType],
      'parentPresentationNodeHashes': instance.parentPresentationNodeHashes,
      'displayStyle':
          _$DestinyPresentationDisplayStyleEnumMap[instance.displayStyle],
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

const _$DestinyPresentationDisplayStyleEnumMap = {
  DestinyPresentationDisplayStyle.Category: 0,
  DestinyPresentationDisplayStyle.Badge: 1,
  DestinyPresentationDisplayStyle.Medals: 2,
  DestinyPresentationDisplayStyle.Collectible: 3,
  DestinyPresentationDisplayStyle.Record: 4,
  DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue: 999999999,
};
