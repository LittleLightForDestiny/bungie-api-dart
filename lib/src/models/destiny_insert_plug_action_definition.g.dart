// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plug_action_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugActionDefinition _$DestinyInsertPlugActionDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyInsertPlugActionDefinition()
    ..actionExecuteSeconds = json['actionExecuteSeconds'] as int?
    ..actionType = _$enumDecodeNullable(
        _$SocketTypeActionTypeEnumMap, json['actionType'],
        unknownValue: SocketTypeActionType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyInsertPlugActionDefinitionToJson(
        DestinyInsertPlugActionDefinition instance) =>
    <String, dynamic>{
      'actionExecuteSeconds': instance.actionExecuteSeconds,
      'actionType': _$SocketTypeActionTypeEnumMap[instance.actionType],
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

const _$SocketTypeActionTypeEnumMap = {
  SocketTypeActionType.InsertPlug: 0,
  SocketTypeActionType.InfuseItem: 1,
  SocketTypeActionType.ReinitializeSocket: 2,
  SocketTypeActionType.ProtectedInvalidEnumValue: 999999999,
};
