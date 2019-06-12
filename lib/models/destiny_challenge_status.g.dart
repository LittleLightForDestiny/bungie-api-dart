// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_challenge_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChallengeStatus _$DestinyChallengeStatusFromJson(
    Map<String, dynamic> json) {
  return DestinyChallengeStatus()
    ..objective = json['objective'] == null
        ? null
        : DestinyObjectiveProgress.fromJson(
            json['objective'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyChallengeStatusToJson(
        DestinyChallengeStatus instance) =>
    <String, dynamic>{'objective': instance.objective};
