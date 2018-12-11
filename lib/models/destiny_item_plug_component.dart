import 'destiny_objective_progress.dart';
class DestinyItemPlugComponent{
	int plugItemHash;
	List<DestinyObjectiveProgress> plugObjectives;
	bool canInsert;
	bool enabled;
	List<int> insertFailIndexes;
	List<int> enableFailIndexes;
	DestinyItemPlugComponent(
		int this.plugItemHash,
		List<DestinyObjectiveProgress> this.plugObjectives,
		bool this.canInsert,
		bool this.enabled,
		List<int> this.insertFailIndexes,
		List<int> this.enableFailIndexes,
	);

	static DestinyItemPlugComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlugComponent(
				data['plugItemHash'],
				DestinyObjectiveProgress.fromList(data['plugObjectives']),
				data['canInsert'],
				data['enabled'],
				data['insertFailIndexes'],
				data['enableFailIndexes'],
		);
	}

	static List<DestinyItemPlugComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPlugComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlugComponent.fromJson(item));
    });
    return list;
	}
}