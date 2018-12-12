import 'destiny_objective_progress.dart';
class DestinyQuestStatus{
	int questHash;
	int stepHash;
	List<DestinyObjectiveProgress> stepObjectives;
	bool tracked;
	int itemInstanceId;
	bool completed;
	bool redeemed;
	bool started;
	int vendorHash;
	DestinyQuestStatus(
		int this.questHash,
		int this.stepHash,
		List<DestinyObjectiveProgress> this.stepObjectives,
		bool this.tracked,
		int this.itemInstanceId,
		bool this.completed,
		bool this.redeemed,
		bool this.started,
		int this.vendorHash,
	);

	static DestinyQuestStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyQuestStatus(
				data['questHash'],
				data['stepHash'],
				DestinyObjectiveProgress.fromList(data['stepObjectives']),
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
			data['questHash'] = questHash;
			data['stepHash'] = stepHash;
			data['stepObjectives'] = stepObjectives.map((item)=>item.toMap());
			data['tracked'] = tracked;
			data['itemInstanceId'] = itemInstanceId;
			data['completed'] = completed;
			data['redeemed'] = redeemed;
			data['started'] = started;
			data['vendorHash'] = vendorHash;
	}
}