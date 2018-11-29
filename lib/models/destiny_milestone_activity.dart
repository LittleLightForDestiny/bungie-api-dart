import 'destiny_milestone_activity_variant.dart';
class DestinyMilestoneActivity{
	int activityHash;
	int activityModeHash;
	int activityModeType;
	List<int> modifierHashes;
	List<DestinyMilestoneActivityVariant> variants;
	DestinyMilestoneActivity(
		int this.activityHash,
		int this.activityModeHash,
		int this.activityModeType,
		List<int> this.modifierHashes,
		List<DestinyMilestoneActivityVariant> this.variants,
	);

	static DestinyMilestoneActivity fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneActivity(
				data['activityHash'],
				data['activityModeHash'],
				data['activityModeType'],
				data['modifierHashes'],
				DestinyMilestoneActivityVariant.fromList(data['variants']),
		);
	}

	static List<DestinyMilestoneActivity> fromList(List<dynamic> data){
		List<DestinyMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivity.fromJson(item));
    });
    return list;
	}
}