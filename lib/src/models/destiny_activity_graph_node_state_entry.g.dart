// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_state_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeStateEntry _$DestinyActivityGraphNodeStateEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityGraphNodeStateEntry()
    ..state = _$enumDecodeNullable(
        _$DestinyGraphNodeStateEnumMap, json['state'],
        unknownValue: DestinyGraphNodeState.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyActivityGraphNodeStateEntryToJson(
        DestinyActivityGraphNodeStateEntry instance) =>
    <String, dynamic>{
      'state': _$DestinyGraphNodeStateEnumMap[instance.state],
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

const _$DestinyGraphNodeStateEnumMap = {
  DestinyGraphNodeState.Hidden: 0,
  DestinyGraphNodeState.Visible: 1,
  DestinyGraphNodeState.Teaser: 2,
  DestinyGraphNodeState.Incomplete: 3,
  DestinyGraphNodeState.Completed: 4,
  DestinyGraphNodeState.ProtectedInvalidEnumValue: 999999999,
};
