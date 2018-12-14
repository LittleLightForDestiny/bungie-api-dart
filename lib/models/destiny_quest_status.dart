import 'destiny_objective_progress.dart';
class DestinyQuestStatus{
	int questHash;
	int stepHash;
	List<DestinyObjectiveProgress> stepObjectives;
	bool tracked;
	String itemInstanceId;
	bool completed;
	bool redeemed;
	bool started;
	int vendorHash;
	DestinyQuestStatus(
		this.questHash,
		this.stepHash,
		this.stepObjectives,
		this.tracked,
		this.itemInstanceId,
		this.completed,
		this.redeemed,
		this.started,
		this.vendorHash,
	);

	static DestinyQuestStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyQuestStatus(
				data['questHash'],
				data['stepHash'],
				data['stepObjectives'] != null ? DestinyObjectiveProgress.fromList(data['stepObjectives']) : null,
				data['tracked'],
				data['itemInstanceId'],
				data['completed'],
				data['redeemed'],
				data['started'],
				data['vendorHash'],
		);
	}

	static List<DestinyQuestStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyQuestStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyQuestStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questHash'] = this.questHash;
			data['stepHash'] = this.stepHash;
			data['stepObjectives'] = this.stepObjectives.map((item)=>item.toMap()).toList();
			data['tracked'] = this.tracked;
			data['itemInstanceId'] = this.itemInstanceId;
			data['completed'] = this.completed;
			data['redeemed'] = this.redeemed;
			data['started'] = this.started;
			data['vendorHash'] = this.vendorHash;
		return data;
	}
}