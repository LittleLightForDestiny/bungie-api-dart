import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_application.dart';
import 'destiny_fireteam_finder_listing.dart';

part 'destiny_fireteam_finder_apply_to_listing_response.g.dart';

@JsonSerializable()
class DestinyFireteamFinderApplyToListingResponse{	
	DestinyFireteamFinderApplyToListingResponse();

	
	@JsonKey(name:'isApplied')
	bool? isApplied;
	
	@JsonKey(name:'application')
	DestinyFireteamFinderApplication? application;
	
	@JsonKey(name:'listing')
	DestinyFireteamFinderListing? listing;

	factory DestinyFireteamFinderApplyToListingResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderApplyToListingResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderApplyToListingResponseToJson(this);

	static Future<DestinyFireteamFinderApplyToListingResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderApplyToListingResponse>((json)=>DestinyFireteamFinderApplyToListingResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}