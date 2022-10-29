import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_progression.dart';
import 'destiny_faction_progression.dart';
import 'destiny_milestone.dart';
import 'destiny_quest_status.dart';
import 'destiny_objective_progress.dart';
import 'destiny_item_perks_component.dart';
import 'destiny_artifact_character_scoped.dart';

part 'destiny_character_progression_component.g.dart';

/// This component returns anything that could be considered &quot;Progression&quot; on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
@JsonSerializable()
class DestinyCharacterProgressionComponent{	
	DestinyCharacterProgressionComponent();

	
	/// A Dictionary of all known progressions for the Character, keyed by the Progression's hash.
	/// Not all progressions have user-facing data, but those who do will have that data contained in the DestinyProgressionDefinition.
	@JsonKey(name:'progressions')
	Map<String, DestinyProgression>? progressions;
	
	/// A dictionary of all known Factions, keyed by the Faction's hash. It contains data about this character's status with the faction.
	@JsonKey(name:'factions')
	Map<String, DestinyFactionProgression>? factions;
	
	/// Milestones are related to the simple progressions shown in the game, but return additional and hopefully helpful information for users about the specifics of the Milestone's status.
	@JsonKey(name:'milestones')
	Map<String, DestinyMilestone>? milestones;
	
	/// If the user has any active quests, the quests' statuses will be returned here.
	///  Note that quests have been largely supplanted by Milestones, but that doesn't mean that they won't make a comeback independent of milestones at some point.
	///  (Fun fact: quests came back as I feared they would, but we never looped back to populate this... I'm going to put that in the backlog.)
	@JsonKey(name:'quests')
	List<DestinyQuestStatus>? quests;
	
	/// Sometimes, you have items in your inventory that don't have instances, but still have Objective information. This provides you that objective information for uninstanced items. 
	/// This dictionary is keyed by the item's hash: which you can use to look up the name and description for the overall task(s) implied by the objective. The value is the list of objectives for this item, and their statuses.
	@JsonKey(name:'uninstancedItemObjectives')
	Map<String, List<DestinyObjectiveProgress>>? uninstancedItemObjectives;
	
	/// Sometimes, you have items in your inventory that don't have instances, but still have perks (for example: Trials passage cards). This gives you the perk information for uninstanced items.
	/// This dictionary is keyed by item hash, which you can use to look up the corresponding item definition. The value is the list of perks states for the item.
	@JsonKey(name:'uninstancedItemPerks')
	Map<String, DestinyItemPerksComponent>? uninstancedItemPerks;
	
	/// The set of checklists that can be examined for this specific character, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
	/// For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet.
	@JsonKey(name:'checklists')
	Map<String, Map<String, bool>>? checklists;
	
	/// Data related to your progress on the current season's artifact that can vary per character.
	@JsonKey(name:'seasonalArtifact')
	DestinyArtifactCharacterScoped? seasonalArtifact;

	factory DestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterProgressionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterProgressionComponentToJson(this);

	static Future<DestinyCharacterProgressionComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCharacterProgressionComponent>((json)=>DestinyCharacterProgressionComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}