import 'post_response.dart';
import 'paged_query.dart';
class SearchResultOfPostResponse{
	List<PostResponse> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfPostResponse(
		List<PostResponse> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfPostResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfPostResponse(
				PostResponse.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfPostResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfPostResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfPostResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = this.results.map((item)=>item.toMap()).toList();
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query.toMap();
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}