import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/fireteam_finder_option_display_format.dart';
import '../enums/fireteam_finder_option_value_provider_type.dart';
import 'destiny_fireteam_finder_option_value_definition.dart';

part 'destiny_fireteam_finder_option_values.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionValues{	
	DestinyFireteamFinderOptionValues();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'optionalNull')
	DestinyDisplayPropertiesDefinition? optionalNull;
	
	@JsonKey(name:'optionalFormatString')
	String? optionalFormatString;
	
	@JsonKey(name:'displayFormatType',fromJson:decodeFireteamFinderOptionDisplayFormat,toJson:encodeFireteamFinderOptionDisplayFormat)
	FireteamFinderOptionDisplayFormat? displayFormatType;
	
	@JsonKey(name:'type',fromJson:decodeFireteamFinderOptionValueProviderType,toJson:encodeFireteamFinderOptionValueProviderType)
	FireteamFinderOptionValueProviderType? type;
	
	@JsonKey(name:'valueDefinitions')
	List<DestinyFireteamFinderOptionValueDefinition>? valueDefinitions;

	factory DestinyFireteamFinderOptionValues.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionValuesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionValuesToJson(this);

	static Future<DestinyFireteamFinderOptionValues> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionValues>((json)=>DestinyFireteamFinderOptionValues.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}