// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PollResult _$PollResultFromJson(Map<String, dynamic> json) => PollResult()
  ..answerText = json['answerText'] as String?
  ..answerSlot = (json['answerSlot'] as num?)?.toInt()
  ..lastVoteDate = json['lastVoteDate'] as String?
  ..votes = (json['votes'] as num?)?.toInt()
  ..requestingUserVoted = json['requestingUserVoted'] as bool?;

Map<String, dynamic> _$PollResultToJson(PollResult instance) =>
    <String, dynamic>{
      'answerText': instance.answerText,
      'answerSlot': instance.answerSlot,
      'lastVoteDate': instance.lastVoteDate,
      'votes': instance.votes,
      'requestingUserVoted': instance.requestingUserVoted,
    };
