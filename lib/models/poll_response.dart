import 'poll_result.dart';
class PollResponse{
	int topicId;
	List<PollResult> results;
	int totalVotes;
	PollResponse(
		int this.topicId,
		List<PollResult> this.results,
		int this.totalVotes,
	);

	static PollResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PollResponse(
				data['topicId'],
				PollResult.fromList(data['results']),
				data['totalVotes'],
		);
	}

	static List<PollResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PollResponse> list = new List();
    data.forEach((item) {
      list.add(PollResponse.fromJson(item));
    });
    return list;
	}
}