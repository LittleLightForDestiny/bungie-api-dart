
import 'package:json_annotation/json_annotation.dart';
part 'poll_result.g.dart';

@JsonSerializable()
class PollResult {

	@JsonKey(name:'answerText')
	String answerText;

	@JsonKey(name:'answerSlot')
	int answerSlot;

	@JsonKey(name:'lastVoteDate')
	String lastVoteDate;

	@JsonKey(name:'votes')
	int votes;

	@JsonKey(name:'requestingUserVoted')
	bool requestingUserVoted;
	PollResult();

	factory PollResult.fromJson(Map<String, dynamic> json) => _$PollResultFromJson(json);
	
	Map<String, dynamic> toJson() => _$PollResultToJson(this);
}
