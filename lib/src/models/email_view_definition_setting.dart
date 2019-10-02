import 'email_setting_localization.dart';
import 'email_subscription_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'email_view_definition_setting.g.dart';

@JsonSerializable()
class EmailViewDefinitionSetting{
	
	/// The identifier for this UI Setting, which can be used to relate it to custom strings or other data as desired.
	@JsonKey(name:'name')
	String name;
	
	/// A dictionary of localized text for the EMail setting, keyed by the locale.
	@JsonKey(name:'localization')
	Map<String, EMailSettingLocalization> localization;
	
	/// If true, this setting should be set by default if the user hasn&#39;t chosen whether it&#39;s set or cleared yet.
	@JsonKey(name:'setByDefault')
	bool setByDefault;
	
	/// The OptInFlags value to set or clear if this setting is set or cleared in the UI. It is the aggregate of all underlying opt-in flags related to this setting.
	@JsonKey(name:'optInAggregateValue')
	String optInAggregateValue;
	
	/// The subscriptions to show as children of this setting, if any.
	@JsonKey(name:'subscriptions')
	List<EmailSubscriptionDefinition> subscriptions;
	EmailViewDefinitionSetting();

	factory EmailViewDefinitionSetting.fromJson(Map<String, dynamic> json) => _$EmailViewDefinitionSettingFromJson(json);
	
	Map<String, dynamic> toJson() => _$EmailViewDefinitionSettingToJson(this);
}