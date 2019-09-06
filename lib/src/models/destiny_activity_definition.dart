import 'destiny_display_properties_definition.dart';
import 'destiny_activity_reward_definition.dart';
import 'destiny_activity_modifier_reference_definition.dart';
import 'destiny_activity_challenge_definition.dart';
import 'destiny_activity_unlock_string_definition.dart';
import 'destiny_activity_playlist_item_definition.dart';
import 'destiny_activity_graph_list_entry_definition.dart';
import 'destiny_activity_matchmaking_block_definition.dart';
import 'destiny_activity_guided_block_definition.dart';
import 'destiny_activity_loadout_requirement_set.dart';
import 'destiny_activity_insertion_point_definition.dart';
import 'destiny_environment_location_mapping.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_definition.g.dart';

/// The static data about Activities in Destiny 2.
/// Note that an Activity must be combined with an ActivityMode to know - from a Gameplay perspective - what the user is &quot;Playing&quot;.
/// In most PvE activities, this is fairly straightforward. A Story Activity can only be played in the Story Activity Mode.
/// However, in PvP activities, the Activity alone only tells you the map being played, or the Playlist that the user chose to enter. You&#39;ll need to know the Activity Mode they&#39;re playing to know that they&#39;re playing Mode X on Map Y.
/// Activity Definitions tell a great deal of information about what *could* be relevant to a user: what rewards they can earn, what challenges could be performed, what modifiers could be applied. To figure out which of these properties is actually live, you&#39;ll need to combine the definition with &quot;Live&quot; data from one of the Destiny endpoints.
/// Activities also have Activity Types, but unfortunately in Destiny 2 these are even less reliable of a source of information than they were in Destiny 1. I will be looking into ways to provide more reliable sources for type information as time goes on, but for now we&#39;re going to have to deal with the limitations. See DestinyActivityTypeDefinition for more information.
@JsonSerializable()
class DestinyActivityDefinition {

	/// The title, subtitle, and icon for the activity. We do a little post-processing on this to try and account for Activities where the designers have left this data too minimal to determine what activity is actually being played.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The unadulterated form of the display properties, as they ought to be shown in the Director (if the activity appears in the director).
	@JsonKey(name:'originalDisplayProperties')
	DestinyDisplayPropertiesDefinition originalDisplayProperties;

	/// The title, subtitle, and icon for the activity as determined by Selection Screen data, if there is any for this activity. There won&#39;t be data in this field if the activity is never shown in a selection&#x2F;options screen.
	@JsonKey(name:'selectionScreenDisplayProperties')
	DestinyDisplayPropertiesDefinition selectionScreenDisplayProperties;

	/// If the activity has an icon associated with a specific release (such as a DLC), this is the path to that release&#39;s icon.
	@JsonKey(name:'releaseIcon')
	String releaseIcon;

	/// If the activity will not be visible until a specific and known time, this will be the seconds since the Epoch when it will become visible.
	@JsonKey(name:'releaseTime')
	int releaseTime;

	/// The difficulty level of the activity.
	@JsonKey(name:'activityLevel')
	int activityLevel;

	/// The recommended light level for this activity.
	@JsonKey(name:'activityLightLevel')
	int activityLightLevel;

	/// The hash identifier for the Destination on which this Activity is played. Use it to look up the DestinyDestinationDefinition for human readable info about the destination. A Destination can be thought of as a more specific location than a &quot;Place&quot;. For instance, if the &quot;Place&quot; is Earth, the &quot;Destination&quot; would be a specific city or region on Earth.
	@JsonKey(name:'destinationHash')
	int destinationHash;

	/// The hash identifier for the &quot;Place&quot; on which this Activity is played. Use it to look up the DestinyPlaceDefinition for human readable info about the Place. A Place is the largest-scoped concept for location information. For instance, if the &quot;Place&quot; is Earth, the &quot;Destination&quot; would be a specific city or region on Earth.
	@JsonKey(name:'placeHash')
	int placeHash;

	/// The hash identifier for the Activity Type of this Activity. You may use it to look up the DestinyActivityTypeDefinition for human readable info, but be forewarned: Playlists and many PVP Map Activities will map to generic Activity Types. You&#39;ll have to use your knowledge of the Activity Mode being played to get more specific information about what the user is playing.
	@JsonKey(name:'activityTypeHash')
	int activityTypeHash;

	/// The difficulty tier of the activity.
	@JsonKey(name:'tier')
	int tier;

	/// When Activities are completed, we generate a &quot;Post-Game Carnage Report&quot;, or PGCR, with details about what happened in that activity (how many kills someone got, which team won, etc...) We use this image as the background when displaying PGCR information, and often use it when we refer to the Activity in general.
	@JsonKey(name:'pgcrImage')
	String pgcrImage;

