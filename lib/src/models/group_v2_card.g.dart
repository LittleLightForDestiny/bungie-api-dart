// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_v2_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupV2Card _$GroupV2CardFromJson(Map<String, dynamic> json) {
  return GroupV2Card()
    ..groupId = json['groupId'] as String
    ..name = json['name'] as String
    ..groupType = _$enumDecodeNullable(_$GroupTypeEnumMap, json['groupType'],
        unknownValue: GroupType.General)
    ..creationDate = json['creationDate'] as String
    ..about = json['about'] as String
    ..motto = json['motto'] as String
    ..memberCount = json['memberCount'] as int
    ..locale = json['locale'] as String
    ..membershipOption = _$enumDecodeNullable(
        _$MembershipOptionEnumMap, json['membershipOption'],
        unknownValue: MembershipOption.Reviewed)
    ..capabilities = json['capabilities'] == null
        ? null
        : Capabilities.fromJson(json['capabilities'] as int)
    ..clanInfo = json['clanInfo'] == null
        ? null
        : GroupV2ClanInfo.fromJson(json['clanInfo'] as Map<String, dynamic>)
    ..avatarPath = json['avatarPath'] as String
    ..theme = json['theme'] as String;
}

Map<String, dynamic> _$GroupV2CardToJson(GroupV2Card instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'groupType': _$GroupTypeEnumMap[instance.groupType],
      'creationDate': instance.creationDate,
      'about': instance.about,
      'motto': instance.motto,
      'memberCount': instance.memberCount,
      'locale': instance.locale,
      'membershipOption': _$MembershipOptionEnumMap[instance.membershipOption],
      'capabilities': instance.capabilities,
      'clanInfo': instance.clanInfo,
      'avatarPath': instance.avatarPath,
      'theme': instance.theme,
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

const _$GroupTypeEnumMap = {
  GroupType.General: 0,
  GroupType.Clan: 1,
};

const _$MembershipOptionEnumMap = {
  MembershipOption.Reviewed: 0,
  MembershipOption.Open: 1,
  MembershipOption.Closed: 2,
};
