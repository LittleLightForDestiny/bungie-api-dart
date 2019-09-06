
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_unlock_string_definition.g.dart';

/// Represents a status string that could be conditionally displayed about an activity. Note that externally, you can only see the strings themselves. Internally we combine this information with server state to determine which strings should be shown.
@JsonSerializable()
class DestinyActivityUnlockStringDefinition {

	/// The string to be displayed if the conditions are met.
	@JsonKey(name:'displayString')
	String displayString;
	DestinyActivityUnlockStringDefinition();

	factory DestinyActivityUnlockStringDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityUnlockStringDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityUnlockStringDefinitionToJson(this);
}
