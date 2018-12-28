import 'destiny_progression.dart';
import 'destiny_faction_progression.dart';
import 'destiny_milestone.dart';
import 'destiny_quest_status.dart';
import 'destiny_objective_progress.dart';

/* This component returns anything that could be considered "Progression" on a user: data where the user is gaining levels, reputation, completions, rewards, etc... */
class DestinyCharacterProgressionComponent{
	
	/* A Dictionary of all known progressions for the Character, keyed by the Progression's hash.
Not all progressions have user-facing data, but those who do will have that data contained in the DestinyProgressionDefinition. */
	Map<String, DestinyProgression> progressions;
	
	/* A dictionary of all known Factions, keyed by the Faction's hash. It contains data about this character's status with the faction. */
	Map<String, DestinyFactionProgression> factions;
	
	/* Milestones are related to the simple progressions shown in the game, but return additional and hopefully helpful information for users about the specifics of the Milestone's status. */
	Map<String, DestinyMilestone> milestones;
	
	/* If the user has any active quests, the quests' statuses will be returned here.
Note that quests have been largely supplanted by Milestones, but that doesn't mean that they won't make a comeback independent of milestones at some point. */
	List<DestinyQuestStatus> quests;
	
	/* Sometimes, you have items in your inventory that don't have instances, but still have Objective information. This provides you that objective information for uninstanced items. 
This dictionary is keyed by the item's hash: which you can use to look up the name and description for the overall task(s) implied by the objective. The value is the list of objectives for this item, and their statuses. */
	Map<String, List<DestinyObjectiveProgress>> uninstancedItemObjectives;
	
	/* The set of checklists that can be examined for this specific character, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet. */
	Map<String, Map<String, bool>> checklists;
	DestinyCharacterProgressionComponent(
		this.progressions,
		this.factions,
		this.milestones,
		this.quests,
		this.uninstancedItemObjectives,
		this.checklists,
	);

	static DestinyCharacterProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterProgressionComponent(
				data['progressions'] != null ? Map<String, DestinyProgression>.from(data['progressions'].map((k, v)=>MapEntry(k, DestinyProgression.fromMap(v)))) : null,
				data['factions'] != null ? Map<String, DestinyFactionProgression>.from(data['factions'].map((k, v)=>MapEntry(k, DestinyFactionProgression.fromMap(v)))) : null,
				data['milestones'] != null ? Map<String, DestinyMilestone>.from(data['milestones'].map((k, v)=>MapEntry(k, DestinyMilestone.fromMap(v)))) : null,
				data['quests'] != null ? DestinyQuestStatus.fromList(data['quests']) : null,
				data['uninstancedItemObjectives'] != null ? Map<String, List<DestinyObjectiveProgress>>.from(data['uninstancedItemObjectives'].map((k, v)=>MapEntry(k, DestinyObjectiveProgress.fromList(v)))) : null,
				data['checklists'] != null ? Map<String, Map<String, bool>>.from(data['checklists'].map((k, v)=>MapEntry(k, Map<String, bool>.from(v.map((k, v)=>MapEntry(k, v)))))) : null,
		);
	}

	static List<DestinyCharacterProgressionComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterProgressionComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterProgressionComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['progressions'] = this.progressions;
			data['factions'] = this.factions;
			data['milestones'] = this.milestones;
			data['quests'] = this.quests.map((item)=>item.toMap()).toList();
			data['uninstancedItemObjectives'] = this.uninstancedItemObjectives;
			data['checklists'] = this.checklists;
		return data;
	}
}