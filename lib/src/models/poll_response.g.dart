// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollResponse _$PollResponseFromJson(Map<String, dynamic> json) => PollResponse()
  ..topicId = json['topicId'] as String?
  ..results = (json['results'] as List<dynamic>?)
      ?.map((e) => PollResult.fromJson(e as Map<String, dynamic>))
      .toList()
  ..totalVotes = (json['totalVotes'] as num?)?.toInt();

Map<String, dynamic> _$PollResponseToJson(PollResponse instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalVotes': instance.totalVotes,
    };
