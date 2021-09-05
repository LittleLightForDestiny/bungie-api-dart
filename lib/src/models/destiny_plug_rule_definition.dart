import 'package:json_annotation/json_annotation.dart';


part 'destiny_plug_rule_definition.g.dart';

/// Dictates a rule around whether the plug is enabled or insertable.
/// In practice, the live Destiny data will refer to these entries by index. You can then look up that index in the appropriate property (enabledRules or insertionRules) to get the localized string for the failure message if it failed.
@JsonSerializable()
class DestinyPlugRuleDefinition{
	
	DestinyPlugRuleDefinition();

	factory DestinyPlugRuleDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyPlugRuleDefinitionFromJson(json);
	}

	/// The localized string to show if this rule fails.
	@JsonKey(name:'failureMessage')
	String? failureMessage;

	
	
	Map<String, dynamic> toJson() => _$DestinyPlugRuleDefinitionToJson(this);
}