import 'group_v2_card.dart';
import 'paged_query.dart';
class GroupSearchResponse{
	List<GroupV2Card> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	GroupSearchResponse(
		List<GroupV2Card> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static GroupSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupSearchResponse(
				GroupV2Card.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<GroupSearchResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupSearchResponse> list = new List();
    data.forEach((item) {
      list.add(GroupSearchResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = this.results.map((item)=>item.toMap()).toList();
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query.toMap();
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}