import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'poll_result.dart';

part 'poll_response.g.dart';

@JsonSerializable()
class PollResponse{	
	PollResponse();

	
	@JsonKey(name:'topicId')
	String? topicId;
	
	@JsonKey(name:'results')
	List<PollResult>? results;
	
	@JsonKey(name:'totalVotes')
	int? totalVotes;

	factory PollResponse.fromJson(Map<String, dynamic> json) {
		return _$PollResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PollResponseToJson(this);

	static Future<PollResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PollResponse>((json)=>PollResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}