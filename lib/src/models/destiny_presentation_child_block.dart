import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_presentation_node_type.dart';
import '../enums/destiny_presentation_display_style.dart';

part 'destiny_presentation_child_block.g.dart';

@JsonSerializable()
class DestinyPresentationChildBlock{
	
	DestinyPresentationChildBlock();

	factory DestinyPresentationChildBlock.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationChildBlockFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'presentationNodeType',unknownEnumValue:DestinyPresentationNodeType.ProtectedInvalidEnumValue)
	DestinyPresentationNodeType presentationNodeType;
	@JsonKey(name:'parentPresentationNodeHashes')
	List<int> parentPresentationNodeHashes;
	@JsonKey(name:'displayStyle',unknownEnumValue:DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue)
	DestinyPresentationDisplayStyle displayStyle;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationChildBlockToJson(this);
}