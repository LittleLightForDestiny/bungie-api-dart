import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_environment_location_mapping.g.dart';

@JsonSerializable()
class DestinyEnvironmentLocationMapping{	
	DestinyEnvironmentLocationMapping();

	
	/// The location that is revealed on the director by this mapping.
	@JsonKey(name:'locationHash')
	int? locationHash;
	
	/// A hint that the UI uses to figure out how this location is activated by the player.
	@JsonKey(name:'activationSource')
	String? activationSource;
	
	/// If this is populated, it is the item that you must possess for this location to be active because of this mapping. (theoretically, a location can have multiple mappings, and some might require an item while others don't)
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// If this is populated, this is an objective related to the location.
	@JsonKey(name:'objectiveHash')
	int? objectiveHash;
	
	/// If this is populated, this is the activity you have to be playing in order to see this location appear because of this mapping. (theoretically, a location can have multiple mappings, and some might require you to be in a specific activity when others don't)
	@JsonKey(name:'activityHash')
	int? activityHash;

	factory DestinyEnvironmentLocationMapping.fromJson(Map<String, dynamic> json) {
		return _$DestinyEnvironmentLocationMappingFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEnvironmentLocationMappingToJson(this);

	static Future<DestinyEnvironmentLocationMapping> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEnvironmentLocationMapping>((json)=>DestinyEnvironmentLocationMapping.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}