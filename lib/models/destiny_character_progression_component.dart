import 'destiny_progression.dart';
import 'destiny_faction_progression.dart';
import 'destiny_milestone.dart';
import 'destiny_quest_status.dart';
import 'destiny_objective_progress.dart';
class DestinyCharacterProgressionComponent{
	Map<DestinyProgression, dynamic> progressions;
	Map<DestinyFactionProgression, dynamic> factions;
	Map<DestinyMilestone, dynamic> milestones;
	List<DestinyQuestStatus> quests;
	Map<List<DestinyObjectiveProgress>, dynamic> uninstancedItemObjectives;
	Map<Map<bool, dynamic>, dynamic> checklists;
	DestinyCharacterProgressionComponent(
		Map<DestinyProgression, dynamic> this.progressions,
		Map<DestinyFactionProgression, dynamic> this.factions,
		Map<DestinyMilestone, dynamic> this.milestones,
		List<DestinyQuestStatus> this.quests,
		Map<List<DestinyObjectiveProgress>, dynamic> this.uninstancedItemObjectives,
		Map<Map<bool, dynamic>, dynamic> this.checklists,
	);

	static DestinyCharacterProgressionComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterProgressionComponent(
				data['progressions'],
				data['factions'],
				data['milestones'],
				DestinyQuestStatus.fromList(data['quests']),
				data['uninstancedItemObjectives'],
				data['checklists'],
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
			data['quests'] = this.quests.map((item)=>item.toMap());
			data['uninstancedItemObjectives'] = this.uninstancedItemObjectives;
			data['checklists'] = this.checklists;
		return data;
	}
}