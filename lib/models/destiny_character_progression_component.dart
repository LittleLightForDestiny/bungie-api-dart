import 'destiny_progression.dart';
import 'destiny_faction_progression.dart';
import 'destiny_milestone.dart';
import 'destiny_quest_status.dart';
import 'destiny_objective_progress.dart';
class DestinyCharacterProgressionComponent{
	Map<String, DestinyProgression> progressions;
	Map<String, DestinyFactionProgression> factions;
	Map<String, DestinyMilestone> milestones;
	List<DestinyQuestStatus> quests;
	Map<String, List<DestinyObjectiveProgress>> uninstancedItemObjectives;
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