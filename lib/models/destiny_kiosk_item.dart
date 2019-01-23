import 'destiny_objective_progress.dart';

/**  */
class DestinyKioskItem{
	
	/** The index of the item in the related DestinyVendorDefintion's itemList property, representing the sale. */
	int index;
	
	/** If true, the user can not only see the item, but they can acquire it. It is possible that a user can see a kiosk item and not be able to acquire it. */
	bool canAcquire;
	
	/** Indexes into failureStrings for the Vendor, indicating the reasons why it failed if any. */
	List<int> failureIndexes;
	
	/** I may regret naming it this way - but this represents when an item has an objective that doesn't serve a beneficial purpose, but rather is used for "flavor" or additional information. For instance, when Emblems track specific stats, those stats are represented as Objectives on the item. */
	DestinyObjectiveProgress flavorObjective;
	DestinyKioskItem(
		this.index,
		this.canAcquire,
		this.failureIndexes,
		this.flavorObjective,
	);

	static DestinyKioskItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyKioskItem(
				data['index'],
				data['canAcquire'],
				data['failureIndexes'] != null ? data['failureIndexes']?.cast<int>() ?? null : null,
				data['flavorObjective'] != null ? DestinyObjectiveProgress.fromMap(data['flavorObjective']) : null,
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
			data['index'] = this.index;
			data['canAcquire'] = this.canAcquire;
			data['failureIndexes'] = this.failureIndexes;
			data['flavorObjective'] = this.flavorObjective != null? this.flavorObjective.toMap() : null;
		return data;
	}
}