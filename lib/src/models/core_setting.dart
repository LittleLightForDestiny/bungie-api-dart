
import 'package:json_annotation/json_annotation.dart';
part 'core_setting.g.dart';

@JsonSerializable()
class CoreSetting {

	@JsonKey(name:'identifier')
	String identifier;

	@JsonKey(name:'isDefault')
	bool isDefault;

	@JsonKey(name:'displayName')
	String displayName;

	@JsonKey(name:'summary')
	String summary;

	@JsonKey(name:'imagePath')
	String imagePath;

	@JsonKey(name:'childSettings')
	List<CoreSetting> childSettings;
	CoreSetting();

	factory CoreSetting.fromJson(Map<String, dynamic> json) => _$CoreSettingFromJson(json);
	
	Map<String, dynamic> toJson() => _$CoreSettingToJson(this);
}
