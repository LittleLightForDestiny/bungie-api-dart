import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_color.dart';
import 'destiny_activity_graph_reference.dart';
import 'destiny_activity_interactable_reference.dart';
import '../enums/destiny_activity_tree_type.dart';
import '../enums/destiny_activity_tree_child_sort_mode.dart';

part 'destiny_fireteam_finder_activity_graph_definition.g.dart';

@JsonSerializable()
class DestinyFireteamFinderActivityGraphDefinition{	
	DestinyFireteamFinderActivityGraphDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// Represents a color whose RGBA values are all represented as values between 0 and 255.
	@JsonKey(name:'color')
	DestinyColor? color;
	
	@JsonKey(name:'isPlayerElectedDifficultyNode')
	bool? isPlayerElectedDifficultyNode;
	
	@JsonKey(name:'parentHash')
	int? parentHash;
	
	@JsonKey(name:'children')
	List<int>? children;
	
	@JsonKey(name:'selfAndAllDescendantHashes')
	List<int>? selfAndAllDescendantHashes;
	
	@JsonKey(name:'relatedActivitySetHashes')
	List<int>? relatedActivitySetHashes;
	
	@JsonKey(name:'specificActivitySetHash')
	int? specificActivitySetHash;
	
	@JsonKey(name:'relatedActivityHashes')
	List<int>? relatedActivityHashes;
	
	@JsonKey(name:'relatedDirectorNodes')
	List<DestinyActivityGraphReference>? relatedDirectorNodes;
	
	@JsonKey(name:'relatedInteractableActivities')
	List<DestinyActivityInteractableReference>? relatedInteractableActivities;
	
	@JsonKey(name:'relatedLocationHashes')
	List<int>? relatedLocationHashes;
	
	@JsonKey(name:'sortMatchmadeActivitiesToFront')
	bool? sortMatchmadeActivitiesToFront;
	
	@JsonKey(name:'enabledOnTreeTypesListEnum')
	List<DestinyActivityTreeType>? enabledOnTreeTypesListEnum;
	
	@JsonKey(name:'activityTreeChildSortMode',fromJson:decodeDestinyActivityTreeChildSortMode,toJson:encodeDestinyActivityTreeChildSortMode)
	DestinyActivityTreeChildSortMode? activityTreeChildSortMode;
	
	@JsonKey(name:'sortPriority')
	int? sortPriority;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyFireteamFinderActivityGraphDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderActivityGraphDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderActivityGraphDefinitionToJson(this);

	static Future<DestinyFireteamFinderActivityGraphDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderActivityGraphDefinition>((json)=>DestinyFireteamFinderActivityGraphDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}