import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_activity_mode_type.dart';
import '../enums/destiny_activity_mode_category.dart';

part 'destiny_activity_mode_definition.g.dart';

/// This definition represents an &quot;Activity Mode&quot; as it exists in the Historical Stats endpoints. An individual Activity Mode represents a collection of activities that are played in a certain way. For example, Nightfall Strikes are part of a &quot;Nightfall&quot; activity mode, and any activities played as the PVP mode &quot;Clash&quot; are part of the &quot;Clash activity mode.
/// Activity modes are nested under each other in a hierarchy, so that if you ask for - for example - &quot;AllPvP&quot;, you will get any PVP activities that the user has played, regardless of what specific PVP mode was being played.
@JsonSerializable()
class DestinyActivityModeDefinition{	
	DestinyActivityModeDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// If this activity mode has a related PGCR image, this will be the path to said image.
	@JsonKey(name:'pgcrImage')
	String? pgcrImage;
	
	/// The Enumeration value for this Activity Mode. Pass this identifier into Stats endpoints to get aggregate stats for this mode.
	@JsonKey(name:'modeType',fromJson:decodeDestinyActivityModeType,toJson:encodeDestinyActivityModeType)
	DestinyActivityModeType? modeType;
	
	/// The type of play being performed in broad terms (PVP, PVE)
	@JsonKey(name:'activityModeCategory',fromJson:decodeDestinyActivityModeCategory,toJson:encodeDestinyActivityModeCategory)
	DestinyActivityModeCategory? activityModeCategory;
	
	/// If True, this mode has oppositional teams fighting against each other rather than "Free-For-All" or Co-operative modes of play.
	/// Note that Aggregate modes are never marked as team based, even if they happen to be team based at the moment. At any time, an aggregate whose subordinates are only team based could be changed so that one or more aren't team based, and then this boolean won't make much sense (the aggregation would become "sometimes team based"). Let's not deal with that right now.
	@JsonKey(name:'isTeamBased')
	bool? isTeamBased;
	
	/// If true, this mode is an aggregation of other, more specific modes rather than being a mode in itself. This includes modes that group Features/Events rather than Gameplay, such as Trials of The Nine: Trials of the Nine being an Event that is interesting to see aggregate data for, but when you play the activities within Trials of the Nine they are more specific activity modes such as Clash.
	@JsonKey(name:'isAggregateMode')
	bool? isAggregateMode;
	
	/// The hash identifiers of the DestinyActivityModeDefinitions that represent all of the "parent" modes for this mode. For instance, the Nightfall Mode is also a member of AllStrikes and AllPvE.
	@JsonKey(name:'parentHashes')
	List<int>? parentHashes;
	
	/// A Friendly identifier you can use for referring to this Activity Mode. We really only used this in our URLs, so... you know, take that for whatever it's worth.
	@JsonKey(name:'friendlyName')
	String? friendlyName;
	
	/// If this exists, the mode has specific Activities (referred to by the Key) that should instead map to other Activity Modes when they are played. This was useful in D1 for Private Matches, where we wanted to have Private Matches as an activity mode while still referring to the specific mode being played.
	@JsonKey(name:'activityModeMappings')
	Map<String, DestinyActivityModeType>? activityModeMappings;
	
	/// If FALSE, we want to ignore this type when we're showing activity modes in BNet UI. It will still be returned in case 3rd parties want to use it for any purpose.
	@JsonKey(name:'display')
	bool? display;
	
	/// The relative ordering of activity modes.
	@JsonKey(name:'order')
	int? order;
	
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

	factory DestinyActivityModeDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityModeDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityModeDefinitionToJson(this);

	static Future<DestinyActivityModeDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityModeDefinition>((json)=>DestinyActivityModeDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}