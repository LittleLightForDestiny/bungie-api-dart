
import 'package:json_annotation/json_annotation.dart';
part 'comment_summary.g.dart';

@JsonSerializable()
class CommentSummary {

	@JsonKey(name:'topicId')
	String topicId;

	@JsonKey(name:'commentCount')
	int commentCount;
	CommentSummary();

	factory CommentSummary.fromJson(Map<String, dynamic> json) => _$CommentSummaryFromJson(json);
	
	Map<String, dynamic> toJson() => _$CommentSummaryToJson(this);
}
