import 'destiny_milestone_activity_phase.dart';
class DestinyMilestoneActivityCompletionStatus{
	bool completed;
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneActivityCompletionStatus(
		bool this.completed,
		List<DestinyMilestoneActivityPhase> this.phases,
	);

	static DestinyMilestoneActivityCompletionStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityCompletionStatus(
				data['completed'],
				DestinyMilestoneActivityPhase.fromList(data['phases']),
		);
	}

	static List<DestinyMilestoneActivityCompletionStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityCompletionStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityCompletionStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['completed'] = this.completed;
			data['phases'] = this.phases.map((item)=>item.toMap());
		return data;
	}
}