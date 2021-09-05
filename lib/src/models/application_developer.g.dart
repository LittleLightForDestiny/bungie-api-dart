// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationDeveloper _$ApplicationDeveloperFromJson(Map<String, dynamic> json) {
  return ApplicationDeveloper()
    ..role = _$enumDecodeNullable(_$DeveloperRoleEnumMap, json['role'],
        unknownValue: DeveloperRole.ProtectedInvalidEnumValue)
    ..apiEulaVersion = json['apiEulaVersion'] as int?
    ..user = json['user'] == null
        ? null
        : UserInfoCard.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ApplicationDeveloperToJson(
        ApplicationDeveloper instance) =>
    <String, dynamic>{
      'role': _$DeveloperRoleEnumMap[instance.role],
      'apiEulaVersion': instance.apiEulaVersion,
      'user': instance.user,
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

const _$DeveloperRoleEnumMap = {
  DeveloperRole.None: 0,
  DeveloperRole.Owner: 1,
  DeveloperRole.TeamMember: 2,
  DeveloperRole.ProtectedInvalidEnumValue: 999999999,
};
