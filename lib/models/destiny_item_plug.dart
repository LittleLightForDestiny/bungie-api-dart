import 'destiny_objective_progress.dart';
class DestinyItemPlug{
	int plugItemHash;
	List<DestinyObjectiveProgress> plugObjectives;
	bool canInsert;
	bool enabled;
	List<int> insertFailIndexes;
	List<int> enableFailIndexes;
	DestinyItemPlug(
		this.plugItemHash,
		this.plugObjectives,
		this.canInsert,
		this.enabled,
		this.insertFailIndexes,
		this.enableFailIndexes,
	);

	static DestinyItemPlug fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlug(
				data['plugItemHash'],
				data['plugObjectives'] != null ? DestinyObjectiveProgress.fromList(data['plugObjectives']) : null,
				data['canInsert'],
				data['enabled'],
				data['insertFailIndexes'] != null ? data['insertFailIndexes']?.cast<int>() ?? null : null,
				data['enableFailIndexes'] != null ? data['enableFailIndexes']?.cast<int>() ?? null : null,
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
			data['plugObjectives'] = this.plugObjectives.map((item)=>item.toMap()).toList();
			data['canInsert'] = this.canInsert;
			data['enabled'] = this.enabled;
			data['insertFailIndexes'] = this.insertFailIndexes;
			data['enableFailIndexes'] = this.enableFailIndexes;
		return data;
	}
}