import 'destiny_objective_progress.dart';
class DestinyRecordComponent{
	int state;
	List<DestinyObjectiveProgress> objectives;
	DestinyRecordComponent(
		int this.state,
		List<DestinyObjectiveProgress> this.objectives,
	);

	static DestinyRecordComponent fromJson(Map<String, dynamic> data){
		return new DestinyRecordComponent(
				data['state'],
				DestinyObjectiveProgress.fromList(data['objectives']),
		);
	}

	static List<DestinyRecordComponent> fromList(List<dynamic> data){
		List<DestinyRecordComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyRecordComponent.fromJson(item));
    });
    return list;
	}
}