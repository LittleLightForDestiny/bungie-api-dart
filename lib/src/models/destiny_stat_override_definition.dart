import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_stat_override_definition.g.dart';

/// Stat Groups (DestinyStatGroupDefinition) has the ability to override the localized text associated with stats that are to be shown on the items with which they are associated.
/// This defines a specific overridden stat. You could theoretically check these before rendering your stat UI, and for each stat that has an override show these displayProperties instead of those on the DestinyStatDefinition.
/// Or you could be like us, and skip that for now because the game has yet to actually use this feature. But know that it&#39;s here, waiting for a resilliant young designer to take up the mantle and make us all look foolish by showing the wrong name for stats.
/// Note that, if this gets used, the override will apply only to items using the overriding Stat Group. Other items will still show the default stat&#39;s name&#x2F;description.
@JsonSerializable()
class DestinyStatOverrideDefinition {

	/// The hash identifier of the stat whose display properties are being overridden.
	@JsonKey(name:'statHash')
	int statHash;

	/// The display properties to show instead of the base DestinyStatDefinition display properties.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyStatOverrideDefinition();

	factory DestinyStatOverrideDefinition.fromJson(Map<String, dynamic> json) => _$DestinyStatOverrideDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyStatOverrideDefinitionToJson(this);
}
