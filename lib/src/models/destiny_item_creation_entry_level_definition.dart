import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_creation_entry_level_definition.g.dart';

/// An overly complicated wrapper for the item level at which the item should spawn.
@JsonSerializable()
class DestinyItemCreationEntryLevelDefinition{	
	DestinyItemCreationEntryLevelDefinition();

	
	@JsonKey(name:'level')
	int? level;

	factory DestinyItemCreationEntryLevelDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemCreationEntryLevelDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemCreationEntryLevelDefinitionToJson(this);

	static Future<DestinyItemCreationEntryLevelDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemCreationEntryLevelDefinition>((json)=>DestinyItemCreationEntryLevelDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}