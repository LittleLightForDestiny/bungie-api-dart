import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'content_item_public_contract.dart';
import 'paged_query.dart';

part 'search_result_of_content_item_public_contract.g.dart';

@JsonSerializable()
class SearchResultOfContentItemPublicContract{	
	SearchResultOfContentItemPublicContract();

	
	@JsonKey(name:'results')
	List<ContentItemPublicContract>? results;
	
	@JsonKey(name:'totalResults')
	int? totalResults;
	
	@JsonKey(name:'hasMore')
	bool? hasMore;
	
	@JsonKey(name:'query')
	PagedQuery? query;
	
	@JsonKey(name:'replacementContinuationToken')
	String? replacementContinuationToken;
	
	/// If useTotalResults is true, then totalResults represents an accurate count.
	/// If False, it does not, and may be estimated/only the size of the current page.
	/// Either way, you should probably always only trust hasMore.
	/// This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one.
	@JsonKey(name:'useTotalResults')
	bool? useTotalResults;

	factory SearchResultOfContentItemPublicContract.fromJson(Map<String, dynamic> json) {
		return _$SearchResultOfContentItemPublicContractFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SearchResultOfContentItemPublicContractToJson(this);

	static Future<SearchResultOfContentItemPublicContract> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SearchResultOfContentItemPublicContract>((json)=>SearchResultOfContentItemPublicContract.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}