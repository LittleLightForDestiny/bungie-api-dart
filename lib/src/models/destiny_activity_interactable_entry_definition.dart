import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_interactable_entry_definition.g.dart';

/// Defines a specific interactable and the action that can occur when triggered.
@JsonSerializable()
class DestinyActivityInteractableEntryDefinition{	
	DestinyActivityInteractableEntryDefinition();

	
	/// The activity that will trigger when you interact with this interactable.
	@JsonKey(name:'activityHash')
	int? activityHash;

	factory DestinyActivityInteractableEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityInteractableEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityInteractableEntryDefinitionToJson(this);

	static Future<DestinyActivityInteractableEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityInteractableEntryDefinition>((json)=>DestinyActivityInteractableEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}