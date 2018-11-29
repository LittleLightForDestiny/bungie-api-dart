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

	static DestinyItemSocketState fromJson(Map<String, dynamic> data){
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
		List<DestinyItemSocketState> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSocketState.fromJson(item));
    });
    return list;
	}
}