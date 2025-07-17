import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_respond_to_application_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToApplicationResponse{	
	DestinyFireteamFinderRespondToApplicationResponse();

	
	@JsonKey(name:'applicationId')
	String? applicationId;
	
	@JsonKey(name:'applicationRevision')
	int? applicationRevision;

	factory DestinyFireteamFinderRespondToApplicationResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToApplicationResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToApplicationResponseToJson(this);

	static Future<DestinyFireteamFinderRespondToApplicationResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToApplicationResponse>((json)=>DestinyFireteamFinderRespondToApplicationResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}