import 'package:json_annotation/json_annotation.dart';

import 'destiny_presentation_node_requirements_block.dart';

part 'destiny_collectible_state_block.g.dart';

@JsonSerializable()
class DestinyCollectibleStateBlock{	
	DestinyCollectibleStateBlock();

	factory DestinyCollectibleStateBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectibleStateBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleStateBlockToJson(this);
	
	@JsonKey(name:'obscuredOverrideItemHash')
	int? obscuredOverrideItemHash;
	
	/// Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren't met.
	@JsonKey(name:'requirements')
	DestinyPresentationNodeRequirementsBlock? requirements;
}