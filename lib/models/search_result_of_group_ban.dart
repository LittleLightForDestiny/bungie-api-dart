import 'group_ban.dart';
import 'paged_query.dart';
class SearchResultOfGroupBan{
	List<GroupBan> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupBan(
		List<GroupBan> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupBan fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupBan(
				GroupBan.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupBan> fromList(List<dynamic> data){
		List<SearchResultOfGroupBan> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupBan.fromJson(item));
    });
    return list;
	}
}