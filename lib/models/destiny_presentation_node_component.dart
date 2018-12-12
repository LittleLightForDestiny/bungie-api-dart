import 'destiny_objective_progress.dart';
class DestinyPresentationNodeComponent{
	int state;
	DestinyObjectiveProgress objective;
	DestinyPresentationNodeComponent(
		int this.state,
		DestinyObjectiveProgress this.objective,
	);

	static DestinyPresentationNodeComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeComponent(
				data['state'],
				DestinyObjectiveProgress.fromMap(data['objective']),
		);
	}

	static List<DestinyPresentationNodeComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
			data['objective'] = this.objective.toMap();
		return data;
	}
}