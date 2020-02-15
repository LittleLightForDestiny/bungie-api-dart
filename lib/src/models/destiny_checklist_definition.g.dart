// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_checklist_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChecklistDefinition _$DestinyChecklistDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyChecklistDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..viewActionString = json['viewActionString'] as String
    ..scope = _$enumDecodeNullable(_$DestinyScopeEnumMap, json['scope'],
        unknownValue: DestinyScope.ProtectedInvalidEnumValue)
    ..entries = (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyChecklistEntryDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyChecklistDefinitionToJson(
        DestinyChecklistDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'viewActionString': instance.viewActionString,
      'scope': _$DestinyScopeEnumMap[instance.scope],
      'entries': instance.entries,
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
