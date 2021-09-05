// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivity _$DestinyActivityFromJson(Map<String, dynamic> json) {
  return DestinyActivity()
    ..activityHash = json['activityHash'] as int?
    ..isNew = json['isNew'] as bool?
    ..canLead = json['canLead'] as bool?
    ..canJoin = json['canJoin'] as bool?
    ..isCompleted = json['isCompleted'] as bool?
    ..isVisible = json['isVisible'] as bool?
    ..displayLevel = json['displayLevel'] as int?
    ..recommendedLight = json['recommendedLight'] as int?
    ..difficultyTier = _$enumDecodeNullable(
        _$DestinyActivityDifficultyTierEnumMap, json['difficultyTier'],
        unknownValue: DestinyActivityDifficultyTier.ProtectedInvalidEnumValue)
    ..challenges = (json['challenges'] as List<dynamic>?)
        ?.map((e) => DestinyChallengeStatus.fromJson(e as Map<String, dynamic>))
        .toList()
    ..modifierHashes = (json['modifierHashes'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList()
    ..booleanActivityOptions =
        (json['booleanActivityOptions'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool),
    )
    ..loadoutRequirementIndex = json['loadoutRequirementIndex'] as int?;
}

Map<String, dynamic> _$DestinyActivityToJson(DestinyActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'isNew': instance.isNew,
      'canLead': instance.canLead,
      'canJoin': instance.canJoin,
      'isCompleted': instance.isCompleted,
      'isVisible': instance.isVisible,
      'displayLevel': instance.displayLevel,
      'recommendedLight': instance.recommendedLight,
      'difficultyTier':
          _$DestinyActivityDifficultyTierEnumMap[instance.difficultyTier],
      'challenges': instance.challenges,
      'modifierHashes': instance.modifierHashes,
      'booleanActivityOptions': instance.booleanActivityOptions,
      'loadoutRequirementIndex': instance.loadoutRequirementIndex,
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

const _$DestinyActivityDifficultyTierEnumMap = {
  DestinyActivityDifficultyTier.Trivial: 0,
  DestinyActivityDifficultyTier.Easy: 1,
  DestinyActivityDifficultyTier.Normal: 2,
  DestinyActivityDifficultyTier.Challenging: 3,
  DestinyActivityDifficultyTier.Hard: 4,
  DestinyActivityDifficultyTier.Brave: 5,
  DestinyActivityDifficultyTier.AlmostImpossible: 6,
  DestinyActivityDifficultyTier.Impossible: 7,
  DestinyActivityDifficultyTier.ProtectedInvalidEnumValue: 999999999,
};
