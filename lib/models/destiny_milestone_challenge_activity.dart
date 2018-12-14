import 'destiny_challenge_status.dart';
import 'destiny_milestone_activity_phase.dart';
class DestinyMilestoneChallengeActivity{
	int activityHash;
	List<DestinyChallengeStatus> challenges;
	List<int> modifierHashes;
	Map<String, bool> booleanActivityOptions;
	int loadoutRequirementIndex;
	List<DestinyMilestoneActivityPhase> phases;
	DestinyMilestoneChallengeActivity(
		this.activityHash,
		this.challenges,
		this.modifierHashes,
		this.booleanActivityOptions,
		this.loadoutRequirementIndex,
		this.phases,
	);

	static DestinyMilestoneChallengeActivity fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivity(
				data['activityHash'],
				data['challenges'] != null ? DestinyChallengeStatus.fromList(data['challenges']) : null,
				data['modifierHashes'] != null ? data['modifierHashes']?.cast<int>() ?? null : null,
				data['booleanActivityOptions'] != null ? Map<String, bool>.from(data['booleanActivityOptions'].map((k, v)=>MapEntry(k, v))) : null,
				data['loadoutRequirementIndex'],
				data['phases'] != null ? DestinyMilestoneActivityPhase.fromList(data['phases']) : null,
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
			data['challenges'] = this.challenges.map((item)=>item.toMap()).toList();
			data['modifierHashes'] = this.modifierHashes;
			data['booleanActivityOptions'] = this.booleanActivityOptions;
			data['loadoutRequirementIndex'] = this.loadoutRequirementIndex;
			data['phases'] = this.phases.map((item)=>item.toMap()).toList();
		return data;
	}
}