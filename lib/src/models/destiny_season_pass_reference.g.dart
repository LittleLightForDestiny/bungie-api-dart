// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_pass_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonPassReference _$DestinySeasonPassReferenceFromJson(
  Map<String, dynamic> json,
) =>
    DestinySeasonPassReference()
      ..seasonPassHash = (json['seasonPassHash'] as num?)?.toInt()
      ..seasonPassStartDate = json['seasonPassStartDate'] as String?
      ..seasonPassEndDate = json['seasonPassEndDate'] as String?;

Map<String, dynamic> _$DestinySeasonPassReferenceToJson(
  DestinySeasonPassReference instance,
) => <String, dynamic>{
  'seasonPassHash': instance.seasonPassHash,
  'seasonPassStartDate': instance.seasonPassStartDate,
  'seasonPassEndDate': instance.seasonPassEndDate,
};
