import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'twitch_drop_history_response.g.dart';

@JsonSerializable()
class TwitchDropHistoryResponse{	
	TwitchDropHistoryResponse();

	
	@JsonKey(name:'Title')
	String? title;
	
	@JsonKey(name:'Description')
	String? description;
	
	@JsonKey(name:'CreatedAt')
	String? createdAt;
	
	@JsonKey(name:'ClaimState')
	int? claimState;

	factory TwitchDropHistoryResponse.fromJson(Map<String, dynamic> json) {
		return _$TwitchDropHistoryResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TwitchDropHistoryResponseToJson(this);

	static Future<TwitchDropHistoryResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TwitchDropHistoryResponse>((json)=>TwitchDropHistoryResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}