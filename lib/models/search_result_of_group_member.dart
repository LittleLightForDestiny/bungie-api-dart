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

	static SearchResultOfGroupMember fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfGroupMember(
				GroupMember.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupMember> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfGroupMember> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMember.fromMap(item));
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