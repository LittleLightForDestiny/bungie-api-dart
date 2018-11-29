import 'destiny_objective_progress.dart';
import 'destiny_objective_progress.dart';
class DestinyItemObjectivesComponent{
	List<DestinyObjectiveProgress> objectives;
	DestinyObjectiveProgress flavorObjective;
	String dateCompleted;
	DestinyItemObjectivesComponent(
		List<DestinyObjectiveProgress> this.objectives,
		DestinyObjectiveProgress this.flavorObjective,
		String this.dateCompleted,
	);

	static DestinyItemObjectivesComponent fromJson(Map<String, dynamic> data){
		return new DestinyItemObjectivesComponent(
				DestinyObjectiveProgress.fromList(data['objectives']),
				data['flavorObjective'],
				data['dateCompleted'],
		);
	}

	static List<DestinyItemObjectivesComponent> fromList(List<dynamic> data){
		List<DestinyItemObjectivesComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemObjectivesComponent.fromJson(item));
    });
    return list;
	}
}