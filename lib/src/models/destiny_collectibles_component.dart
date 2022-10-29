import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_collectible_component.dart';

part 'destiny_collectibles_component.g.dart';

@JsonSerializable()
class DestinyCollectiblesComponent{	
	DestinyCollectiblesComponent();

	
	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent>? collectibles;
	
	/// The hash for the root presentation node definition of Collection categories.
	@JsonKey(name:'collectionCategoriesRootNodeHash')
	int? collectionCategoriesRootNodeHash;
	
	/// The hash for the root presentation node definition of Collection Badges.
	@JsonKey(name:'collectionBadgesRootNodeHash')
	int? collectionBadgesRootNodeHash;

	factory DestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectiblesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCollectiblesComponentToJson(this);

	static Future<DestinyCollectiblesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCollectiblesComponent>((json)=>DestinyCollectiblesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}