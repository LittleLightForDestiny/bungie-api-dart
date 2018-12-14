import 'destiny_objective_progress.dart';
import 'destiny_item_plug.dart';
class DestinyItemSocketState{
	int plugHash;
	bool isEnabled;
	bool isVisible;
	List<int> enableFailIndexes;
	List<int> reusablePlugHashes;
	List<DestinyObjectiveProgress> plugObjectives;
	List<DestinyItemPlug> reusablePlugs;
	DestinyItemSocketState(
		this.plugHash,
		this.isEnabled,
		this.isVisible,
		this.enableFailIndexes,
		this.reusablePlugHashes,
		this.plugObjectives,
		this.reusablePlugs,
	);

	static DestinyItemSocketState fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketState(
				data['plugHash'],
				data['isEnabled'],
				data['isVisible'],
				data['enableFailIndexes'] != null ? data['enableFailIndexes']?.cast<int>() ?? null : null,
				data['reusablePlugHashes'] != null ? data['reusablePlugHashes']?.cast<int>() ?? null : null,
				data['plugObjectives'] != null ? DestinyObjectiveProgress.fromList(data['plugObjectives']) : null,
				data['reusablePlugs'] != null ? DestinyItemPlug.fromList(data['reusablePlugs']) : null,
		);
	}

	static List<DestinyItemSocketState> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSocketState> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketState.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['plugHash'] = this.plugHash;
			data['isEnabled'] = this.isEnabled;
			data['isVisible'] = this.isVisible;
			data['enableFailIndexes'] = this.enableFailIndexes;
			data['reusablePlugHashes'] = this.reusablePlugHashes;
			data['plugObjectives'] = this.plugObjectives.map((item)=>item.toMap()).toList();
			data['reusablePlugs'] = this.reusablePlugs.map((item)=>item.toMap()).toList();
		return data;
	}
}