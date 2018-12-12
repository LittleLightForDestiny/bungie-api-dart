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

	static DestinyItemPlug fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<DestinyItemPlug> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlug.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugItemHash'] = this.plugItemHash;
			data['plugObjectives'] = this.plugObjectives.map((item)=>item.toMap());
			data['canInsert'] = this.canInsert;
			data['enabled'] = this.enabled;
			data['insertFailIndexes'] = this.insertFailIndexes;
			data['enableFailIndexes'] = this.enableFailIndexes;
		return data;
	}
}