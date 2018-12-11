import 'general_user.dart';
import 'content_representation.dart';
import 'comment_summary.dart';
class ContentItemPublicContract{
	int contentId;
	String cType;
	String cmsPath;
	String creationDate;
	String modifyDate;
	bool allowComments;
	bool hasAgeGate;
	int minimumAge;
	String ratingImagePath;
	GeneralUser author;
	bool autoEnglishPropertyFallback;
	Map<Map<String, String>, dynamic> properties;
	List<ContentRepresentation> representations;
	List<String> tags;
	CommentSummary commentSummary;
	ContentItemPublicContract(
		int this.contentId,
		String this.cType,
		String this.cmsPath,
		String this.creationDate,
		String this.modifyDate,
		bool this.allowComments,
		bool this.hasAgeGate,
		int this.minimumAge,
		String this.ratingImagePath,
		GeneralUser this.author,
		bool this.autoEnglishPropertyFallback,
		Map<Map<String, String>, dynamic> this.properties,
		List<ContentRepresentation> this.representations,
		List<String> this.tags,
		CommentSummary this.commentSummary,
	);

	static ContentItemPublicContract fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentItemPublicContract(
				data['contentId'],
				data['cType'],
				data['cmsPath'],
				data['creationDate'],
				data['modifyDate'],
				data['allowComments'],
				data['hasAgeGate'],
				data['minimumAge'],
				data['ratingImagePath'],
				GeneralUser.fromJson(data['author']),
				data['autoEnglishPropertyFallback'],
				data['properties'],
				ContentRepresentation.fromList(data['representations']),
				data['tags'],
				CommentSummary.fromJson(data['commentSummary']),
		);
	}

	static List<ContentItemPublicContract> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentItemPublicContract> list = new List();
    data.forEach((item) {
      list.add(ContentItemPublicContract.fromJson(item));
    });
    return list;
	}
}