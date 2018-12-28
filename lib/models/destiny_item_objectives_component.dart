import 'destiny_objective_progress.dart';

/** Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item. */
class DestinyItemObjectivesComponent{
	
	/** If the item has a hard association with objectives, your progress on them will be defined here. 
Objectives are our standard way to describe a series of tasks that have to be completed for a reward. */
	List<DestinyObjectiveProgress> objectives;
	
	/** I may regret naming it this way - but this represents when an item has an objective that doesn't serve a beneficial purpose, but rather is used for "flavor" or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item. */
	DestinyObjectiveProgress flavorObjective;
	
	/** If we have any information on when these objectives were completed, this will be the date of that completion. This won't be on many items, but could be interesting for some items that do store this information. */
	String dateCompleted;
	DestinyItemObjectivesComponent(
		this.objectives,
		this.flavorObjective,
		this.dateCompleted,
	);

	static DestinyItemObjectivesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemObjectivesComponent(
				data['objectives'] != null ? DestinyObjectiveProgress.fromList(data['objectives']) : null,
				data['flavorObjective'] != null ? DestinyObjectiveProgress.fromMap(data['flavorObjective']) : null,
				data['dateCompleted'],
		);
	}

	static List<DestinyItemObjectivesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemObjectivesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['objectives'] = this.objectives.map((item)=>item.toMap()).toList();
			data['flavorObjective'] = this.flavorObjective;
			data['dateCompleted'] = this.dateCompleted;
		return data;
	}
}