import 'package:json_annotation/json_annotation.dart';

import 'poll_result.dart';

part 'poll_response.g.dart';

@JsonSerializable()
class PollResponse{
	
	PollResponse();

	factory PollResponse.fromJson(Map<String, dynamic> json) => _$PollResponseFromJson(json);

	@JsonKey(name:'topicId')
	String topicId;
	@JsonKey(name:'results')
	List<PollResult> results;
	@JsonKey(name:'totalVotes')
	int totalVotes;

	
	
	Map<String, dynamic> toJson() => _$PollResponseToJson(this);
}