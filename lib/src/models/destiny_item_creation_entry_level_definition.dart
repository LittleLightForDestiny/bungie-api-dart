
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_creation_entry_level_definition.g.dart';

/// An overly complicated wrapper for the item level at which the item should spawn.
@JsonSerializable()
class DestinyItemCreationEntryLevelDefinition {

	@JsonKey(name:'level')
	int level;
	DestinyItemCreationEntryLevelDefinition();

	factory DestinyItemCreationEntryLevelDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemCreationEntryLevelDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemCreationEntryLevelDefinitionToJson(this);
}
