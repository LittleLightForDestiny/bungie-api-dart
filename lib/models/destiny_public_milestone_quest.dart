import 'destiny_public_milestone_activity.dart';
import 'destiny_public_milestone_challenge.dart';
class DestinyPublicMilestoneQuest{
	int questItemHash;
	DestinyPublicMilestoneActivity activity;
	List<DestinyPublicMilestoneChallenge> challenges;
	DestinyPublicMilestoneQuest(
		int this.questItemHash,
		DestinyPublicMilestoneActivity this.activity,
		List<DestinyPublicMilestoneChallenge> this.challenges,
	);

	static DestinyPublicMilestoneQuest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicMilestoneQuest(
				data['questItemHash'],
				data['activity'],
				DestinyPublicMilestoneChallenge.fromList(data['challenges']),
		);
	}

	static List<DestinyPublicMilestoneQuest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneQuest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questItemHash'] = this.questItemHash;
			data['activity'] = this.activity;
			data['challenges'] = this.challenges.map((item)=>item.toMap());
		return data;
	}
}