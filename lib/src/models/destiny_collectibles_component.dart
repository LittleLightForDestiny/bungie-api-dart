import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectible_component.dart';

part 'destiny_collectibles_component.g.dart';

@JsonSerializable()
class DestinyCollectiblesComponent{
	
	DestinyCollectiblesComponent();

	factory DestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectiblesComponentFromJson(json);
	}

	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent>? collectibles;
	/// The hash for the root presentation node definition of Collection categories.
	@JsonKey(name:'collectionCategoriesRootNodeHash')
	int? collectionCategoriesRootNodeHash;
	/// The hash for the root presentation node definition of Collection Badges.
	@JsonKey(name:'collectionBadgesRootNodeHash')
	int? collectionBadgesRootNodeHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectiblesComponentToJson(this);
}