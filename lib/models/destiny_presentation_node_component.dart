import 'destiny_objective_progress.dart';
class DestinyPresentationNodeComponent{
	int state;
	DestinyObjectiveProgress objective;
	DestinyPresentationNodeComponent(
		int this.state,
		DestinyObjectiveProgress this.objective,
	);

	static DestinyPresentationNodeComponent fromJson(Map<String, dynamic> data){
		return new DestinyPresentationNodeComponent(
				data['state'],
				DestinyObjectiveProgress.fromJson(data['objective']),
		);
	}

	static List<DestinyPresentationNodeComponent> fromList(List<dynamic> data){
		List<DestinyPresentationNodeComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeComponent.fromJson(item));
    });
    return list;
	}
}