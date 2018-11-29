import 'destiny_milestone_activity_phase.dart';
class DestinyMilestoneActivityCompletionStatus{
	bool completed;
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneActivityCompletionStatus(
		bool this.completed,
		List<DestinyMilestoneActivityPhase> this.phases,
	);

	static DestinyMilestoneActivityCompletionStatus fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneActivityCompletionStatus(
				data['completed'],
				DestinyMilestoneActivityPhase.fromList(data['phases']),
		);
	}

	static List<DestinyMilestoneActivityCompletionStatus> fromList(List<dynamic> data){
		List<DestinyMilestoneActivityCompletionStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityCompletionStatus.fromJson(item));
    });
    return list;
	}
}