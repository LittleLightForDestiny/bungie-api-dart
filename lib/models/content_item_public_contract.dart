import 'general_user.dart';
import 'content_representation.dart';
import 'comment_summary.dart';

/**  */
class ContentItemPublicContract{
	
	/**  */
	String contentId;
	
	/**  */
	String cType;
	
	/**  */
	String cmsPath;
	
	/**  */
	String creationDate;
	
	/**  */
	String modifyDate;
	
	/**  */
	bool allowComments;
	
	/**  */
	bool hasAgeGate;
	
	/**  */
	int minimumAge;
	
	/**  */
	String ratingImagePath;
	
	/**  */
	GeneralUser author;
	
	/**  */
	bool autoEnglishPropertyFallback;
	
	/** Firehose content is really a collection of metadata and "properties", which are the potentially-but-not-strictly localizable data that comprises the meat of whatever content is being shown.
As Cole Porter would have crooned, "Anything Goes" with Firehose properties. They are most often strings, but they can theoretically be anything. They are JSON encoded, and could be JSON structures, simple strings, numbers etc... The Content Type of the item (cType) will describe the properties, and thus how they ought to be deserialized. */
	Map<String, Map<String, String>> properties;
	
	/**  */
	List<ContentRepresentation> representations;
	
	/**  */
	List<String> tags;
	
	/**  */
	CommentSummary commentSummary;
	ContentItemPublicContract(
		this.contentId,
		this.cType,
		this.cmsPath,
		this.creationDate,
		this.modifyDate,
		this.allowComments,
		this.hasAgeGate,
		this.minimumAge,
		this.ratingImagePath,
		this.author,
		this.autoEnglishPropertyFallback,
		this.properties,
		this.representations,
		this.tags,
		this.commentSummary,
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
				data['author'] != null ? GeneralUser.fromMap(data['author']) : null,
				data['autoEnglishPropertyFallback'],
				data['properties'] != null ? Map<String, Map<String, String>>.from(data['properties'].map((k, v)=>MapEntry(k, v))) : null,
				data['representations'] != null ? ContentRepresentation.fromList(data['representations']) : null,
				data['tags'] != null ? data['tags']?.cast<String>() ?? null : null,
				data['commentSummary'] != null ? CommentSummary.fromMap(data['commentSummary']) : null,
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