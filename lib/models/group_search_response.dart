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

	static GroupSearchResponse fromJson(Map<String, dynamic> data){
		return new GroupSearchResponse(
				GroupV2Card.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<GroupSearchResponse> fromList(List<dynamic> data){
		List<GroupSearchResponse> list = new List();
    data.forEach((item) {
      list.add(GroupSearchResponse.fromJson(item));
    });
    return list;
	}
}