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

	static SearchResultOfPostResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfPostResponse(
				PostResponse.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfPostResponse> fromList(List<dynamic> data){
		List<SearchResultOfPostResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfPostResponse.fromJson(item));
    });
    return list;
	}
}