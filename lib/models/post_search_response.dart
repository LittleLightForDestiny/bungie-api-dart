import 'post_response.dart';
import 'general_user.dart';
import 'group_response.dart';
import 'tag_response.dart';
import 'poll_response.dart';
import 'forum_recruitment_detail.dart';
import 'post_response.dart';
import 'paged_query.dart';
class PostSearchResponse{
	List<PostResponse> relatedPosts;
	List<GeneralUser> authors;
	List<GroupResponse> groups;
	List<TagResponse> searchedTags;
	List<PollResponse> polls;
	List<ForumRecruitmentDetail> recruitmentDetails;
	int availablePages;
	List<PostResponse> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	PostSearchResponse(
		List<PostResponse> this.relatedPosts,
		List<GeneralUser> this.authors,
		List<GroupResponse> this.groups,
		List<TagResponse> this.searchedTags,
		List<PollResponse> this.polls,
		List<ForumRecruitmentDetail> this.recruitmentDetails,
		int this.availablePages,
		List<PostResponse> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static PostSearchResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PostSearchResponse(
				PostResponse.fromList(data['relatedPosts']),
				GeneralUser.fromList(data['authors']),
				GroupResponse.fromList(data['groups']),
				TagResponse.fromList(data['searchedTags']),
				PollResponse.fromList(data['polls']),
				ForumRecruitmentDetail.fromList(data['recruitmentDetails']),
				data['availablePages'],
				PostResponse.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
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
			data['relatedPosts'] = this.relatedPosts.map((item)=>item.toMap());
			data['authors'] = this.authors.map((item)=>item.toMap());
			data['groups'] = this.groups.map((item)=>item.toMap());
			data['searchedTags'] = this.searchedTags.map((item)=>item.toMap());
			data['polls'] = this.polls.map((item)=>item.toMap());
			data['recruitmentDetails'] = this.recruitmentDetails.map((item)=>item.toMap());
			data['availablePages'] = this.availablePages;
			data['results'] = this.results.map((item)=>item.toMap());
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query.toMap();
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}