import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'core_setting.g.dart';

@JsonSerializable()
class CoreSetting{	
	CoreSetting();

	
	@JsonKey(name:'identifier')
	String? identifier;
	
	@JsonKey(name:'isDefault')
	bool? isDefault;
	
	@JsonKey(name:'displayName')
	String? displayName;
	
	@JsonKey(name:'summary')
	String? summary;
	
	@JsonKey(name:'imagePath')
	String? imagePath;
	
	@JsonKey(name:'childSettings')
	List<CoreSetting>? childSettings;

	factory CoreSetting.fromJson(Map<String, dynamic> json) {
		return _$CoreSettingFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CoreSettingToJson(this);

	static Future<CoreSetting> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CoreSetting>((json)=>CoreSetting.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}