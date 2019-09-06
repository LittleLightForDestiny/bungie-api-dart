import 'post_response.dart';
import 'general_user.dart';
import 'group_response.dart';
import 'tag_response.dart';
import 'poll_response.dart';
import 'forum_recruitment_detail.dart';
import 'paged_query.dart';

import 'package:json_annotation/json_annotation.dart';
part 'post_search_response.g.dart';

@JsonSerializable()
class PostSearchResponse {

	@JsonKey(name:'relatedPosts')
	List<PostResponse> relatedPosts;

	@JsonKey(name:'authors')
	List<GeneralUser> authors;

	@JsonKey(name:'groups')
	List<GroupResponse> groups;

	@JsonKey(name:'searchedTags')
	List<TagResponse> searchedTags;

	@JsonKey(name:'polls')
	List<PollResponse> polls;

	@JsonKey(name:'recruitmentDetails')
	List<ForumRecruitmentDetail> recruitmentDetails;

	@JsonKey(name:'availablePages')
	int availablePages;

	@JsonKey(name:'results')
	List<PostResponse> results;

	@JsonKey(name:'totalResults')
	int totalResults;

	@JsonKey(name:'hasMore')
	bool hasMore;

	@JsonKey(name:'query')
	PagedQuery query;

	@JsonKey(name:'replacementContinuationToken')
	String replacementContinuationToken;

	/// If useTotalResults is true, then totalResults represents an accurate count.
	/// If False, it does not, and may be estimated&#x2F;only the size of the current page.
	/// Either way, you should probably always only trust hasMore.
	/// This is a long-held historical throwback to when we used to do paging with known total results. Those queries toasted our database, and we were left to hastily alter our endpoints and create backward- compatible shims, of which useTotalResults is one.
	@JsonKey(name:'useTotalResults')
	bool useTotalResults;
	PostSearchResponse();

	factory PostSearchResponse.fromJson(Map<String, dynamic> json) => _$PostSearchResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$PostSearchResponseToJson(this);
}
