import 'destiny_objective_progress.dart';
class DestinyItemPlugComponent{
	int plugItemHash;
	List<DestinyObjectiveProgress> plugObjectives;
	bool canInsert;
	bool enabled;
	List<int> insertFailIndexes;
	List<int> enableFailIndexes;
	DestinyItemPlugComponent(
		this.plugItemHash,
		this.plugObjectives,
		this.canInsert,
		this.enabled,
		this.insertFailIndexes,
		this.enableFailIndexes,
	);

	static DestinyItemPlugComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemPlugComponent(
				data['plugItemHash'],
				data['plugObjectives'] != null ? DestinyObjectiveProgress.fromList(data['plugObjectives']) : null,
				data['canInsert'],
				data['enabled'],
				data['insertFailIndexes'] != null ? data['insertFailIndexes']?.cast<int>() ?? null : null,
				data['enableFailIndexes'] != null ? data['enableFailIndexes']?.cast<int>() ?? null : null,
		);
	}

	static List<DestinyItemPlugComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemPlugComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyItemPlugComponent.fromMap(item));
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