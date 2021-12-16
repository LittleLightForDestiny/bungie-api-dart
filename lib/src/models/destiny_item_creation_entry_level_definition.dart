import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_creation_entry_level_definition.g.dart';

/// An overly complicated wrapper for the item level at which the item should spawn.
@JsonSerializable()
class DestinyItemCreationEntryLevelDefinition{
	
	DestinyItemCreationEntryLevelDefinition();

	factory DestinyItemCreationEntryLevelDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemCreationEntryLevelDefinitionFromJson(json);
	}

	@JsonKey(name:'level')
	int? level;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemCreationEntryLevelDefinitionToJson(this);
}