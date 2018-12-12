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

	static SearchResultOfContentItemPublicContract fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfContentItemPublicContract(
				ContentItemPublicContract.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfContentItemPublicContract> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfContentItemPublicContract> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfContentItemPublicContract.fromMap(item));
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