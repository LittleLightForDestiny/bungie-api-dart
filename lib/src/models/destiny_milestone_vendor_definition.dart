
import 'package:json_annotation/json_annotation.dart';
part 'destiny_milestone_vendor_definition.g.dart';

/// If the Milestone or a component has vendors whose inventories could&#x2F;should be displayed that are relevant to it, this will return the vendor in question. 
/// It also contains information we need to determine whether that vendor is actually relevant at the moment, given the user&#39;s current state.
@JsonSerializable()
class DestinyMilestoneVendorDefinition {

	/// The hash of the vendor whose wares should be shown as associated with the Milestone.
	@JsonKey(name:'vendorHash')
	int vendorHash;
	DestinyMilestoneVendorDefinition();

	factory DestinyMilestoneVendorDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMilestoneVendorDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneVendorDefinitionToJson(this);
}
