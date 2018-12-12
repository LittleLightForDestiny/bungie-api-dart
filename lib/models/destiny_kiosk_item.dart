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

	static DestinyKioskItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyKioskItem(
				data['index'],
				data['canAcquire'],
				data['failureIndexes'],
				data['flavorObjective'],
		);
	}

	static List<DestinyKioskItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyKioskItem> list = new List();
    data.forEach((item) {
      list.add(DestinyKioskItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['index'] = index;
			data['canAcquire'] = canAcquire;
			data['failureIndexes'] = failureIndexes;
			data['flavorObjective'] = flavorObjective;
	}
}