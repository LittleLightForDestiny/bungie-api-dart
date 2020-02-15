import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_activity_mode_type.dart';

part 'destiny_activity_playlist_item_definition.g.dart';

/// If the activity is a playlist, this is the definition for a specific entry in the playlist: a single possible combination of Activity and Activity Mode that can be chosen.
@JsonSerializable()
class DestinyActivityPlaylistItemDefinition{
	
	DestinyActivityPlaylistItemDefinition();

	factory DestinyActivityPlaylistItemDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityPlaylistItemDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the Activity that can be played. Use it to look up the DestinyActivityDefinition.
	@JsonKey(name:'activityHash')
	int activityHash;
	/// If this playlist entry had an activity mode directly defined on it, this will be the hash of that mode.
	@JsonKey(name:'directActivityModeHash')
	int directActivityModeHash;
	/// If the playlist entry had an activity mode directly defined on it, this will be the enum value of that mode.
	@JsonKey(name:'directActivityModeType')
	int directActivityModeType;
	/// The hash identifiers for Activity Modes relevant to this entry.
	@JsonKey(name:'activityModeHashes')
	List<int> activityModeHashes;
	/// The activity modes - if any - in enum form. Because we can't seem to escape the enums.
	@JsonKey(name:'activityModeTypes')
	List<DestinyActivityModeType> activityModeTypes;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityPlaylistItemDefinitionToJson(this);
}