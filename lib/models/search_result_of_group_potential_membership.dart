import 'group_potential_membership.dart';
import 'paged_query.dart';
class SearchResultOfGroupPotentialMembership{
	List<GroupPotentialMembership> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupPotentialMembership(
		List<GroupPotentialMembership> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupPotentialMembership fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupPotentialMembership(
				GroupPotentialMembership.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupPotentialMembership> fromList(List<dynamic> data){
		List<SearchResultOfGroupPotentialMembership> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupPotentialMembership.fromJson(item));
    });
    return list;
	}
}