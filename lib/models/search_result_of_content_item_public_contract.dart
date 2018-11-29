import 'content_item_public_contract.dart';
import 'paged_query.dart';
class SearchResultOfContentItemPublicContract{
	List<ContentItemPublicContract> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfContentItemPublicContract(
		List<ContentItemPublicContract> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfContentItemPublicContract fromJson(Map<String, dynamic> data){
		return new SearchResultOfContentItemPublicContract(
				ContentItemPublicContract.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfContentItemPublicContract> fromList(List<dynamic> data){
		List<SearchResultOfContentItemPublicContract> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfContentItemPublicContract.fromJson(item));
    });
    return list;
	}
}