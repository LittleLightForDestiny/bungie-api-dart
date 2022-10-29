import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'email_opt_in_definition.dart';
import 'email_subscription_definition.dart';
import 'email_view_definition.dart';

part 'email_settings.g.dart';

/// The set of all email subscription&#x2F;opt-in settings and definitions.
@JsonSerializable()
class EmailSettings{	
	EmailSettings();

	
	/// Keyed by the name identifier of the opt-in definition.
	@JsonKey(name:'optInDefinitions')
	Map<String, EmailOptInDefinition>? optInDefinitions;
	
	/// Keyed by the name identifier of the Subscription definition.
	@JsonKey(name:'subscriptionDefinitions')
	Map<String, EmailSubscriptionDefinition>? subscriptionDefinitions;
	
	/// Keyed by the name identifier of the View definition.
	@JsonKey(name:'views')
	Map<String, EmailViewDefinition>? views;

	factory EmailSettings.fromJson(Map<String, dynamic> json) {
		return _$EmailSettingsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EmailSettingsToJson(this);

	static Future<EmailSettings> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, EmailSettings>((json)=>EmailSettings.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}