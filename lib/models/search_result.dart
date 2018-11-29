import 'paged_query.dart';
class SearchResult{
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResult(
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResult fromJson(Map<String, dynamic> data){
		return new SearchResult(
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResult> fromList(List<dynamic> data){
		List<SearchResult> list = new List();
    data.forEach((item) {
      list.add(SearchResult.fromJson(item));
    });
    return list;
	}
}