import 'general_user.dart';
import 'content_representation.dart';
import 'comment_summary.dart';

import 'package:json_annotation/json_annotation.dart';
part 'content_item_public_contract.g.dart';

@JsonSerializable()
class ContentItemPublicContract {

	@JsonKey(name:'contentId')
	String contentId;

	@JsonKey(name:'cType')
	String cType;

	@JsonKey(name:'cmsPath')
	String cmsPath;

	@JsonKey(name:'creationDate')
	String creationDate;

	@JsonKey(name:'modifyDate')
	String modifyDate;

	@JsonKey(name:'allowComments')
	bool allowComments;

	@JsonKey(name:'hasAgeGate')
	bool hasAgeGate;

	@JsonKey(name:'minimumAge')
	int minimumAge;

	@JsonKey(name:'ratingImagePath')
	String ratingImagePath;

	@JsonKey(name:'author')
	GeneralUser author;

	@JsonKey(name:'autoEnglishPropertyFallback')
	bool autoEnglishPropertyFallback;

	/// Firehose content is really a collection of metadata and &quot;properties&quot;, which are the potentially-but-not-strictly localizable data that comprises the meat of whatever content is being shown.
	/// As Cole Porter would have crooned, &quot;Anything Goes&quot; with Firehose properties. They are most often strings, but they can theoretically be anything. They are JSON encoded, and could be JSON structures, simple strings, numbers etc... The Content Type of the item (cType) will describe the properties, and thus how they ought to be deserialized.
	@JsonKey(name:'properties')
	Map<String, Map<String, String>> properties;

	@JsonKey(name:'representations')
	List<ContentRepresentation> representations;

	@JsonKey(name:'tags')
	List<String> tags;

	@JsonKey(name:'commentSummary')
	CommentSummary commentSummary;
	ContentItemPublicContract();

	factory ContentItemPublicContract.fromJson(Map<String, dynamic> json) => _$ContentItemPublicContractFromJson(json);
	
	Map<String, dynamic> toJson() => _$ContentItemPublicContractToJson(this);
}
