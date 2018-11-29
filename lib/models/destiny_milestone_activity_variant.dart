import 'destiny_milestone_activity_completion_status.dart';
class DestinyMilestoneActivityVariant{
	int activityHash;
	DestinyMilestoneActivityCompletionStatus completionStatus;
	int activityModeHash;
	int activityModeType;
	DestinyMilestoneActivityVariant(
		int this.activityHash,
		DestinyMilestoneActivityCompletionStatus this.completionStatus,
		int this.activityModeHash,
		int this.activityModeType,
	);

	static DestinyMilestoneActivityVariant fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneActivityVariant(
				data['activityHash'],
				data['completionStatus'],
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyMilestoneActivityVariant> fromList(List<dynamic> data){
		List<DestinyMilestoneActivityVariant> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariant.fromJson(item));
    });
    return list;
	}
}