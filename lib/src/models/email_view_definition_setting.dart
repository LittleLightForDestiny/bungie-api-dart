import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'email_setting_localization.dart';
import '../enums/opt_in_flags.dart';
import 'email_subscription_definition.dart';

part 'email_view_definition_setting.g.dart';

@JsonSerializable()
class EmailViewDefinitionSetting{	
	EmailViewDefinitionSetting();

	
	/// The identifier for this UI Setting, which can be used to relate it to custom strings or other data as desired.
	@JsonKey(name:'name')
	String? name;
	
	/// A dictionary of localized text for the EMail setting, keyed by the locale.
	@JsonKey(name:'localization')
	Map<String, EMailSettingLocalization>? localization;
	
	/// If true, this setting should be set by default if the user hasn't chosen whether it's set or cleared yet.
	@JsonKey(name:'setByDefault')
	bool? setByDefault;
	
	/// The OptInFlags value to set or clear if this setting is set or cleared in the UI. It is the aggregate of all underlying opt-in flags related to this setting.
	@JsonKey(name:'optInAggregateValue')
	OptInFlags? optInAggregateValue;
	
	/// The subscriptions to show as children of this setting, if any.
	@JsonKey(name:'subscriptions')
	List<EmailSubscriptionDefinition>? subscriptions;

	factory EmailViewDefinitionSetting.fromJson(Map<String, dynamic> json) {
		return _$EmailViewDefinitionSettingFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EmailViewDefinitionSettingToJson(this);

	static Future<EmailViewDefinitionSetting> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, EmailViewDefinitionSetting>((json)=>EmailViewDefinitionSetting.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}