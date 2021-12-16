// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamSummary _$FireteamSummaryFromJson(Map<String, dynamic> json) {
  return FireteamSummary()
    ..fireteamId = json['fireteamId'] as String?
    ..groupId = json['groupId'] as String?
    ..platform = _$enumDecodeNullable(
        _$FireteamPlatformEnumMap, json['platform'],
        unknownValue: FireteamPlatform.ProtectedInvalidEnumValue)
    ..activityType = json['activityType'] as int?
    ..isImmediate = json['isImmediate'] as bool?
    ..scheduledTime = json['scheduledTime'] as String?
    ..ownerMembershipId = json['ownerMembershipId'] as String?
    ..playerSlotCount = json['playerSlotCount'] as int?
    ..alternateSlotCount = json['alternateSlotCount'] as int?
    ..availablePlayerSlotCount = json['availablePlayerSlotCount'] as int?
    ..availableAlternateSlotCount = json['availableAlternateSlotCount'] as int?
    ..title = json['title'] as String?
    ..dateCreated = json['dateCreated'] as String?
    ..dateModified = json['dateModified'] as String?
    ..isPublic = json['isPublic'] as bool?
    ..locale = json['locale'] as String?
    ..isValid = json['isValid'] as bool?
    ..datePlayerModified = json['datePlayerModified'] as String?
    ..titleBeforeModeration = json['titleBeforeModeration'] as String?;
}

Map<String, dynamic> _$FireteamSummaryToJson(FireteamSummary instance) =>
    <String, dynamic>{
      'fireteamId': instance.fireteamId,
      'groupId': instance.groupId,
      'platform': _$FireteamPlatformEnumMap[instance.platform],
      'activityType': instance.activityType,
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

const _$FireteamPlatformEnumMap = {
  FireteamPlatform.Any: 0,
  FireteamPlatform.Playstation4: 1,
  FireteamPlatform.XboxOne: 2,
  FireteamPlatform.Blizzard: 3,
  FireteamPlatform.Steam: 4,
  FireteamPlatform.Stadia: 5,
  FireteamPlatform.ProtectedInvalidEnumValue: 999999999,
};
