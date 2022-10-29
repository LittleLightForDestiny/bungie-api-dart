import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'poll_result.g.dart';

@JsonSerializable()
class PollResult{	
	PollResult();

	
	@JsonKey(name:'answerText')
	String? answerText;
	
	@JsonKey(name:'answerSlot')
	int? answerSlot;
	
	@JsonKey(name:'lastVoteDate')
	String? lastVoteDate;
	
	@JsonKey(name:'votes')
	int? votes;
	
	@JsonKey(name:'requestingUserVoted')
	bool? requestingUserVoted;

	factory PollResult.fromJson(Map<String, dynamic> json) {
		return _$PollResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PollResultToJson(this);

	static Future<PollResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PollResult>((json)=>PollResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}