import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';
import '../enums/destiny_race.dart';
import '../enums/destiny_class.dart';
import '../enums/destiny_gender.dart';
import 'destiny_color.dart';
import 'destiny_progression.dart';

part 'destiny_character_component.g.dart';

/// This component contains base properties of the character. You&#39;ll probably want to always request this component, but hey you do you.
@JsonSerializable()
class DestinyCharacterComponent{	
	DestinyCharacterComponent();

	
	/// Every Destiny Profile has a membershipId. This is provided on the character as well for convenience.
	@JsonKey(name:'membershipId')
	String? membershipId;
	
	/// membershipType tells you the platform on which the character plays. Examine the BungieMembershipType enumeration for possible values.
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
	
	/// The unique identifier for the character.
	@JsonKey(name:'characterId')
	String? characterId;
	
	/// The last date that the user played Destiny.
	@JsonKey(name:'dateLastPlayed')
	String? dateLastPlayed;
	
	/// If the user is currently playing, this is how long they've been playing.
	@JsonKey(name:'minutesPlayedThisSession')
	String? minutesPlayedThisSession;
	
	/// If this value is 525,600, then they played Destiny for a year. Or they're a very dedicated Rent fan. Note that this includes idle time, not just time spent actually in activities shooting things.
	@JsonKey(name:'minutesPlayedTotal')
	String? minutesPlayedTotal;
	
	/// The user's calculated "Light Level". Light level is an indicator of your power that mostly matters in the end game, once you've reached the maximum character level: it's a level that's dependent on the average Attack/Defense power of your items.
	@JsonKey(name:'light')
	int? light;
	
	/// Your character's stats, such as Agility, Resilience, etc... *not* historical stats.
	/// You'll have to call a different endpoint for those.
	@JsonKey(name:'stats')
	Map<String, int>? stats;
	
	/// Use this hash to look up the character's DestinyRaceDefinition.
	@JsonKey(name:'raceHash')
	int? raceHash;
	
	/// Use this hash to look up the character's DestinyGenderDefinition.
	@JsonKey(name:'genderHash')
	int? genderHash;
	
	/// Use this hash to look up the character's DestinyClassDefinition.
	@JsonKey(name:'classHash')
	int? classHash;
	
	/// Mostly for historical purposes at this point, this is an enumeration for the character's race.
	/// It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove.
	@JsonKey(name:'raceType',fromJson:decodeDestinyRace,toJson:encodeDestinyRace)
	DestinyRace? raceType;
	
	/// Mostly for historical purposes at this point, this is an enumeration for the character's class.
	/// It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove.
	@JsonKey(name:'classType',fromJson:decodeDestinyClass,toJson:encodeDestinyClass)
	DestinyClass? classType;
	
	/// Mostly for historical purposes at this point, this is an enumeration for the character's Gender.
	/// It'll be preferable in the general case to look up the related definition: but for some people this was too convenient to remove. And yeah, it's an enumeration and not a boolean. Fight me.
	@JsonKey(name:'genderType',fromJson:decodeDestinyGender,toJson:encodeDestinyGender)
	DestinyGender? genderType;
	
	/// A shortcut path to the user's currently equipped emblem image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition.
	@JsonKey(name:'emblemPath')
	String? emblemPath;
	
	/// A shortcut path to the user's currently equipped emblem background image. If you're just showing summary info for a user, this is more convenient than examining their equipped emblem and looking up the definition.
	@JsonKey(name:'emblemBackgroundPath')
	String? emblemBackgroundPath;
	
	/// The hash of the currently equipped emblem for the user. Can be used to look up the DestinyInventoryItemDefinition.
	@JsonKey(name:'emblemHash')
	int? emblemHash;
	
	/// A shortcut for getting the background color of the user's currently equipped emblem without having to do a DestinyInventoryItemDefinition lookup.
	@JsonKey(name:'emblemColor')
	DestinyColor? emblemColor;
	
	/// The progression that indicates your character's level. Not their light level, but their character level: you know, the thing you max out a couple hours in and then ignore for the sake of light level.
	@JsonKey(name:'levelProgression')
	DestinyProgression? levelProgression;
	
	/// The "base" level of your character, not accounting for any light level.
	@JsonKey(name:'baseCharacterLevel')
	int? baseCharacterLevel;
	
	/// A number between 0 and 100, indicating the whole and fractional % remaining to get to the next character level.
	@JsonKey(name:'percentToNextLevel')
	double? percentToNextLevel;
	
	/// If this Character has a title assigned to it, this is the identifier of the DestinyRecordDefinition that has that title information.
	@JsonKey(name:'titleRecordHash')
	int? titleRecordHash;

	factory DestinyCharacterComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterComponentToJson(this);

	static Future<DestinyCharacterComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCharacterComponent>((json)=>DestinyCharacterComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}