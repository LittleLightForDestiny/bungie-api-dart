import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_child_block.g.dart';

@JsonSerializable()
class DestinyPresentationChildBlock{
	
	DestinyPresentationChildBlock();

	factory DestinyPresentationChildBlock.fromJson(Map<String, dynamic> json) => _$DestinyPresentationChildBlockFromJson(json);

	@JsonKey(name:'presentationNodeType')
	int presentationNodeType;
	@JsonKey(name:'parentPresentationNodeHashes')
	List<int> parentPresentationNodeHashes;
	@JsonKey(name:'displayStyle')
	int displayStyle;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationChildBlockToJson(this);
}