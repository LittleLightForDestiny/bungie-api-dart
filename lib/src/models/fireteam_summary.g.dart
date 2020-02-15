// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamSummary _$FireteamSummaryFromJson(Map<String, dynamic> json) {
  return FireteamSummary()
    ..fireteamId = json['fireteamId'] as String
    ..groupId = json['groupId'] as String
    ..platform = _$enumDecodeNullable(
        _$FireteamPlatformEnumMap, json['platform'],
        unknownValue: FireteamPlatform.ProtectedInvalidEnumValue)
    ..activityType = _$enumDecodeNullable(
        _$FireteamActivityTypeEnumMap, json['activityType'],
        unknownValue: FireteamActivityType.ProtectedInvalidEnumValue)
    ..isImmediate = json['isImmediate'] as bool
    ..scheduledTime = json['scheduledTime'] as String
    ..ownerMembershipId = json['ownerMembershipId'] as String
    ..playerSlotCount = json['playerSlotCount'] as int
    ..alternateSlotCount = json['alternateSlotCount'] as int
    ..availablePlayerSlotCount = json['availablePlayerSlotCount'] as int
    ..availableAlternateSlotCount = json['availableAlternateSlotCount'] as int
    ..title = json['title'] as String
    ..dateCreated = json['dateCreated'] as String
    ..dateModified = json['dateModified'] as String
    ..isPublic = json['isPublic'] as bool
    ..locale = json['locale'] as String
    ..isValid = json['isValid'] as bool
    ..datePlayerModified = json['datePlayerModified'] as String
    ..titleBeforeModeration = json['titleBeforeModeration'] as String;
}

Map<String, dynamic> _$FireteamSummaryToJson(FireteamSummary instance) =>
    <String, dynamic>{
      'fireteamId': instance.fireteamId,
      'groupId': instance.groupId,
      'platform': _$FireteamPlatformEnumMap[instance.platform],
      'activityType': _$FireteamActivityTypeEnumMap[instance.activityType],
      'isImmediate': instance.isImmediate,
      'scheduledTime': instance.scheduledTime,
      'ownerMembershipId': instance.ownerMembershipId,
      'playerSlotCount': instance.playerSlotCount,
      'alternateSlotCount': instance.alternateSlotCount,
      'availablePlayerSlotCount': instance.availablePlayerSlotCount,
      'availableAlternateSlotCount': instance.availableAlternateSlotCount,
      'title': instance.title,
      'dateCreated': instance.dateCreated,
      'dateModified': instance.dateModified,
      'isPublic': instance.isPublic,
      'locale': instance.locale,
      'isValid': instance.isValid,
      'datePlayerModified': instance.datePlayerModified,
      'titleBeforeModeration': instance.titleBeforeModeration,
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

const _$FireteamPlatformEnumMap = {
  FireteamPlatform.Unknown: 0,
  FireteamPlatform.Playstation4: 1,
  FireteamPlatform.XboxOne: 2,
  FireteamPlatform.Blizzard: 3,
  FireteamPlatform.Steam: 4,
  FireteamPlatform.Stadia: 5,
  FireteamPlatform.ProtectedInvalidEnumValue: 999999999,
};

const _$FireteamActivityTypeEnumMap = {
  FireteamActivityType.All: 0,
  FireteamActivityType.Raid: 1,
  FireteamActivityType.Crucible: 2,
  FireteamActivityType.Trials: 3,
  FireteamActivityType.Nightfall: 4,
  FireteamActivityType.Anything: 5,
  FireteamActivityType.Gambit: 6,
  FireteamActivityType.BlindWell: 7,
  FireteamActivityType.EscalationProtocol: 8,
  FireteamActivityType.Forge: 9,
  FireteamActivityType.Reckoning: 10,
  FireteamActivityType.Menagerie: 11,
  FireteamActivityType.NightmareHunts: 12,
  FireteamActivityType.VexOffensive: 13,
  FireteamActivityType.AltarsOfSorrow: 14,
  FireteamActivityType.Dungeon: 15,
  FireteamActivityType.Sundial: 16,
  FireteamActivityType.ProtectedInvalidEnumValue: 999999999,
};
