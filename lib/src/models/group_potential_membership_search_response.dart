import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_potential_membership.dart';
import 'paged_query.dart';

part 'group_potential_membership_search_response.g.dart';

@JsonSerializable()
class GroupPotentialMembershipSearchResponse{	
	GroupPotentialMembershipSearchResponse();

	
	@JsonKey(name:'results')
	List<GroupPotentialMembership>? results;
	
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

	factory GroupPotentialMembershipSearchResponse.fromJson(Map<String, dynamic> json) {
		return _$GroupPotentialMembershipSearchResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupPotentialMembershipSearchResponseToJson(this);

	static Future<GroupPotentialMembershipSearchResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupPotentialMembershipSearchResponse>((json)=>GroupPotentialMembershipSearchResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}