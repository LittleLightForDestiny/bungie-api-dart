// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_destiny_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryDestinyActivity _$TrendingEntryDestinyActivityFromJson(
    Map<String, dynamic> json) {
  return TrendingEntryDestinyActivity()
    ..activityHash = json['activityHash'] as int
    ..status = json['status'] == null
        ? null
        : DestinyPublicActivityStatus.fromJson(
            json['status'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingEntryDestinyActivityToJson(
        TrendingEntryDestinyActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'status': instance.status,
    };
