import 'group_membership.dart';
import 'paged_query.dart';
class GroupMembershipSearchResponse{
	List<GroupMembership> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	GroupMembershipSearchResponse(
		List<GroupMembership> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static GroupMembershipSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupMembershipSearchResponse(
				GroupMembership.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<GroupMembershipSearchResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupMembershipSearchResponse> list = new List();
    data.forEach((item) {
      list.add(GroupMembershipSearchResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = results.map((item)=>item.toMap());
			data['totalResults'] = totalResults;
			data['hasMore'] = hasMore;
			data['query'] = query.toMap();
			data['replacementContinuationToken'] = replacementContinuationToken;
			data['useTotalResults'] = useTotalResults;
	}
}