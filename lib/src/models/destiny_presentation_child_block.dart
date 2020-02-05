import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_presentation_node_type.dart';
import '../enums/destiny_presentation_display_style.dart';

part 'destiny_presentation_child_block.g.dart';

@JsonSerializable()
class DestinyPresentationChildBlock{
	
	DestinyPresentationChildBlock();

	factory DestinyPresentationChildBlock.fromJson(Map<String, dynamic> json) => _$DestinyPresentationChildBlockFromJson(json);

	@JsonKey(name:'presentationNodeType',unknownEnumValue:DestinyPresentationNodeType.Default)
	DestinyPresentationNodeType presentationNodeType;
	@JsonKey(name:'parentPresentationNodeHashes')
	List<int> parentPresentationNodeHashes;
	@JsonKey(name:'displayStyle',unknownEnumValue:DestinyPresentationDisplayStyle.Category)
	DestinyPresentationDisplayStyle displayStyle;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationChildBlockToJson(this);
}