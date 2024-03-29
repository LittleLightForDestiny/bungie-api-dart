import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'general_user.dart';
import 'content_representation.dart';
import 'comment_summary.dart';

part 'content_item_public_contract.g.dart';

@JsonSerializable()
class ContentItemPublicContract{	
	ContentItemPublicContract();

	
	@JsonKey(name:'contentId')
	String? contentId;
	
	@JsonKey(name:'cType')
	String? cType;
	
	@JsonKey(name:'cmsPath')
	String? cmsPath;
	
	@JsonKey(name:'creationDate')
	String? creationDate;
	
	@JsonKey(name:'modifyDate')
	String? modifyDate;
	
	@JsonKey(name:'allowComments')
	bool? allowComments;
	
	@JsonKey(name:'hasAgeGate')
	bool? hasAgeGate;
	
	@JsonKey(name:'minimumAge')
	int? minimumAge;
	
	@JsonKey(name:'ratingImagePath')
	String? ratingImagePath;
	
	@JsonKey(name:'author')
	GeneralUser? author;
	
	@JsonKey(name:'autoEnglishPropertyFallback')
	bool? autoEnglishPropertyFallback;
	
	/// Firehose content is really a collection of metadata and "properties", which are the potentially-but-not-strictly localizable data that comprises the meat of whatever content is being shown.
	/// As Cole Porter would have crooned, "Anything Goes" with Firehose properties. They are most often strings, but they can theoretically be anything. They are JSON encoded, and could be JSON structures, simple strings, numbers etc... The Content Type of the item (cType) will describe the properties, and thus how they ought to be deserialized.
	@JsonKey(name:'properties')
	Map<String, Map<String, String>>? properties;
	
	@JsonKey(name:'representations')
	List<ContentRepresentation>? representations;
	
	/// NOTE: Tags will always be lower case.
	@JsonKey(name:'tags')
	List<String>? tags;
	
	@JsonKey(name:'commentSummary')
	CommentSummary? commentSummary;

	factory ContentItemPublicContract.fromJson(Map<String, dynamic> json) {
		return _$ContentItemPublicContractFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentItemPublicContractToJson(this);

	static Future<ContentItemPublicContract> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentItemPublicContract>((json)=>ContentItemPublicContract.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}