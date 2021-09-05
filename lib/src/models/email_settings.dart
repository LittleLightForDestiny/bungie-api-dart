import 'package:json_annotation/json_annotation.dart';

import 'email_opt_in_definition.dart';
import 'email_subscription_definition.dart';
import 'email_view_definition.dart';

part 'email_settings.g.dart';

/// The set of all email subscription&#x2F;opt-in settings and definitions.
@JsonSerializable()
class EmailSettings{
	
	EmailSettings();

	factory EmailSettings.fromJson(Map<String, dynamic> json) {
		return _$EmailSettingsFromJson(json);
	}

	/// Keyed by the name identifier of the opt-in definition.
	@JsonKey(name:'optInDefinitions')
	Map<String, EmailOptInDefinition>? optInDefinitions;
	/// Keyed by the name identifier of the Subscription definition.
	@JsonKey(name:'subscriptionDefinitions')
	Map<String, EmailSubscriptionDefinition>? subscriptionDefinitions;
	/// Keyed by the name identifier of the View definition.
	@JsonKey(name:'views')
	Map<String, EmailViewDefinition>? views;

	
	
	Map<String, dynamic> toJson() => _$EmailSettingsToJson(this);
}