// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_challenge_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityChallengeDefinition _$DestinyActivityChallengeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityChallengeDefinition()
    ..objectiveHash = json['objectiveHash'] as int
    ..dummyRewards = (json['dummyRewards'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyActivityChallengeDefinitionToJson(
        DestinyActivityChallengeDefinition instance) =>
    <String, dynamic>{
      'objectiveHash': instance.objectiveHash,
      'dummyRewards': instance.dummyRewards,
    };
