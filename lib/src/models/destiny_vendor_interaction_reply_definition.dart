import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_vendor_interaction_reward_selection.dart';
import '../enums/destiny_vendor_reply_type.dart';

part 'destiny_vendor_interaction_reply_definition.g.dart';

/// When the interaction is replied to, Reward sites will fire and items potentially selected based on whether the given unlock expression is TRUE.
/// You can potentially choose one from multiple replies when replying to an interaction: this is how you get either&#x2F;or rewards from vendors.
@JsonSerializable()
class DestinyVendorInteractionReplyDefinition{
	
	DestinyVendorInteractionReplyDefinition();

	factory DestinyVendorInteractionReplyDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorInteractionReplyDefinitionFromJson(json);

	/// The rewards granted upon responding to the vendor.
	@JsonKey(name:'itemRewardsSelection',unknownEnumValue:DestinyVendorInteractionRewardSelection.None)
	DestinyVendorInteractionRewardSelection itemRewardsSelection;
	/// The localized text for the reply.
	@JsonKey(name:'reply')
	String reply;
	/// An enum indicating the type of reply being made.
	@JsonKey(name:'replyType',unknownEnumValue:DestinyVendorReplyType.Accept)
	DestinyVendorReplyType replyType;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorInteractionReplyDefinitionToJson(this);
}