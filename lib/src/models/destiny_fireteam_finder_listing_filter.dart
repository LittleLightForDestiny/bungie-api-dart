import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_fireteam_finder_listing_value.dart';
import '../enums/destiny_fireteam_finder_listing_filter_range_type.dart';
import '../enums/destiny_fireteam_finder_listing_filter_match_type.dart';

part 'destiny_fireteam_finder_listing_filter.g.dart';

@JsonSerializable()
class DestinyFireteamFinderListingFilter{	
	DestinyFireteamFinderListingFilter();

	
	@JsonKey(name:'listingValue')
	DestinyFireteamFinderListingValue? listingValue;
	
	@JsonKey(name:'rangeType',fromJson:decodeDestinyFireteamFinderListingFilterRangeType,toJson:encodeDestinyFireteamFinderListingFilterRangeType)
	DestinyFireteamFinderListingFilterRangeType? rangeType;
	
	@JsonKey(name:'matchType',fromJson:decodeDestinyFireteamFinderListingFilterMatchType,toJson:encodeDestinyFireteamFinderListingFilterMatchType)
	DestinyFireteamFinderListingFilterMatchType? matchType;

	factory DestinyFireteamFinderListingFilter.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderListingFilterFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderListingFilterToJson(this);

	static Future<DestinyFireteamFinderListingFilter> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderListingFilter>((json)=>DestinyFireteamFinderListingFilter.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}