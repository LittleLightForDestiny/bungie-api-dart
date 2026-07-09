import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_selectable_skull_collections.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkullCollections{	
	DestinyActivitySelectableSkullCollections();

	
	@JsonKey(name:'selectableSkullCollectionHash')
	int? selectableSkullCollectionHash;
	
	@JsonKey(name:'minimumTierRank')
	int? minimumTierRank;
	
	@JsonKey(name:'maximumTierRank')
	int? maximumTierRank;

	factory DestinyActivitySelectableSkullCollections.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullCollectionsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullCollectionsToJson(this);

	static Future<DestinyActivitySelectableSkullCollections> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkullCollections>((json)=>DestinyActivitySelectableSkullCollections.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}