import 'destiny_public_milestone_activity_variant.dart';
class DestinyPublicMilestoneActivity{
	int activityHash;
	List<int> modifierHashes;
	List<DestinyPublicMilestoneActivityVariant> variants;
	int activityModeHash;
	int activityModeType;
	DestinyPublicMilestoneActivity(
		int this.activityHash,
		List<int> this.modifierHashes,
		List<DestinyPublicMilestoneActivityVariant> this.variants,
		int this.activityModeHash,
		int this.activityModeType,
	);

	static DestinyPublicMilestoneActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneActivity(
				data['activityHash'],
				data['modifierHashes'],
				DestinyPublicMilestoneActivityVariant.fromList(data['variants']),
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyPublicMilestoneActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['modifierHashes'] = this.modifierHashes;
			data['variants'] = this.variants.map((item)=>item.toMap()).toList();
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}