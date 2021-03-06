import 'package:json_annotation/json_annotation.dart';

import 'core_system.dart';
import 'core_setting.dart';
import 'destiny2_core_settings.dart';
import 'email_settings.dart';

part 'core_settings_configuration.g.dart';

@JsonSerializable()
class CoreSettingsConfiguration{
	
	CoreSettingsConfiguration();

	factory CoreSettingsConfiguration.fromJson(Map<String, dynamic> json) {
		try{
			return _$CoreSettingsConfigurationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'environment')
	String environment;
	@JsonKey(name:'systems')
	Map<String, CoreSystem> systems;
	@JsonKey(name:'ignoreReasons')
	List<CoreSetting> ignoreReasons;
	@JsonKey(name:'forumCategories')
	List<CoreSetting> forumCategories;
	@JsonKey(name:'groupAvatars')
	List<CoreSetting> groupAvatars;
	@JsonKey(name:'destinyMembershipTypes')
	List<CoreSetting> destinyMembershipTypes;
	@JsonKey(name:'recruitmentPlatformTags')
	List<CoreSetting> recruitmentPlatformTags;
	@JsonKey(name:'recruitmentMiscTags')
	List<CoreSetting> recruitmentMiscTags;
	@JsonKey(name:'recruitmentActivities')
	List<CoreSetting> recruitmentActivities;
	@JsonKey(name:'userContentLocales')
	List<CoreSetting> userContentLocales;
	@JsonKey(name:'systemContentLocales')
	List<CoreSetting> systemContentLocales;
	@JsonKey(name:'clanBannerDecals')
	List<CoreSetting> clanBannerDecals;
	@JsonKey(name:'clanBannerDecalColors')
	List<CoreSetting> clanBannerDecalColors;
	@JsonKey(name:'clanBannerGonfalons')
	List<CoreSetting> clanBannerGonfalons;
	@JsonKey(name:'clanBannerGonfalonColors')
	List<CoreSetting> clanBannerGonfalonColors;
	@JsonKey(name:'clanBannerGonfalonDetails')
	List<CoreSetting> clanBannerGonfalonDetails;
	@JsonKey(name:'clanBannerGonfalonDetailColors')
	List<CoreSetting> clanBannerGonfalonDetailColors;
	@JsonKey(name:'clanBannerStandards')
	List<CoreSetting> clanBannerStandards;
	@JsonKey(name:'destiny2CoreSettings')
	Destiny2CoreSettings destiny2CoreSettings;
	/// The set of all email subscription/opt-in settings and definitions.
	@JsonKey(name:'emailSettings')
	EmailSettings emailSettings;
	@JsonKey(name:'fireteamActivities')
	List<CoreSetting> fireteamActivities;

	
	
	Map<String, dynamic> toJson() => _$CoreSettingsConfigurationToJson(this);
}