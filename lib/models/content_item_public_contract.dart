import 'general_user.dart';
import 'content_representation.dart';
import 'comment_summary.dart';
class ContentItemPublicContract{
	String contentId;
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
		String this.contentId,
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

	static ContentItemPublicContract fromMap(Map<String, dynamic> data){
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
				GeneralUser.fromMap(data['author']),
				data['autoEnglishPropertyFallback'],
				data['properties'],
				ContentRepresentation.fromList(data['representations']),
				data['tags'],
				CommentSummary.fromMap(data['commentSummary']),
		);
	}

	static List<ContentItemPublicContract> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentItemPublicContract> list = new List();
    data.forEach((item) {
      list.add(ContentItemPublicContract.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['contentId'] = this.contentId;
			data['cType'] = this.cType;
			data['cmsPath'] = this.cmsPath;
			data['creationDate'] = this.creationDate;
			data['modifyDate'] = this.modifyDate;
			data['allowComments'] = this.allowComments;
			data['hasAgeGate'] = this.hasAgeGate;
			data['minimumAge'] = this.minimumAge;
			data['ratingImagePath'] = this.ratingImagePath;
			data['author'] = this.author.toMap();
			data['autoEnglishPropertyFallback'] = this.autoEnglishPropertyFallback;
			data['properties'] = this.properties;
			data['representations'] = this.representations.map((item)=>item.toMap()).toList();
			data['tags'] = this.tags;
			data['commentSummary'] = this.commentSummary.toMap();
		return data;
	}
}