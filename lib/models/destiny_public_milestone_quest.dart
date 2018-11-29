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

	static DestinyPublicMilestoneQuest fromJson(Map<String, dynamic> data){
		return new DestinyPublicMilestoneQuest(
				data['questItemHash'],
				data['activity'],
				DestinyPublicMilestoneChallenge.fromList(data['challenges']),
		);
	}

	static List<DestinyPublicMilestoneQuest> fromList(List<dynamic> data){
		List<DestinyPublicMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicMilestoneQuest.fromJson(item));
    });
    return list;
	}
}