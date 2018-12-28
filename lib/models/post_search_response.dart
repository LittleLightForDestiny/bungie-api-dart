import 'post_response.dart';
import 'general_user.dart';
import 'group_response.dart';
import 'tag_response.dart';
import 'poll_response.dart';
import 'forum_recruitment_detail.dart';
import 'paged_query.dart';

/*  */
class PostSearchResponse{
	
	/*  */
	List<PostResponse> relatedPosts;
	
	/*  */
	List<GeneralUser> authors;
	
	/*  */
	List<GroupResponse> groups;
	
	/*  */
	List<TagResponse> searchedTags;
	
	/*  */
	List<PollResponse> polls;
	
	/*  */
	List<ForumRecruitmentDetail> recruitmentDetails;
	
	/*  */
	int availablePages;
	
	/*  */
	List<PostResponse> results;
	
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
	PostSearchResponse(
		this.relatedPosts,
		this.authors,
		this.groups,
		this.searchedTags,
		this.polls,
		this.recruitmentDetails,
		this.availablePages,
		this.results,
		this.totalResults,
		this.hasMore,
		this.query,
		this.replacementContinuationToken,
		this.useTotalResults,
	);

	static PostSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PostSearchResponse(
				data['relatedPosts'] != null ? PostResponse.fromList(data['relatedPosts']) : null,
				data['authors'] != null ? GeneralUser.fromList(data['authors']) : null,
				data['groups'] != null ? GroupResponse.fromList(data['groups']) : null,
				data['searchedTags'] != null ? TagResponse.fromList(data['searchedTags']) : null,
				data['polls'] != null ? PollResponse.fromList(data['polls']) : null,
				data['recruitmentDetails'] != null ? ForumRecruitmentDetail.fromList(data['recruitmentDetails']) : null,
				data['availablePages'],
				data['results'] != null ? PostResponse.fromList(data['results']) : null,
				data['totalResults'],
				data['hasMore'],
				data['query'] != null ? PagedQuery.fromMap(data['query']) : null,
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<PostSearchResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PostSearchResponse> list = new List();
    data.forEach((item) {
      list.add(PostSearchResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['relatedPosts'] = this.relatedPosts.map((item)=>item.toMap()).toList();
			data['authors'] = this.authors.map((item)=>item.toMap()).toList();
			data['groups'] = this.groups.map((item)=>item.toMap()).toList();
			data['searchedTags'] = this.searchedTags.map((item)=>item.toMap()).toList();
			data['polls'] = this.polls.map((item)=>item.toMap()).toList();
			data['recruitmentDetails'] = this.recruitmentDetails.map((item)=>item.toMap()).toList();
			data['availablePages'] = this.availablePages;
			data['results'] = this.results.map((item)=>item.toMap()).toList();
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query.toMap();
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}