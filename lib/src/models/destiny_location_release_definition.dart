import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_activity_nav_point_type.dart';

part 'destiny_location_release_definition.g.dart';

/// A specific &quot;spot&quot; referred to by a location. Only one of these can be active at a time for a given Location.
@JsonSerializable()
class DestinyLocationReleaseDefinition{	
	DestinyLocationReleaseDefinition();

	
	/// Sadly, these don't appear to be populated anymore (ever?)
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'smallTransparentIcon')
	String? smallTransparentIcon;
	
	@JsonKey(name:'mapIcon')
	String? mapIcon;
	
	@JsonKey(name:'largeTransparentIcon')
	String? largeTransparentIcon;
	
	/// If we had map information, this spawnPoint would be interesting. But sadly, we don't have that info.
	@JsonKey(name:'spawnPoint')
	int? spawnPoint;
	
	/// The Destination being pointed to by this location.
	@JsonKey(name:'destinationHash')
	int? destinationHash;
	
	/// The Activity being pointed to by this location.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// The Activity Graph being pointed to by this location.
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;
	
	/// The Activity Graph Node being pointed to by this location. (Remember that Activity Graph Node hashes are only unique within an Activity Graph: so use the combination to find the node being spoken of)
	@JsonKey(name:'activityGraphNodeHash')
	int? activityGraphNodeHash;
	
	/// The Activity Bubble within the Destination. Look this up in the DestinyDestinationDefinition's bubbles and bubbleSettings properties.
	@JsonKey(name:'activityBubbleName')
	int? activityBubbleName;
	
	/// If we had map information, this would tell us something cool about the path this location wants you to take. I wish we had map information.
	@JsonKey(name:'activityPathBundle')
	int? activityPathBundle;
	
	/// If we had map information, this would tell us about path information related to destination on the map. Sad. Maybe you can do something cool with it. Go to town man.
	@JsonKey(name:'activityPathDestination')
	int? activityPathDestination;
	
	/// The type of Nav Point that this represents. See the enumeration for more info.
	@JsonKey(name:'navPointType',fromJson:decodeDestinyActivityNavPointType,toJson:encodeDestinyActivityNavPointType)
	DestinyActivityNavPointType? navPointType;
	
	/// Looks like it should be the position on the map, but sadly it does not look populated... yet?
	@JsonKey(name:'worldPosition')
	List<int>? worldPosition;

	factory DestinyLocationReleaseDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyLocationReleaseDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLocationReleaseDefinitionToJson(this);

	static Future<DestinyLocationReleaseDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLocationReleaseDefinition>((json)=>DestinyLocationReleaseDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}