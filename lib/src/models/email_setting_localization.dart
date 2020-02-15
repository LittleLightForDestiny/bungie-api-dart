import 'package:json_annotation/json_annotation.dart';


part 'email_setting_localization.g.dart';

/// Localized text relevant to a given EMail setting in a given localization.
@JsonSerializable()
class EMailSettingLocalization{
	
	EMailSettingLocalization();

	factory EMailSettingLocalization.fromJson(Map<String, dynamic> json) {
		try{
			return _$EMailSettingLocalizationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'description')
	String description;

	
	
	Map<String, dynamic> toJson() => _$EMailSettingLocalizationToJson(this);
}