import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_respond_to_authentication_request.g.dart';

@JsonSerializable()
class DestinyFireteamFinderRespondToAuthenticationRequest{	
	DestinyFireteamFinderRespondToAuthenticationRequest();

	
	@JsonKey(name:'confirmed')
	bool? confirmed;

	factory DestinyFireteamFinderRespondToAuthenticationRequest.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderRespondToAuthenticationRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderRespondToAuthenticationRequestToJson(this);

	static Future<DestinyFireteamFinderRespondToAuthenticationRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderRespondToAuthenticationRequest>((json)=>DestinyFireteamFinderRespondToAuthenticationRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}