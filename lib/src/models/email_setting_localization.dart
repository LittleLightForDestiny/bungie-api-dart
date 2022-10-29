import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'email_setting_localization.g.dart';

/// Localized text relevant to a given EMail setting in a given localization.
@JsonSerializable()
class EMailSettingLocalization{	
	EMailSettingLocalization();

	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'description')
	String? description;

	factory EMailSettingLocalization.fromJson(Map<String, dynamic> json) {
		return _$EMailSettingLocalizationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EMailSettingLocalizationToJson(this);

	static Future<EMailSettingLocalization> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, EMailSettingLocalization>((json)=>EMailSettingLocalization.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}