import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/fireteam_finder_option_value_flags.dart';

part 'destiny_fireteam_finder_option_value_definition.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionValueDefinition{	
	DestinyFireteamFinderOptionValueDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'value')
	int? value;
	
	@JsonKey(name:'flags')
	FireteamFinderOptionValueFlags? flags;

	factory DestinyFireteamFinderOptionValueDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionValueDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionValueDefinitionToJson(this);

	static Future<DestinyFireteamFinderOptionValueDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionValueDefinition>((json)=>DestinyFireteamFinderOptionValueDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}