import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_profile_transitory_tracking_entry.g.dart';

/// This represents a single &quot;thing&quot; being tracked by the player.
/// This can point to many types of entities, but only a subset of them will actually have a valid hash identifier for whatever it is being pointed to.
/// It&#39;s up to you to interpret what it means when various combinations of these entries have values being tracked.
@JsonSerializable()
class DestinyProfileTransitoryTrackingEntry{	
	DestinyProfileTransitoryTrackingEntry();

	
	/// OPTIONAL - If this is tracking a DestinyLocationDefinition, this is the identifier for that location.
	@JsonKey(name:'locationHash')
	int? locationHash;
	
	/// OPTIONAL - If this is tracking the status of a DestinyInventoryItemDefinition, this is the identifier for that item.
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// OPTIONAL - If this is tracking the status of a DestinyObjectiveDefinition, this is the identifier for that objective.
	@JsonKey(name:'objectiveHash')
	int? objectiveHash;
	
	/// OPTIONAL - If this is tracking the status of a DestinyActivityDefinition, this is the identifier for that activity.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// OPTIONAL - If this is tracking the status of a quest, this is the identifier for the DestinyInventoryItemDefinition that containst that questline data.
	@JsonKey(name:'questlineItemHash')
	int? questlineItemHash;
	
	/// OPTIONAL - I've got to level with you, I don't really know what this is. Is it when you started tracking it? Is it only populated for tracked items that have time limits?
	/// I don't know, but we can get at it - when I get time to actually test what it is, I'll update this. In the meantime, bask in the mysterious data.
	@JsonKey(name:'trackedDate')
	String? trackedDate;

	factory DestinyProfileTransitoryTrackingEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileTransitoryTrackingEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileTransitoryTrackingEntryToJson(this);

	static Future<DestinyProfileTransitoryTrackingEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileTransitoryTrackingEntry>((json)=>DestinyProfileTransitoryTrackingEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}