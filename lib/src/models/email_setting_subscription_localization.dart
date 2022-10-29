import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'email_setting_subscription_localization.g.dart';

/// Localized text relevant to a given EMail setting in a given localization. Extra settings specifically for subscriptions.
@JsonSerializable()
class EMailSettingSubscriptionLocalization{	
	EMailSettingSubscriptionLocalization();

	
	@JsonKey(name:'unknownUserDescription')
	String? unknownUserDescription;
	
	@JsonKey(name:'registeredUserDescription')
	String? registeredUserDescription;
	
	@JsonKey(name:'unregisteredUserDescription')
	String? unregisteredUserDescription;
	
	@JsonKey(name:'unknownUserActionText')
	String? unknownUserActionText;
	
	@JsonKey(name:'knownUserActionText')
	String? knownUserActionText;
	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'description')
	String? description;

	factory EMailSettingSubscriptionLocalization.fromJson(Map<String, dynamic> json) {
		return _$EMailSettingSubscriptionLocalizationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EMailSettingSubscriptionLocalizationToJson(this);

	static Future<EMailSettingSubscriptionLocalization> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, EMailSettingSubscriptionLocalization>((json)=>EMailSettingSubscriptionLocalization.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}