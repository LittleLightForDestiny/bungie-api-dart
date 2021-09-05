// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_class_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyClassDefinition _$DestinyClassDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyClassDefinition()
    ..classType = _$enumDecodeNullable(_$DestinyClassEnumMap, json['classType'],
        unknownValue: DestinyClass.ProtectedInvalidEnumValue)
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..genderedClassNames =
        (json['genderedClassNames'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..genderedClassNamesByGenderHash =
        (json['genderedClassNamesByGenderHash'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..mentorVendorHash = json['mentorVendorHash'] as int?
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyClassDefinitionToJson(
        DestinyClassDefinition instance) =>
    <String, dynamic>{
      'classType': _$DestinyClassEnumMap[instance.classType],
      'displayProperties': instance.displayProperties,
      'genderedClassNames': instance.genderedClassNames,
      'genderedClassNamesByGenderHash': instance.genderedClassNamesByGenderHash,
      'mentorVendorHash': instance.mentorVendorHash,
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

const _$DestinyClassEnumMap = {
  DestinyClass.Titan: 0,
  DestinyClass.Hunter: 1,
  DestinyClass.Warlock: 2,
  DestinyClass.Unknown: 3,
  DestinyClass.ProtectedInvalidEnumValue: 999999999,
};
