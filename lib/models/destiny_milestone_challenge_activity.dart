import 'destiny_challenge_status.dart';
import 'destiny_milestone_activity_phase.dart';
class DestinyMilestoneChallengeActivity{
	int activityHash;
	List<DestinyChallengeStatus> challenges;
	List<int> modifierHashes;
	int loadoutRequirementIndex;
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneChallengeActivity(
		int this.activityHash,
		List<DestinyChallengeStatus> this.challenges,
		List<int> this.modifierHashes,
		int this.loadoutRequirementIndex,
		List<DestinyMilestoneActivityPhase> this.phases,
	);

	static DestinyMilestoneChallengeActivity fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivity(
				data['activityHash'],
				DestinyChallengeStatus.fromList(data['challenges']),
				data['modifierHashes'],
				data['loadoutRequirementIndex'],
				DestinyMilestoneActivityPhase.fromList(data['phases']),
		);
	}

	static List<DestinyMilestoneChallengeActivity> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneChallengeActivity> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeActivity.fromJson(item));
    });
    return list;
	}
}