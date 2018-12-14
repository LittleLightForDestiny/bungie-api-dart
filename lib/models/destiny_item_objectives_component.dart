import 'destiny_objective_progress.dart';
import 'destiny_objective_progress.dart';
class DestinyItemObjectivesComponent{
	List<DestinyObjectiveProgress> objectives;
	DestinyObjectiveProgress flavorObjective;
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