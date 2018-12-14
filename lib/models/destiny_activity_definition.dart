import 'destiny_display_properties_definition.dart';
import 'destiny_display_properties_definition.dart';
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
class DestinyActivityDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyDisplayPropertiesDefinition originalDisplayProperties;
	DestinyDisplayPropertiesDefinition selectionScreenDisplayProperties;
	String releaseIcon;
	int releaseTime;
	int activityLevel;
	int activityLightLevel;
	int destinationHash;
	int placeHash;
	int activityTypeHash;
	int tier;
	String pgcrImage;
	List<DestinyActivityRewardDefinition> rewards;
	List<DestinyActivityModifierReferenceDefinition> modifiers;
	bool isPlaylist;
	List<DestinyActivityChallengeDefinition> challenges;
	List<DestinyActivityUnlockStringDefinition> optionalUnlockStrings;
	List<DestinyActivityPlaylistItemDefinition> playlistItems;
	List<DestinyActivityGraphListEntryDefinition> activityGraphList;
	DestinyActivityMatchmakingBlockDefinition matchmaking;
	DestinyActivityGuidedBlockDefinition guidedGame;
	int directActivityModeHash;
	int directActivityModeType;
	List<DestinyActivityLoadoutRequirementSet> loadouts;
	List<int> activityModeHashes;
	List<int> activityModeTypes;
	bool isPvP;
	List<DestinyActivityInsertionPointDefinition> insertionPoints;
	List<DestinyEnvironmentLocationMapping> activityLocationMappings;
	int hash;
	int index;
	bool redacted;
	DestinyActivityDefinition(
		this.displayProperties,
		this.originalDisplayProperties,
		this.selectionScreenDisplayProperties,
		this.releaseIcon,
		this.releaseTime,
		this.activityLevel,
		this.activityLightLevel,
		this.destinationHash,
		this.placeHash,
		this.activityTypeHash,
		this.tier,
		this.pgcrImage,
		this.rewards,
		this.modifiers,
		this.isPlaylist,
		this.challenges,
		this.optionalUnlockStrings,
		this.playlistItems,
		this.activityGraphList,
		this.matchmaking,
		this.guidedGame,
		this.directActivityModeHash,
		this.directActivityModeType,
		this.loadouts,
		this.activityModeHashes,
		this.activityModeTypes,
		this.isPvP,
		this.insertionPoints,
		this.activityLocationMappings,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['originalDisplayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['originalDisplayProperties']) : null,
				data['selectionScreenDisplayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['selectionScreenDisplayProperties']) : null,
				data['releaseIcon'],
				data['releaseTime'],
				data['activityLevel'],
				data['activityLightLevel'],
				data['destinationHash'],
				data['placeHash'],
				data['activityTypeHash'],
				data['tier'],
				data['pgcrImage'],
				data['rewards'] != null ? DestinyActivityRewardDefinition.fromList(data['rewards']) : null,
				data['modifiers'] != null ? DestinyActivityModifierReferenceDefinition.fromList(data['modifiers']) : null,
				data['isPlaylist'],
				data['challenges'] != null ? DestinyActivityChallengeDefinition.fromList(data['challenges']) : null,
				data['optionalUnlockStrings'] != null ? DestinyActivityUnlockStringDefinition.fromList(data['optionalUnlockStrings']) : null,
				data['playlistItems'] != null ? DestinyActivityPlaylistItemDefinition.fromList(data['playlistItems']) : null,
				data['activityGraphList'] != null ? DestinyActivityGraphListEntryDefinition.fromList(data['activityGraphList']) : null,
				data['matchmaking'] != null ? DestinyActivityMatchmakingBlockDefinition.fromMap(data['matchmaking']) : null,
				data['guidedGame'] != null ? DestinyActivityGuidedBlockDefinition.fromMap(data['guidedGame']) : null,
				data['directActivityModeHash'],
				data['directActivityModeType'],
				data['loadouts'] != null ? DestinyActivityLoadoutRequirementSet.fromList(data['loadouts']) : null,
				data['activityModeHashes'] != null ? data['activityModeHashes']?.cast<int>() ?? null : null,
				data['activityModeTypes'],
				data['isPvP'],
				data['insertionPoints'] != null ? DestinyActivityInsertionPointDefinition.fromList(data['insertionPoints']) : null,
				data['activityLocationMappings'] != null ? DestinyEnvironmentLocationMapping.fromList(data['activityLocationMappings']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['originalDisplayProperties'] = this.originalDisplayProperties;
			data['selectionScreenDisplayProperties'] = this.selectionScreenDisplayProperties;
			data['releaseIcon'] = this.releaseIcon;
			data['releaseTime'] = this.releaseTime;
			data['activityLevel'] = this.activityLevel;
			data['activityLightLevel'] = this.activityLightLevel;
			data['destinationHash'] = this.destinationHash;
			data['placeHash'] = this.placeHash;
			data['activityTypeHash'] = this.activityTypeHash;
			data['tier'] = this.tier;
			data['pgcrImage'] = this.pgcrImage;
			data['rewards'] = this.rewards.map((item)=>item.toMap()).toList();
			data['modifiers'] = this.modifiers.map((item)=>item.toMap()).toList();
			data['isPlaylist'] = this.isPlaylist;
			data['challenges'] = this.challenges.map((item)=>item.toMap()).toList();
			data['optionalUnlockStrings'] = this.optionalUnlockStrings.map((item)=>item.toMap()).toList();
			data['playlistItems'] = this.playlistItems.map((item)=>item.toMap()).toList();
			data['activityGraphList'] = this.activityGraphList.map((item)=>item.toMap()).toList();
			data['matchmaking'] = this.matchmaking;
			data['guidedGame'] = this.guidedGame;
			data['directActivityModeHash'] = this.directActivityModeHash;
			data['directActivityModeType'] = this.directActivityModeType;
			data['loadouts'] = this.loadouts.map((item)=>item.toMap()).toList();
			data['activityModeHashes'] = this.activityModeHashes;
			data['activityModeTypes'] = this.activityModeTypes;
			data['isPvP'] = this.isPvP;
			data['insertionPoints'] = this.insertionPoints.map((item)=>item.toMap()).toList();
			data['activityLocationMappings'] = this.activityLocationMappings.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}