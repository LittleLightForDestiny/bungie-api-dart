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

	static DestinyPublicMilestoneActivity fromJson(Map<String, dynamic> data){
		return new DestinyPublicMilestoneActivity(
				data['activityHash'],
				data['modifierHashes'],
				DestinyPublicMilestoneActivityVariant.fromList(data['variants']),
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyPublicMilestoneActivity> fromList(List<dynamic> data){
		List<DestinyPublicMilestoneActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneActivity.fromJson(item));
    });
    return list;
	}
}