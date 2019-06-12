// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentSummary _$CommentSummaryFromJson(Map<String, dynamic> json) {
  return CommentSummary()
    ..topicId = json['topicId'] as String
    ..commentCount = json['commentCount'] as int;
}

Map<String, dynamic> _$CommentSummaryToJson(CommentSummary instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'commentCount': instance.commentCount
    };
