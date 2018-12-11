class PollResult{
	String answerText;
	int answerSlot;
	String lastVoteDate;
	int votes;
	bool requestingUserVoted;
	PollResult(
		String this.answerText,
		int this.answerSlot,
		String this.lastVoteDate,
		int this.votes,
		bool this.requestingUserVoted,
	);

	static PollResult fromJson(Map<String, dynamic> data){
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
      list.add(PollResult.fromJson(item));
    });
    return list;
	}
}