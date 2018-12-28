
/*  */
class PollResult{
	
	/*  */
	String answerText;
	
	/*  */
	int answerSlot;
	
	/*  */
	String lastVoteDate;
	
	/*  */
	int votes;
	
	/*  */
	bool requestingUserVoted;
	PollResult(
		this.answerText,
		this.answerSlot,
		this.lastVoteDate,
		this.votes,
		this.requestingUserVoted,
	);

	static PollResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PollResult(
				data['answerText'],
				data['answerSlot'],
				data['lastVoteDate'],
				data['votes'],
				data['requestingUserVoted'],
		);
	}

	static List<PollResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PollResult> list = new List();
    data.forEach((item) {
      list.add(PollResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['answerText'] = this.answerText;
			data['answerSlot'] = this.answerSlot;
			data['lastVoteDate'] = this.lastVoteDate;
			data['votes'] = this.votes;
			data['requestingUserVoted'] = this.requestingUserVoted;
		return data;
	}
}