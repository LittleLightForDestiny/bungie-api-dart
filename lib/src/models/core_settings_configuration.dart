import 'core_system.dart';
import 'core_setting.dart';
import 'destiny2_core_settings.dart';

import 'package:json_annotation/json_annotation.dart';
part 'core_settings_configuration.g.dart';

@JsonSerializable()
class CoreSettingsConfiguration {

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
	CoreSettingsConfiguration();

	factory CoreSettingsConfiguration.fromJson(Map<String, dynamic> json) => _$CoreSettingsConfigurationFromJson(json);
	
	Map<String, dynamic> toJson() => _$CoreSettingsConfigurationToJson(this);
}
