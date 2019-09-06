import 'destiny_progression.dart';
import 'destiny_faction_progression.dart';
import 'destiny_milestone.dart';
import 'destiny_quest_status.dart';
import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_progression_component.g.dart';

/// This component returns anything that could be considered &quot;Progression&quot; on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
@JsonSerializable()
class DestinyCharacterProgressionComponent {

	/// A Dictionary of all known progressions for the Character, keyed by the Progression&#39;s hash.
	/// Not all progressions have user-facing data, but those who do will have that data contained in the DestinyProgressionDefinition.
	@JsonKey(name:'progressions')
	Map<String, DestinyProgression> progressions;

	/// A dictionary of all known Factions, keyed by the Faction&#39;s hash. It contains data about this character&#39;s status with the faction.
	@JsonKey(name:'factions')
	Map<String, DestinyFactionProgression> factions;

	/// Milestones are related to the simple progressions shown in the game, but return additional and hopefully helpful information for users about the specifics of the Milestone&#39;s status.
	@JsonKey(name:'milestones')
	Map<String, DestinyMilestone> milestones;

	/// If the user has any active quests, the quests&#39; statuses will be returned here.
	/// Note that quests have been largely supplanted by Milestones, but that doesn&#39;t mean that they won&#39;t make a comeback independent of milestones at some point.
	@JsonKey(name:'quests')
	List<DestinyQuestStatus> quests;

	/// Sometimes, you have items in your inventory that don&#39;t have instances, but still have Objective information. This provides you that objective information for uninstanced items. 
	/// This dictionary is keyed by the item&#39;s hash: which you can use to look up the name and description for the overall task(s) implied by the objective. The value is the list of objectives for this item, and their statuses.
	@JsonKey(name:'uninstancedItemObjectives')
	Map<String, List<DestinyObjectiveProgress>> uninstancedItemObjectives;

	/// The set of checklists that can be examined for this specific character, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
	/// For each checklist returned, its value is itself a Dictionary keyed by the checklist&#39;s hash identifier with the value being a boolean indicating if it&#39;s been discovered yet.
	@JsonKey(name:'checklists')
	Map<String, Map<String, bool>> checklists;
	DestinyCharacterProgressionComponent();

	factory DestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) => _$DestinyCharacterProgressionComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterProgressionComponentToJson(this);
}
