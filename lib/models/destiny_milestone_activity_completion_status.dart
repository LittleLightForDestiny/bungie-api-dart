import 'destiny_milestone_activity_phase.dart';
class DestinyMilestoneActivityCompletionStatus{
	bool completed;
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneActivityCompletionStatus(
		this.completed,
		this.phases,
	);

	static DestinyMilestoneActivityCompletionStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityCompletionStatus(
				data['completed'],
				data['phases'] != null ? DestinyMilestoneActivityPhase.fromList(data['phases']) : null,
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
			data['phases'] = this.phases.map((item)=>item.toMap()).toList();
		return data;
	}
}