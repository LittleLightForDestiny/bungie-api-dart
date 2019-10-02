
import 'package:json_annotation/json_annotation.dart';
part 'email_setting_localization.g.dart';

/// Localized text relevant to a given EMail setting in a given localization.
@JsonSerializable()
class EMailSettingLocalization{
	
	@JsonKey(name:'title')
	String title;
	
	@JsonKey(name:'description')
	String description;
	EMailSettingLocalization();

	factory EMailSettingLocalization.fromJson(Map<String, dynamic> json) => _$EMailSettingLocalizationFromJson(json);
	
	Map<String, dynamic> toJson() => _$EMailSettingLocalizationToJson(this);
}