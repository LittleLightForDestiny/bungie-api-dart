// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_stats_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemStatsComponent _$DestinyItemStatsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemStatsComponent()
    ..stats = (json['stats'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, DestinyStat.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyItemStatsComponentToJson(
        DestinyItemStatsComponent instance) =>
    <String, dynamic>{
      'stats': instance.stats,
    };
