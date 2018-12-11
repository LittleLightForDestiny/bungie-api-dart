import 'core_system.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'core_setting.dart';
import 'destiny2_core_settings.dart';
class CoreSettingsConfiguration{
	Map<CoreSystem, dynamic> systems;
	List<CoreSetting> ignoreReasons;
	List<CoreSetting> forumCategories;
	List<CoreSetting> groupAvatars;
	List<CoreSetting> destinyMembershipTypes;
	List<CoreSetting> recruitmentPlatformTags;
	List<CoreSetting> recruitmentMiscTags;
	List<CoreSetting> recruitmentActivities;
	List<CoreSetting> userContentLocales;
	List<CoreSetting> systemContentLocales;
	List<CoreSetting> clanBannerDecals;
	List<CoreSetting> clanBannerDecalColors;
	List<CoreSetting> clanBannerGonfalons;
	List<CoreSetting> clanBannerGonfalonColors;
	List<CoreSetting> clanBannerGonfalonDetails;
	List<CoreSetting> clanBannerGonfalonDetailColors;
	List<CoreSetting> clanBannerStandards;
	Destiny2CoreSettings destiny2CoreSettings;
	CoreSettingsConfiguration(
		Map<CoreSystem, dynamic> this.systems,
		List<CoreSetting> this.ignoreReasons,
		List<CoreSetting> this.forumCategories,
		List<CoreSetting> this.groupAvatars,
		List<CoreSetting> this.destinyMembershipTypes,
		List<CoreSetting> this.recruitmentPlatformTags,
		List<CoreSetting> this.recruitmentMiscTags,
		List<CoreSetting> this.recruitmentActivities,
		List<CoreSetting> this.userContentLocales,
		List<CoreSetting> this.systemContentLocales,
		List<CoreSetting> this.clanBannerDecals,
		List<CoreSetting> this.clanBannerDecalColors,
		List<CoreSetting> this.clanBannerGonfalons,
		List<CoreSetting> this.clanBannerGonfalonColors,
		List<CoreSetting> this.clanBannerGonfalonDetails,
		List<CoreSetting> this.clanBannerGonfalonDetailColors,
		List<CoreSetting> this.clanBannerStandards,
		Destiny2CoreSettings this.destiny2CoreSettings,
	);

	static CoreSettingsConfiguration fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSettingsConfiguration(
				data['systems'],
				CoreSetting.fromList(data['ignoreReasons']),
				CoreSetting.fromList(data['forumCategories']),
				CoreSetting.fromList(data['groupAvatars']),
				CoreSetting.fromList(data['destinyMembershipTypes']),
				CoreSetting.fromList(data['recruitmentPlatformTags']),
				CoreSetting.fromList(data['recruitmentMiscTags']),
				CoreSetting.fromList(data['recruitmentActivities']),
				CoreSetting.fromList(data['userContentLocales']),
				CoreSetting.fromList(data['systemContentLocales']),
				CoreSetting.fromList(data['clanBannerDecals']),
				CoreSetting.fromList(data['clanBannerDecalColors']),
				CoreSetting.fromList(data['clanBannerGonfalons']),
				CoreSetting.fromList(data['clanBannerGonfalonColors']),
				CoreSetting.fromList(data['clanBannerGonfalonDetails']),
				CoreSetting.fromList(data['clanBannerGonfalonDetailColors']),
				CoreSetting.fromList(data['clanBannerStandards']),
				Destiny2CoreSettings.fromJson(data['destiny2CoreSettings']),
		);
	}

	static List<CoreSettingsConfiguration> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSettingsConfiguration> list = new List();
    data.forEach((item) {
      list.add(CoreSettingsConfiguration.fromJson(item));
    });
    return list;
	}
}