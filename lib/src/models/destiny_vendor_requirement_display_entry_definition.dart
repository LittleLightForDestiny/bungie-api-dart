import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_requirement_display_entry_definition.g.dart';

/// The localized properties of the requirementsDisplay, allowing information about the requirement or item being featured to be seen.
@JsonSerializable()
class DestinyVendorRequirementDisplayEntryDefinition{	
	DestinyVendorRequirementDisplayEntryDefinition();

	
	@JsonKey(name:'icon')
	String? icon;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'source')
	String? source;
	
	@JsonKey(name:'type')
	String? type;

	factory DestinyVendorRequirementDisplayEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorRequirementDisplayEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorRequirementDisplayEntryDefinitionToJson(this);

	static Future<DestinyVendorRequirementDisplayEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorRequirementDisplayEntryDefinition>((json)=>DestinyVendorRequirementDisplayEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}