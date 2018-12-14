import 'destiny_milestone_activity_completion_status.dart';
class DestinyMilestoneActivityVariant{
	int activityHash;
	DestinyMilestoneActivityCompletionStatus completionStatus;
	int activityModeHash;
	int activityModeType;
	DestinyMilestoneActivityVariant(
		this.activityHash,
		this.completionStatus,
		this.activityModeHash,
		this.activityModeType,
	);

	static DestinyMilestoneActivityVariant fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityVariant(
				data['activityHash'],
				data['completionStatus'] != null ? DestinyMilestoneActivityCompletionStatus.fromMap(data['completionStatus']) : null,
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