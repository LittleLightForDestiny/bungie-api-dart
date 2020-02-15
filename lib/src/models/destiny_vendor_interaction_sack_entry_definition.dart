import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_interaction_sack_entry_definition.g.dart';

/// Compare this sackType to the sack identifier in the DestinyInventoryItemDefinition.vendorSackType property of items. If they match, show this sack with this interaction.
@JsonSerializable()
class DestinyVendorInteractionSackEntryDefinition{
	
	DestinyVendorInteractionSackEntryDefinition();

	factory DestinyVendorInteractionSackEntryDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyVendorInteractionSackEntryDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'sackType')
	int sackType;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorInteractionSackEntryDefinitionToJson(this);
}