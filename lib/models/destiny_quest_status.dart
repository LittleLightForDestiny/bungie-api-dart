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

	static DestinyQuestStatus fromJson(Map<String, dynamic> data){
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
      list.add(DestinyQuestStatus.fromJson(item));
    });
    return list;
	}
}