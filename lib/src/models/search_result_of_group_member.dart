import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_member.dart';
import 'paged_query.dart';

part 'search_result_of_group_member.g.dart';

@JsonSerializable()
class SearchResultOfGroupMember{	
	SearchResultOfGroupMember();

	
	@JsonKey(name:'results')
	List<GroupMember>? results;
	
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

	factory SearchResultOfGroupMember.fromJson(Map<String, dynamic> json) {
		return _$SearchResultOfGroupMemberFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SearchResultOfGroupMemberToJson(this);

	static Future<SearchResultOfGroupMember> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SearchResultOfGroupMember>((json)=>SearchResultOfGroupMember.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}