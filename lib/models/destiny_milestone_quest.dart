import 'destiny_quest_status.dart';
import 'destiny_milestone_activity.dart';
import 'destiny_challenge_status.dart';
class DestinyMilestoneQuest{
	int questItemHash;
	DestinyQuestStatus status;
	DestinyMilestoneActivity activity;
	List<DestinyChallengeStatus> challenges;
	DestinyMilestoneQuest(
		int this.questItemHash,
		DestinyQuestStatus this.status,
		DestinyMilestoneActivity this.activity,
		List<DestinyChallengeStatus> this.challenges,
	);

	static DestinyMilestoneQuest fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuest(
				data['questItemHash'],
				data['status'],
				data['activity'],
				DestinyChallengeStatus.fromList(data['challenges']),
		);
	}

	static List<DestinyMilestoneQuest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuest.fromJson(item));
    });
    return list;
	}
}