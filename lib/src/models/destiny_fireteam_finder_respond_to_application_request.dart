import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_respond_to_application_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToApplicationRequest{	
	DestinyFireteamFinderRespondToApplicationRequest();

	
	@JsonKey(name:'accepted')
	bool? accepted;

	factory DestinyFireteamFinderRespondToApplicationRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToApplicationRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToApplicationRequestToJson(this);

	static Future<DestinyFireteamFinderRespondToApplicationRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToApplicationRequest>((json)=>DestinyFireteamFinderRespondToApplicationRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}