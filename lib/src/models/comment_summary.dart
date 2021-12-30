import 'package:json_annotation/json_annotation.dart';


part 'comment_summary.g.dart';

@JsonSerializable()
class CommentSummary{	
	CommentSummary();

	factory CommentSummary.fromJson(Map<String, dynamic> json) {
		return _$CommentSummaryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CommentSummaryToJson(this);
	
	@JsonKey(name:'topicId')
	String? topicId;
	
	@JsonKey(name:'commentCount')
	int? commentCount;
}