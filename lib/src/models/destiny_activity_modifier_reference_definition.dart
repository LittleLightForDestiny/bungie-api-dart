import 'package:json_annotation/json_annotation.dart';


part 'destiny_activity_modifier_reference_definition.g.dart';

/// A reference to an Activity Modifier from another entity, such as an Activity (for now, just Activities).
/// This defines some
@JsonSerializable()
class DestinyActivityModifierReferenceDefinition{
	
	DestinyActivityModifierReferenceDefinition();

	factory DestinyActivityModifierReferenceDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityModifierReferenceDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier for the DestinyActivityModifierDefinition referenced by this activity.
	@JsonKey(name:'activityModifierHash')
	int activityModifierHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityModifierReferenceDefinitionToJson(this);
}