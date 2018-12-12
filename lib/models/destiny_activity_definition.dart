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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		DestinyDisplayPropertiesDefinition this.originalDisplayProperties,
		DestinyDisplayPropertiesDefinition this.selectionScreenDisplayProperties,
		String this.releaseIcon,
		int this.releaseTime,
		int this.activityLevel,
		int this.activityLightLevel,
		int this.destinationHash,
		int this.placeHash,
		int this.activityTypeHash,
		int this.tier,
		String this.pgcrImage,
		List<DestinyActivityRewardDefinition> this.rewards,
		List<DestinyActivityModifierReferenceDefinition> this.modifiers,
		bool this.isPlaylist,
		List<DestinyActivityChallengeDefinition> this.challenges,
		List<DestinyActivityUnlockStringDefinition> this.optionalUnlockStrings,
		List<DestinyActivityPlaylistItemDefinition> this.playlistItems,
		List<DestinyActivityGraphListEntryDefinition> this.activityGraphList,
		DestinyActivityMatchmakingBlockDefinition this.matchmaking,
		DestinyActivityGuidedBlockDefinition this.guidedGame,
		int this.directActivityModeHash,
		int this.directActivityModeType,
		List<DestinyActivityLoadoutRequirementSet> this.loadouts,
		List<int> this.activityModeHashes,
		List<int> this.activityModeTypes,
		bool this.isPvP,
		List<DestinyActivityInsertionPointDefinition> this.insertionPoints,
		List<DestinyEnvironmentLocationMapping> this.activityLocationMappings,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityDefinition(
				data['displayProperties'],
				data['originalDisplayProperties'],
				data['selectionScreenDisplayProperties'],
				data['releaseIcon'],
				data['releaseTime'],
				data['activityLevel'],
				data['activityLightLevel'],
				data['destinationHash'],
				data['placeHash'],
				data['activityTypeHash'],
				data['tier'],
				data['pgcrImage'],
				DestinyActivityRewardDefinition.fromList(data['rewards']),
				DestinyActivityModifierReferenceDefinition.fromList(data['modifiers']),
				data['isPlaylist'],
				DestinyActivityChallengeDefinition.fromList(data['challenges']),
				DestinyActivityUnlockStringDefinition.fromList(data['optionalUnlockStrings']),
				DestinyActivityPlaylistItemDefinition.fromList(data['playlistItems']),
				DestinyActivityGraphListEntryDefinition.fromList(data['activityGraphList']),
				data['matchmaking'],
				data['guidedGame'],
				data['directActivityModeHash'],
				data['directActivityModeType'],
				DestinyActivityLoadoutRequirementSet.fromList(data['loadouts']),
				data['activityModeHashes'],
				data['activityModeTypes'],
				data['isPvP'],
				DestinyActivityInsertionPointDefinition.fromList(data['insertionPoints']),
				DestinyEnvironmentLocationMapping.fromList(data['activityLocationMappings']),
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
			data['rewards'] = this.rewards.map((item)=>item.toMap());
			data['modifiers'] = this.modifiers.map((item)=>item.toMap());
			data['isPlaylist'] = this.isPlaylist;
			data['challenges'] = this.challenges.map((item)=>item.toMap());
			data['optionalUnlockStrings'] = this.optionalUnlockStrings.map((item)=>item.toMap());
			data['playlistItems'] = this.playlistItems.map((item)=>item.toMap());
			data['activityGraphList'] = this.activityGraphList.map((item)=>item.toMap());
			data['matchmaking'] = this.matchmaking;
			data['guidedGame'] = this.guidedGame;
			data['directActivityModeHash'] = this.directActivityModeHash;
			data['directActivityModeType'] = this.directActivityModeType;
			data['loadouts'] = this.loadouts.map((item)=>item.toMap());
			data['activityModeHashes'] = this.activityModeHashes;
			data['activityModeTypes'] = this.activityModeTypes;
			data['isPvP'] = this.isPvP;
			data['insertionPoints'] = this.insertionPoints.map((item)=>item.toMap());
			data['activityLocationMappings'] = this.activityLocationMappings.map((item)=>item.toMap());
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}