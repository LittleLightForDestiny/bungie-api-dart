
/**  */
class DestinyMilestoneChallengeActivityPhase{
	
	/** The hash identifier of the activity's phase. */
	int phaseHash;
	DestinyMilestoneChallengeActivityPhase(
		this.phaseHash,
	);

	static DestinyMilestoneChallengeActivityPhase fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneChallengeActivityPhase(
				data['phaseHash'],
		);
	}

	static List<DestinyMilestoneChallengeActivityPhase> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneChallengeActivityPhase> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneChallengeActivityPhase.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['phaseHash'] = this.phaseHash;
		return data;
	}
}