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

	static DestinyMilestoneActivityVariant fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityVariant(
				data['activityHash'],
				data['completionStatus'],
				data['activityModeHash'],
				data['activityModeType'],
		);
	}

	static List<DestinyMilestoneActivityVariant> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityVariant> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityVariant.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['completionStatus'] = this.completionStatus;
			data['activityModeHash'] = this.activityModeHash;
			data['activityModeType'] = this.activityModeType;
		return data;
	}
}