	/// The expected possible rewards for the activity. These rewards may or may not be accessible for an individual player based on their character state, the account state, and even the game&#39;s state overall. But it is a useful reference for possible rewards you can earn in the activity. These match up to rewards displayed when you hover over the Activity in the in-game Director, and often refer to Placeholder or &quot;Dummy&quot; items: items that tell you what you can earn in vague terms rather than what you&#39;ll specifically be earning (partly because the game doesn&#39;t even know what you&#39;ll earn specifically until you roll for it at the end)
	@JsonKey(name:'rewards')
	List<DestinyActivityRewardDefinition> rewards;

	/// Activities can have Modifiers, as defined in DestinyActivityModifierDefinition. These are references to the modifiers that *can* be applied to that activity, along with data that we use to determine if that modifier is actually active at any given point in time.
	@JsonKey(name:'modifiers')
	List<DestinyActivityModifierReferenceDefinition> modifiers;

	/// If True, this Activity is actually a Playlist that refers to multiple possible specific Activities and Activity Modes. For instance, a Crucible Playlist may have references to multiple Activities (Maps) with multiple Activity Modes (specific PvP gameplay modes). If this is true, refer to the playlistItems property for the specific entries in the playlist.
	@JsonKey(name:'isPlaylist')
	bool isPlaylist;

	/// An activity can have many Challenges, of which any subset of them may be active for play at any given period of time. This gives the information about the challenges and data that we use to understand when they&#39;re active and what rewards they provide. Sadly, at the moment there&#39;s no central definition for challenges: much like &quot;Skulls&quot; were in Destiny 1, these are defined on individual activities and there can be many duplicates&#x2F;near duplicates across the Destiny 2 ecosystem. I have it in mind to centralize these in a future revision of the API, but we are out of time.
	@JsonKey(name:'challenges')
	List<DestinyActivityChallengeDefinition> challenges;

	/// If there are status strings related to the activity and based on internal state of the game, account, or character, then this will be the definition of those strings and the states needed in order for the strings to be shown.
	@JsonKey(name:'optionalUnlockStrings')
	List<DestinyActivityUnlockStringDefinition> optionalUnlockStrings;

	/// Represents all of the possible activities that could be played in the Playlist, along with information that we can use to determine if they are active at the present time.
	@JsonKey(name:'playlistItems')
	List<DestinyActivityPlaylistItemDefinition> playlistItems;

	/// Unfortunately, in practice this is almost never populated. In theory, this is supposed to tell which Activity Graph to show if you bring up the director while in this activity.
	@JsonKey(name:'activityGraphList')
	List<DestinyActivityGraphListEntryDefinition> activityGraphList;

	/// This block of data provides information about the Activity&#39;s matchmaking attributes: how many people can join and such.
	@JsonKey(name:'matchmaking')
	DestinyActivityMatchmakingBlockDefinition matchmaking;

	/// This block of data, if it exists, provides information about the guided game experience and restrictions for this activity. If it doesn&#39;t exist, the game is not able to be played as a guided game.
	@JsonKey(name:'guidedGame')
	DestinyActivityGuidedBlockDefinition guidedGame;

	/// If this activity had an activity mode directly defined on it, this will be the hash of that mode.
	@JsonKey(name:'directActivityModeHash')
	int directActivityModeHash;

	/// If the activity had an activity mode directly defined on it, this will be the enum value of that mode.
	@JsonKey(name:'directActivityModeType')
	int directActivityModeType;

	/// The set of all possible loadout requirements that could be active for this activity. Only one will be active at any given time, and you can discover which one through activity-associated data such as Milestones that have activity info on them.
	@JsonKey(name:'loadouts')
	List<DestinyActivityLoadoutRequirementSet> loadouts;

	/// The hash identifiers for Activity Modes relevant to this activity.  Note that if this is a playlist, the specific playlist entry chosen will determine the actual activity modes that end up being relevant.
	@JsonKey(name:'activityModeHashes')
	List<int> activityModeHashes;

	/// The activity modes - if any - in enum form. Because we can&#39;t seem to escape the enums.
	@JsonKey(name:'activityModeTypes')
	List<int> activityModeTypes;

	/// If true, this activity is a PVP activity or playlist.
	@JsonKey(name:'isPvP')
	bool isPvP;

	/// The list of phases or points of entry into an activity, along with information we can use to determine their gating and availability.
	@JsonKey(name:'insertionPoints')
	List<DestinyActivityInsertionPointDefinition> insertionPoints;

	/// A list of location mappings that are affected by this activity. Pulled out of DestinyLocationDefinitions for our&#x2F;your lookup convenience.
	@JsonKey(name:'activityLocationMappings')
	List<DestinyEnvironmentLocationMapping> activityLocationMappings;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyActivityDefinition();

	factory DestinyActivityDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityDefinitionToJson(this);
}
