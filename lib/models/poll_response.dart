import 'poll_result.dart';

/**  */
class PollResponse{
	
	/**  */
	String topicId;
	
	/**  */
	List<PollResult> results;
	
	/**  */
	int totalVotes;
	PollResponse(
		this.topicId,
		this.results,
		this.totalVotes,
	);

	static PollResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PollResponse(
				data['topicId'],
				data['results'] != null ? PollResult.fromList(data['results']) : null,
				data['totalVotes'],
		);
	}

	static List<PollResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PollResponse> list = new List();
    data.forEach((item) {
      list.add(PollResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['topicId'] = this.topicId;
			data['results'] = this.results.map((item)=>item.toMap()).toList();
			data['totalVotes'] = this.totalVotes;
		return data;
	}
}