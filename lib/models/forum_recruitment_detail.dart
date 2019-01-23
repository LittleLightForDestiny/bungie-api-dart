import 'general_user.dart';

/**  */
class ForumRecruitmentDetail{
	
	/**  */
	String topicId;
	
	/**  */
	bool microphoneRequired;
	
	/**  */
	int intensity;
	
	/**  */
	int tone;
	
	/**  */
	bool approved;
	
	/**  */
	String conversationId;
	
	/**  */
	int playerSlotsTotal;
	
	/**  */
	int playerSlotsRemaining;
	
	/**  */
	List<GeneralUser> fireteam;
	
	/**  */
	List<String> kickedPlayerIds;
	ForumRecruitmentDetail(
		this.topicId,
		this.microphoneRequired,
		this.intensity,
		this.tone,
		this.approved,
		this.conversationId,
		this.playerSlotsTotal,
		this.playerSlotsRemaining,
		this.fireteam,
		this.kickedPlayerIds,
	);

	static ForumRecruitmentDetail fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ForumRecruitmentDetail(
				data['topicId'],
				data['microphoneRequired'],
				data['intensity'],
				data['tone'],
				data['approved'],
				data['conversationId'],
				data['playerSlotsTotal'],
				data['playerSlotsRemaining'],
				data['Fireteam'] != null ? GeneralUser.fromList(data['Fireteam']) : null,
				data['kickedPlayerIds'] != null ? data['kickedPlayerIds']?.cast<String>() ?? null : null,
		);
	}

	static List<ForumRecruitmentDetail> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ForumRecruitmentDetail> list = new List();
    data.forEach((item) {
      list.add(ForumRecruitmentDetail.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['topicId'] = this.topicId;
			data['microphoneRequired'] = this.microphoneRequired;
			data['intensity'] = this.intensity;
			data['tone'] = this.tone;
			data['approved'] = this.approved;
			data['conversationId'] = this.conversationId;
			data['playerSlotsTotal'] = this.playerSlotsTotal;
			data['playerSlotsRemaining'] = this.playerSlotsRemaining;
			data['Fireteam'] = this.fireteam != null? this.fireteam.map((item)=>item.toMap()).toList() : null;
			data['kickedPlayerIds'] = this.kickedPlayerIds;
		return data;
	}
}