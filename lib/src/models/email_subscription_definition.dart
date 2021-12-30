import 'package:json_annotation/json_annotation.dart';

import 'email_setting_subscription_localization.dart';

part 'email_subscription_definition.g.dart';

/// Defines a single subscription: permission to send emails for a specific, focused subject (generally timeboxed, such as for a specific release of a product or feature).
@JsonSerializable()
class EmailSubscriptionDefinition{	
	EmailSubscriptionDefinition();

	factory EmailSubscriptionDefinition.fromJson(Map<String, dynamic> json) {
		return _$EmailSubscriptionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EmailSubscriptionDefinitionToJson(this);
	
	/// The unique identifier for this subscription.
	@JsonKey(name:'name')
	String? name;
	
	/// A dictionary of localized text for the EMail Opt-in setting, keyed by the locale.
	@JsonKey(name:'localization')
	Map<String, EMailSettingSubscriptionLocalization>? localization;
	
	/// The bitflag value for this subscription. Should be a unique power of two value.
	@JsonKey(name:'value')
	String? value;
}