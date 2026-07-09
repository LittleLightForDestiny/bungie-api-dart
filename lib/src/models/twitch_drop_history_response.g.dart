// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_drop_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TwitchDropHistoryResponse _$TwitchDropHistoryResponseFromJson(
  Map<String, dynamic> json,
) => TwitchDropHistoryResponse()
  ..title = json['Title'] as String?
  ..description = json['Description'] as String?
  ..createdAt = json['CreatedAt'] as String?
  ..claimState = decodeDropStateEnum(json['ClaimState']);

Map<String, dynamic> _$TwitchDropHistoryResponseToJson(
  TwitchDropHistoryResponse instance,
) => <String, dynamic>{
  'Title': instance.title,
  'Description': instance.description,
  'CreatedAt': instance.createdAt,
  'ClaimState': encodeDropStateEnum(instance.claimState),
};
