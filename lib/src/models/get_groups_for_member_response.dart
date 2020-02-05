import 'package:json_annotation/json_annotation.dart';

import 'group_membership.dart';
import 'paged_query.dart';

part 'get_groups_for_member_response.g.dart';

@JsonSerializable()
class GetGroupsForMemberResponse{
	
	GetGroupsForMemberResponse();

	factory GetGroupsForMemberResponse.fromJson(Map<String, dynamic> json) => _$GetGroupsForMemberResponseFromJson(json);

	/// A convenience property that indicates if every membership this user has that is a part of this group are part of an account that is considered inactive - for example, overridden accounts in Cross Save.
	///  The key is the Group ID for the group being checked, and the value is true if the users' memberships for that group are all inactive.
	@JsonKey(name:'areAllMembershipsInactive')
	Map<String, bool> areAllMembershipsInactive;
	@JsonKey(name:'results')
	List<GroupMembership> results;
	@JsonKey(name:'totalResults')
	int totalResults;
	@JsonKey(name:'hasMore')
	bool hasMore;
	@JsonKey(name:'query')
	PagedQuery query;
	@JsonKey(name:'replacementContinuationToken')
	String replacementContinuationToken;
	/// If useTotalResults is true, then totalResults represents an accurate count.
	/// If False, it does not, and may be estimated/only the size of the current page.
	/// Either way, you should probably always only trust hasMore.
	/// This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one.
	@JsonKey(name:'useTotalResults')
	bool useTotalResults;

	
	
	Map<String, dynamic> toJson() => _$GetGroupsForMemberResponseToJson(this);
}