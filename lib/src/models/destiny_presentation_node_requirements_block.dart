import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_requirements_block.g.dart';

/// Presentation nodes can be restricted by various requirements. This defines the rules of those requirements, and the message(s) to be shown if these requirements aren&#39;t met.
@JsonSerializable()
class DestinyPresentationNodeRequirementsBlock{	
	DestinyPresentationNodeRequirementsBlock();

	
	/// If this node is not accessible due to Entitlements (for instance, you don't own the required game expansion), this is the message to show.
	@JsonKey(name:'entitlementUnavailableMessage')
	String? entitlementUnavailableMessage;

	factory DestinyPresentationNodeRequirementsBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeRequirementsBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeRequirementsBlockToJson(this);

	static Future<DestinyPresentationNodeRequirementsBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeRequirementsBlock>((json)=>DestinyPresentationNodeRequirementsBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}