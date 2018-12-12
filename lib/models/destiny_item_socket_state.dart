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
		int this.plugHash,
		bool this.isEnabled,
		bool this.isVisible,
		List<int> this.enableFailIndexes,
		List<int> this.reusablePlugHashes,
		List<DestinyObjectiveProgress> this.plugObjectives,
		List<DestinyItemPlug> this.reusablePlugs,
	);

	static DestinyItemSocketState fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSocketState(
				data['plugHash'],
				data['isEnabled'],
				data['isVisible'],
				data['enableFailIndexes'],
				data['reusablePlugHashes'],
				DestinyObjectiveProgress.fromList(data['plugObjectives']),
				DestinyItemPlug.fromList(data['reusablePlugs']),
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