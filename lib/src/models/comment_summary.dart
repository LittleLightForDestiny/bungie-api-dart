import 'package:json_annotation/json_annotation.dart';


part 'comment_summary.g.dart';

@JsonSerializable()
class CommentSummary{
	
	CommentSummary();

	factory CommentSummary.fromJson(Map<String, dynamic> json) => _$CommentSummaryFromJson(json);

	@JsonKey(name:'topicId')
	String topicId;
	@JsonKey(name:'commentCount')
	int commentCount;

	
	
	Map<String, dynamic> toJson() => _$CommentSummaryToJson(this);
}