// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupMemberApplication _$GroupMemberApplicationFromJson(
    Map<String, dynamic> json) {
  return GroupMemberApplication()
    ..groupId = json['groupId'] as String
    ..creationDate = json['creationDate'] as String
    ..resolveState = _$enumDecodeNullable(
        _$GroupApplicationResolveStateEnumMap, json['resolveState'],
        unknownValue: GroupApplicationResolveState.ProtectedInvalidEnumValue)
    ..resolveDate = json['resolveDate'] as String
    ..resolvedByMembershipId = json['resolvedByMembershipId'] as String
    ..requestMessage = json['requestMessage'] as String
    ..resolveMessage = json['resolveMessage'] as String
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : GroupUserInfoCard.fromJson(
            json['destinyUserInfo'] as Map<String, dynamic>)
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GroupMemberApplicationToJson(
        GroupMemberApplication instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'creationDate': instance.creationDate,
      'resolveState':
          _$GroupApplicationResolveStateEnumMap[instance.resolveState],
      'resolveDate': instance.resolveDate,
      'resolvedByMembershipId': instance.resolvedByMembershipId,
      'requestMessage': instance.requestMessage,
      'resolveMessage': instance.resolveMessage,
      'destinyUserInfo': instance.destinyUserInfo,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
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

const _$GroupApplicationResolveStateEnumMap = {
  GroupApplicationResolveState.Unresolved: 0,
  GroupApplicationResolveState.Accepted: 1,
  GroupApplicationResolveState.Denied: 2,
  GroupApplicationResolveState.Rescinded: 3,
  GroupApplicationResolveState.ProtectedInvalidEnumValue: 999999999,
};
