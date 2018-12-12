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

	static DestinyMilestoneChallengeActivity fromMap(Map<String, dynamic> data){
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
      list.add(DestinyMilestoneChallengeActivity.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = this.activityHash;
			data['challenges'] = this.challenges.map((item)=>item.toMap());
			data['modifierHashes'] = this.modifierHashes;
			data['loadoutRequirementIndex'] = this.loadoutRequirementIndex;
			data['phases'] = this.phases.map((item)=>item.toMap());
		return data;
	}
}