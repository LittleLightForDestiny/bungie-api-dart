import 'group_potential_membership.dart';
import 'paged_query.dart';
class GroupPotentialMembershipSearchResponse{
	List<GroupPotentialMembership> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	GroupPotentialMembershipSearchResponse(
		List<GroupPotentialMembership> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static GroupPotentialMembershipSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupPotentialMembershipSearchResponse(
				GroupPotentialMembership.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<GroupPotentialMembershipSearchResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupPotentialMembershipSearchResponse> list = new List();
    data.forEach((item) {
      list.add(GroupPotentialMembershipSearchResponse.fromMap(item));
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