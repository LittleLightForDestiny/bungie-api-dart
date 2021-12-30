import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_interaction_sack_entry_definition.g.dart';

/// Compare this sackType to the sack identifier in the DestinyInventoryItemDefinition.vendorSackType property of items. If they match, show this sack with this interaction.
@JsonSerializable()
class DestinyVendorInteractionSackEntryDefinition{	
	DestinyVendorInteractionSackEntryDefinition();

	factory DestinyVendorInteractionSackEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorInteractionSackEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorInteractionSackEntryDefinitionToJson(this);
	
	@JsonKey(name:'sackType')
	int? sackType;
}