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

	static SearchResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResult(
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResult> list = new List();
    data.forEach((item) {
      list.add(SearchResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['totalResults'] = totalResults;
			data['hasMore'] = hasMore;
			data['query'] = query.toMap();
			data['replacementContinuationToken'] = replacementContinuationToken;
			data['useTotalResults'] = useTotalResults;
	}
}