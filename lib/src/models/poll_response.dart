import 'poll_result.dart';

import 'package:json_annotation/json_annotation.dart';
part 'poll_response.g.dart';

@JsonSerializable()
class PollResponse {

	@JsonKey(name:'topicId')
	String topicId;

	@JsonKey(name:'results')
	List<PollResult> results;

	@JsonKey(name:'totalVotes')
	int totalVotes;
	PollResponse();

	factory PollResponse.fromJson(Map<String, dynamic> json) => _$PollResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$PollResponseToJson(this);
}
