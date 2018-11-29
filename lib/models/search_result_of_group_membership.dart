import 'group_membership.dart';
import 'paged_query.dart';
class SearchResultOfGroupMembership{
	List<GroupMembership> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupMembership(
		List<GroupMembership> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupMembership fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupMembership(
				GroupMembership.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupMembership> fromList(List<dynamic> data){
		List<SearchResultOfGroupMembership> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMembership.fromJson(item));
    });
    return list;
	}
}