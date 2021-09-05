// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_featuring_state_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeFeaturingStateDefinition
    _$DestinyActivityGraphNodeFeaturingStateDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyActivityGraphNodeFeaturingStateDefinition()
    ..highlightType = _$enumDecodeNullable(
        _$ActivityGraphNodeHighlightTypeEnumMap, json['highlightType'],
        unknownValue: ActivityGraphNodeHighlightType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyActivityGraphNodeFeaturingStateDefinitionToJson(
        DestinyActivityGraphNodeFeaturingStateDefinition instance) =>
    <String, dynamic>{
      'highlightType':
          _$ActivityGraphNodeHighlightTypeEnumMap[instance.highlightType],
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

const _$ActivityGraphNodeHighlightTypeEnumMap = {
  ActivityGraphNodeHighlightType.None: 0,
  ActivityGraphNodeHighlightType.Normal: 1,
  ActivityGraphNodeHighlightType.Hyper: 2,
  ActivityGraphNodeHighlightType.Comet: 3,
  ActivityGraphNodeHighlightType.RiseOfIron: 4,
  ActivityGraphNodeHighlightType.ProtectedInvalidEnumValue: 999999999,
};
