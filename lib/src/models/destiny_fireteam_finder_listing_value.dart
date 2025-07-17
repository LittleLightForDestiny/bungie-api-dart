import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_fireteam_finder_listing_value.g.dart';

@JsonSerializable()
class DestinyFireteamFinderListingValue{	
	DestinyFireteamFinderListingValue();

	
	@JsonKey(name:'valueType')
	int? valueType;
	
	@JsonKey(name:'values')
	List<int>? values;

	factory DestinyFireteamFinderListingValue.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderListingValueFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderListingValueToJson(this);

	static Future<DestinyFireteamFinderListingValue> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderListingValue>((json)=>DestinyFireteamFinderListingValue.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}