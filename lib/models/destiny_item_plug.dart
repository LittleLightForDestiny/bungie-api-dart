import 'destiny_objective_progress.dart';
class DestinyItemPlug{
	int plugItemHash;
	List<DestinyObjectiveProgress> plugObjectives;
	bool canInsert;
	bool enabled;
	List<int> insertFailIndexes;
	List<int> enableFailIndexes;
	DestinyItemPlug(
		int this.plugItemHash,
		List<DestinyObjectiveProgress> this.plugObjectives,
		bool this.canInsert,
		bool this.enabled,
		List<int> this.insertFailIndexes,
		List<int> this.enableFailIndexes,
	);

	static DestinyItemPlug fromJson(Map<String, dynamic> data){
		return new DestinyItemPlug(
				data['plugItemHash'],
				DestinyObjectiveProgress.fromList(data['plugObjectives']),
				data['canInsert'],
				data['enabled'],
				data['insertFailIndexes'],
				data['enableFailIndexes'],
		);
	}

	static List<DestinyItemPlug> fromList(List<dynamic> data){
		List<DestinyItemPlug> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlug.fromJson(item));
    });
    return list;
	}
}