import 'group_v2_card.dart';
import 'paged_query.dart';

/*  */
class GroupSearchResponse{
	
	/*  */
	List<GroupV2Card> results;
	
	/*  */
	int totalResults;
	
	/*  */
	bool hasMore;
	
	/*  */
	PagedQuery query;
	
	/*  */
	String replacementContinuationToken;
	
	/* If useTotalResults is true, then totalResults represents an accurate count.
If False, it does not, and may be estimated/only the size of the current page.
Either way, you should probably always only trust hasMore.
This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one. */
	bool useTotalResults;
	GroupSearchResponse(
		this.results,
		this.totalResults,
		this.hasMore,
		this.query,
		this.replacementContinuationToken,
		this.useTotalResults,
	);

	static GroupSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupSearchResponse(
				data['results'] != null ? GroupV2Card.fromList(data['results']) : null,
				data['totalResults'],
				data['hasMore'],
				data['query'] != null ? PagedQuery.fromMap(data['query']) : null,
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<GroupSearchResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupSearchResponse> list = new List();
    data.forEach((item) {
      list.add(GroupSearchResponse.fromMap(item));
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