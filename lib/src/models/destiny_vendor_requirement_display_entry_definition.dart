
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_requirement_display_entry_definition.g.dart';

/// The localized properties of the requirementsDisplay, allowing information about the requirement or item being featured to be seen.
@JsonSerializable()
class DestinyVendorRequirementDisplayEntryDefinition {

	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'source')
	String source;

	@JsonKey(name:'type')
	String type;
	DestinyVendorRequirementDisplayEntryDefinition();

	factory DestinyVendorRequirementDisplayEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorRequirementDisplayEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorRequirementDisplayEntryDefinitionToJson(this);
}
