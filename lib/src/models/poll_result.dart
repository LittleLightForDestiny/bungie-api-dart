import 'package:json_annotation/json_annotation.dart';


part 'poll_result.g.dart';

@JsonSerializable()
class PollResult{	
	PollResult();

	factory PollResult.fromJson(Map<String, dynamic> json) {
		return _$PollResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PollResultToJson(this);
	
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
}