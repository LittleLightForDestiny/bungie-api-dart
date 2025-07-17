import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_application.dart';

part 'destiny_fireteam_finder_get_listing_applications_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderGetListingApplicationsResponse{	
	DestinyFireteamFinderGetListingApplicationsResponse();

	
	@JsonKey(name:'applications')
	List<DestinyFireteamFinderApplication>? applications;
	
	@JsonKey(name:'pageSize')
	int? pageSize;
	
	@JsonKey(name:'nextPageToken')
	String? nextPageToken;

	factory DestinyFireteamFinderGetListingApplicationsResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderGetListingApplicationsResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderGetListingApplicationsResponseToJson(this);

	static Future<DestinyFireteamFinderGetListingApplicationsResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderGetListingApplicationsResponse>((json)=>DestinyFireteamFinderGetListingApplicationsResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}