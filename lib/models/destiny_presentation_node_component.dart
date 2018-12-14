import 'destiny_objective_progress.dart';
class DestinyPresentationNodeComponent{
	int state;
	DestinyObjectiveProgress objective;
	int progressValue;
	int completionValue;
	DestinyPresentationNodeComponent(
		this.state,
		this.objective,
		this.progressValue,
		this.completionValue,
	);

	static DestinyPresentationNodeComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeComponent(
				data['state'],
				data['objective'] != null ? DestinyObjectiveProgress.fromMap(data['objective']) : null,
				data['progressValue'],
				data['completionValue'],
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
			data['objective'] = this.objective;
			data['progressValue'] = this.progressValue;
			data['completionValue'] = this.completionValue;
		return data;
	}
}