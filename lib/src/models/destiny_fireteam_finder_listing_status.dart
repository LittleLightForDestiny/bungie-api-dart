import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_listing_status.g.dart';

@JsonSerializable()
class DestinyFireteamFinderListingStatus{	
	DestinyFireteamFinderListingStatus();

	
	@JsonKey(name:'listingId')
	String? listingId;
	
	@JsonKey(name:'listingRevision')
	int? listingRevision;
	
	@JsonKey(name:'availableSlots')
	int? availableSlots;

	factory DestinyFireteamFinderListingStatus.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderListingStatusFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderListingStatusToJson(this);

	static Future<DestinyFireteamFinderListingStatus> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderListingStatus>((json)=>DestinyFireteamFinderListingStatus.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}