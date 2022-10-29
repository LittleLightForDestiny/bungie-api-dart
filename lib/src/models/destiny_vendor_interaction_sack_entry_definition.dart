import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_interaction_sack_entry_definition.g.dart';

/// Compare this sackType to the sack identifier in the DestinyInventoryItemDefinition.vendorSackType property of items. If they match, show this sack with this interaction.
@JsonSerializable()
class DestinyVendorInteractionSackEntryDefinition{	
	DestinyVendorInteractionSackEntryDefinition();

	
	@JsonKey(name:'sackType')
	int? sackType;

	factory DestinyVendorInteractionSackEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorInteractionSackEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorInteractionSackEntryDefinitionToJson(this);

	static Future<DestinyVendorInteractionSackEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorInteractionSackEntryDefinition>((json)=>DestinyVendorInteractionSackEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}