import 'group_member.dart';
import 'paged_query.dart';
class SearchResultOfGroupMember{
	List<GroupMember> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupMember(
		List<GroupMember> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupMember fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupMember(
				GroupMember.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupMember> fromList(List<dynamic> data){
		List<SearchResultOfGroupMember> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMember.fromJson(item));
    });
    return list;
	}
}