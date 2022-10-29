import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'comment_summary.g.dart';

@JsonSerializable()
class CommentSummary{	
	CommentSummary();

	
	@JsonKey(name:'topicId')
	String? topicId;
	
	@JsonKey(name:'commentCount')
	int? commentCount;

	factory CommentSummary.fromJson(Map<String, dynamic> json) {
		return _$CommentSummaryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CommentSummaryToJson(this);

	static Future<CommentSummary> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CommentSummary>((json)=>CommentSummary.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}