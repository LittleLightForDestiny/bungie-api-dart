import 'destiny_milestone_activity_variant.dart';
class DestinyMilestoneActivity{
	int activityHash;
	int activityModeHash;
	int activityModeType;
	List<int> modifierHashes;
	List<DestinyMilestoneActivityVariant> variants;
	DestinyMilestoneActivity(
		this.activityHash,
		this.activityModeHash,
		this.activityModeType,
		this.modifierHashes,
		this.variants,
	);

	static DestinyMilestoneActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivity(
				data['activityHash'],
				data['activityModeHash'],
				data['activityModeType'],
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['variants'] != null ? DestinyMilestoneActivityVariant.fromList(data['variants']) : null,
		);
	}

	static List<DestinyMilestoneActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
			data['modifierHashes'] = this.modifierHashes;
			data['variants'] = this.variants.map((item)=>item.toMap()).toList();
		return data;
	}
}