import 'destiny_collectible_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class DestinyProfileCollectiblesComponent {

	/// The list of collectibles determined by the game as having been &quot;recently&quot; acquired.
	@JsonKey(name:'recentCollectibleHashes')
	List<int> recentCollectibleHashes;

	/// The list of collectibles determined by the game as having been &quot;recently&quot; acquired.
	/// The game client itself actually controls this data, so I personally question whether anyone will get much use out of this: because we can&#39;t edit this value through the API. But in case anyone finds it useful, here it is.
	@JsonKey(name:'newnessFlaggedCollectibleHashes')
	List<int> newnessFlaggedCollectibleHashes;

	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent> collectibles;
	DestinyProfileCollectiblesComponent();

	factory DestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileCollectiblesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileCollectiblesComponentToJson(this);
}
