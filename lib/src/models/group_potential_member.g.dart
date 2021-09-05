// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_potential_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupPotentialMember _$GroupPotentialMemberFromJson(Map<String, dynamic> json) {
  return GroupPotentialMember()
    ..potentialStatus = _$enumDecodeNullable(
        _$GroupPotentialMemberStatusEnumMap, json['potentialStatus'],
        unknownValue: GroupPotentialMemberStatus.ProtectedInvalidEnumValue)
    ..groupId = json['groupId'] as String?
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : GroupUserInfoCard.fromJson(
            json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..joinDate = json['joinDate'] as String?;
}

Map<String, dynamic> _$GroupPotentialMemberToJson(
        GroupPotentialMember instance) =>
    <String, dynamic>{
      'potentialStatus':
          _$GroupPotentialMemberStatusEnumMap[instance.potentialStatus],
      'groupId': instance.groupId,
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'joinDate': instance.joinDate,
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

const _$GroupPotentialMemberStatusEnumMap = {
  GroupPotentialMemberStatus.None: 0,
  GroupPotentialMemberStatus.Applicant: 1,
  GroupPotentialMemberStatus.Invitee: 2,
  GroupPotentialMemberStatus.ProtectedInvalidEnumValue: 999999999,
};
