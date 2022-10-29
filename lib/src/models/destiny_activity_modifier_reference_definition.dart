import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_modifier_reference_definition.g.dart';

/// A reference to an Activity Modifier from another entity, such as an Activity (for now, just Activities).
/// This defines some
@JsonSerializable()
class DestinyActivityModifierReferenceDefinition{	
	DestinyActivityModifierReferenceDefinition();

	
	/// The hash identifier for the DestinyActivityModifierDefinition referenced by this activity.
	@JsonKey(name:'activityModifierHash')
	int? activityModifierHash;

	factory DestinyActivityModifierReferenceDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityModifierReferenceDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityModifierReferenceDefinitionToJson(this);

	static Future<DestinyActivityModifierReferenceDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityModifierReferenceDefinition>((json)=>DestinyActivityModifierReferenceDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}