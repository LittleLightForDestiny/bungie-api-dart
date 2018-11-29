import 'destiny_objective_progress.dart';
class DestinyKioskItem{
	int index;
	bool canAcquire;
	List<int> failureIndexes;
	DestinyObjectiveProgress flavorObjective;
	DestinyKioskItem(
		int this.index,
		bool this.canAcquire,
		List<int> this.failureIndexes,
		DestinyObjectiveProgress this.flavorObjective,
	);

	static DestinyKioskItem fromJson(Map<String, dynamic> data){
		return new DestinyKioskItem(
				data['index'],
				data['canAcquire'],
				data['failureIndexes'],
				data['flavorObjective'],
		);
	}

	static List<DestinyKioskItem> fromList(List<dynamic> data){
		List<DestinyKioskItem> list = new List();
    data.forEach((item) {
      list.add(DestinyKioskItem.fromJson(item));
    });
    return list;
	}
}