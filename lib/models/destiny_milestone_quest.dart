import 'destiny_quest_status.dart';
import 'destiny_milestone_activity.dart';
import 'destiny_challenge_status.dart';
class DestinyMilestoneQuest{
	int questItemHash;
	DestinyQuestStatus status;
	DestinyMilestoneActivity activity;
	List<DestinyChallengeStatus> challenges;
	DestinyMilestoneQuest(
		this.questItemHash,
		this.status,
		this.activity,
		this.challenges,
	);

	static DestinyMilestoneQuest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuest(
				data['questItemHash'],
				data['status'] != null ? DestinyQuestStatus.fromMap(data['status']) : null,
				data['activity'] != null ? DestinyMilestoneActivity.fromMap(data['activity']) : null,
				data['challenges'] != null ? DestinyChallengeStatus.fromList(data['challenges']) : null,
		);
	}

	static List<DestinyMilestoneQuest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuest> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['questItemHash'] = this.questItemHash;
			data['status'] = this.status;
			data['activity'] = this.activity;
			data['challenges'] = this.challenges.map((item)=>item.toMap()).toList();
		return data;
	}
}