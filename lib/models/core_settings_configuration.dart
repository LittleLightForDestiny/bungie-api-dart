import 'core_system.dart';
import 'core_setting.dart';
import 'destiny2_core_settings.dart';
class CoreSettingsConfiguration{
	Map<String, CoreSystem> systems;
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
		this.systems,
		this.ignoreReasons,
		this.forumCategories,
		this.groupAvatars,
		this.destinyMembershipTypes,
		this.recruitmentPlatformTags,
		this.recruitmentMiscTags,
		this.recruitmentActivities,
		this.userContentLocales,
		this.systemContentLocales,
		this.clanBannerDecals,
		this.clanBannerDecalColors,
		this.clanBannerGonfalons,
		this.clanBannerGonfalonColors,
		this.clanBannerGonfalonDetails,
		this.clanBannerGonfalonDetailColors,
		this.clanBannerStandards,
		this.destiny2CoreSettings,
	);

	static CoreSettingsConfiguration fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CoreSettingsConfiguration(
				data['systems'] != null ? Map<String, CoreSystem>.from(data['systems'].map((k, v)=>MapEntry(k, CoreSystem.fromMap(v)))) : null,
				data['ignoreReasons'] != null ? CoreSetting.fromList(data['ignoreReasons']) : null,
				data['forumCategories'] != null ? CoreSetting.fromList(data['forumCategories']) : null,
				data['groupAvatars'] != null ? CoreSetting.fromList(data['groupAvatars']) : null,
				data['destinyMembershipTypes'] != null ? CoreSetting.fromList(data['destinyMembershipTypes']) : null,
				data['recruitmentPlatformTags'] != null ? CoreSetting.fromList(data['recruitmentPlatformTags']) : null,
				data['recruitmentMiscTags'] != null ? CoreSetting.fromList(data['recruitmentMiscTags']) : null,
				data['recruitmentActivities'] != null ? CoreSetting.fromList(data['recruitmentActivities']) : null,
				data['userContentLocales'] != null ? CoreSetting.fromList(data['userContentLocales']) : null,
				data['systemContentLocales'] != null ? CoreSetting.fromList(data['systemContentLocales']) : null,
				data['clanBannerDecals'] != null ? CoreSetting.fromList(data['clanBannerDecals']) : null,
				data['clanBannerDecalColors'] != null ? CoreSetting.fromList(data['clanBannerDecalColors']) : null,
				data['clanBannerGonfalons'] != null ? CoreSetting.fromList(data['clanBannerGonfalons']) : null,
				data['clanBannerGonfalonColors'] != null ? CoreSetting.fromList(data['clanBannerGonfalonColors']) : null,
				data['clanBannerGonfalonDetails'] != null ? CoreSetting.fromList(data['clanBannerGonfalonDetails']) : null,
				data['clanBannerGonfalonDetailColors'] != null ? CoreSetting.fromList(data['clanBannerGonfalonDetailColors']) : null,
				data['clanBannerStandards'] != null ? CoreSetting.fromList(data['clanBannerStandards']) : null,
				data['destiny2CoreSettings'] != null ? Destiny2CoreSettings.fromMap(data['destiny2CoreSettings']) : null,
		);
	}

	static List<CoreSettingsConfiguration> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CoreSettingsConfiguration> list = new List();
    data.forEach((item) {
      list.add(CoreSettingsConfiguration.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['systems'] = this.systems;
			data['ignoreReasons'] = this.ignoreReasons.map((item)=>item.toMap()).toList();
			data['forumCategories'] = this.forumCategories.map((item)=>item.toMap()).toList();
			data['groupAvatars'] = this.groupAvatars.map((item)=>item.toMap()).toList();
			data['destinyMembershipTypes'] = this.destinyMembershipTypes.map((item)=>item.toMap()).toList();
			data['recruitmentPlatformTags'] = this.recruitmentPlatformTags.map((item)=>item.toMap()).toList();
			data['recruitmentMiscTags'] = this.recruitmentMiscTags.map((item)=>item.toMap()).toList();
			data['recruitmentActivities'] = this.recruitmentActivities.map((item)=>item.toMap()).toList();
			data['userContentLocales'] = this.userContentLocales.map((item)=>item.toMap()).toList();
			data['systemContentLocales'] = this.systemContentLocales.map((item)=>item.toMap()).toList();
			data['clanBannerDecals'] = this.clanBannerDecals.map((item)=>item.toMap()).toList();
			data['clanBannerDecalColors'] = this.clanBannerDecalColors.map((item)=>item.toMap()).toList();
			data['clanBannerGonfalons'] = this.clanBannerGonfalons.map((item)=>item.toMap()).toList();
			data['clanBannerGonfalonColors'] = this.clanBannerGonfalonColors.map((item)=>item.toMap()).toList();
			data['clanBannerGonfalonDetails'] = this.clanBannerGonfalonDetails.map((item)=>item.toMap()).toList();
			data['clanBannerGonfalonDetailColors'] = this.clanBannerGonfalonDetailColors.map((item)=>item.toMap()).toList();
			data['clanBannerStandards'] = this.clanBannerStandards.map((item)=>item.toMap()).toList();
			data['destiny2CoreSettings'] = this.destiny2CoreSettings.toMap();
		return data;
	}
}