import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/fireteam_finder_code_option_type.dart';
import '../enums/fireteam_finder_option_availability.dart';
import '../enums/fireteam_finder_option_visibility.dart';
import 'destiny_fireteam_finder_option_creator_settings.dart';
import 'destiny_fireteam_finder_option_searcher_settings.dart';
import 'destiny_fireteam_finder_option_values.dart';

part 'destiny_fireteam_finder_option_definition.g.dart';

@JsonSerializable()
class DestinyFireteamFinderOptionDefinition{	
	DestinyFireteamFinderOptionDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'descendingSortPriority')
	int? descendingSortPriority;
	
	@JsonKey(name:'groupHash')
	int? groupHash;
	
	@JsonKey(name:'codeOptionType',fromJson:decodeFireteamFinderCodeOptionType,toJson:encodeFireteamFinderCodeOptionType)
	FireteamFinderCodeOptionType? codeOptionType;
	
	@JsonKey(name:'availability')
	FireteamFinderOptionAvailability? availability;
	
	@JsonKey(name:'visibility',fromJson:decodeFireteamFinderOptionVisibility,toJson:encodeFireteamFinderOptionVisibility)
	FireteamFinderOptionVisibility? visibility;
	
	@JsonKey(name:'uiDisplayStyle')
	String? uiDisplayStyle;
	
	@JsonKey(name:'creatorSettings')
	DestinyFireteamFinderOptionCreatorSettings? creatorSettings;
	
	@JsonKey(name:'searcherSettings')
	DestinyFireteamFinderOptionSearcherSettings? searcherSettings;
	
	@JsonKey(name:'values')
	DestinyFireteamFinderOptionValues? values;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyFireteamFinderOptionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyFireteamFinderOptionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyFireteamFinderOptionDefinitionToJson(this);

	static Future<DestinyFireteamFinderOptionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyFireteamFinderOptionDefinition>((json)=>DestinyFireteamFinderOptionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}