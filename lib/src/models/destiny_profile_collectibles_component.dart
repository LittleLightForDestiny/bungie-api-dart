import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectible_component.dart';

part 'destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class DestinyProfileCollectiblesComponent{
	
	DestinyProfileCollectiblesComponent();

	factory DestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyProfileCollectiblesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The list of collectibles determined by the game as having been "recently" acquired.
	@JsonKey(name:'recentCollectibleHashes')
	List<int> recentCollectibleHashes;
	/// The list of collectibles determined by the game as having been "recently" acquired.
	/// The game client itself actually controls this data, so I personally question whether anyone will get much use out of this: because we can't edit this value through the API. But in case anyone finds it useful, here it is.
	@JsonKey(name:'newnessFlaggedCollectibleHashes')
	List<int> newnessFlaggedCollectibleHashes;
	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent> collectibles;
	/// The hash for the root presentation node definition of Collection categories.
	@JsonKey(name:'collectionCategoriesRootNodeHash')
	int collectionCategoriesRootNodeHash;
	/// The hash for the root presentation node definition of Collection Badges.
	@JsonKey(name:'collectionBadgesRootNodeHash')
	int collectionBadgesRootNodeHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileCollectiblesComponentToJson(this);
}