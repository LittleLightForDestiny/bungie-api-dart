import 'core_system.dart';
import 'core_setting.dart';
import 'destiny2_core_settings.dart';

/**  */
class CoreSettingsConfiguration{
	
	/**  */
	Map<String, CoreSystem> systems;
	
	/**  */
	List<CoreSetting> ignoreReasons;
	
	/**  */
	List<CoreSetting> forumCategories;
	
	/**  */
	List<CoreSetting> groupAvatars;
	
	/**  */
	List<CoreSetting> destinyMembershipTypes;
	
	/**  */
	List<CoreSetting> recruitmentPlatformTags;
	
	/**  */
	List<CoreSetting> recruitmentMiscTags;
	
	/**  */
	List<CoreSetting> recruitmentActivities;
	
	/**  */
	List<CoreSetting> userContentLocales;
	
	/**  */
	List<CoreSetting> systemContentLocales;
	
	/**  */
	List<CoreSetting> clanBannerDecals;
	
	/**  */
	List<CoreSetting> clanBannerDecalColors;
	
	/**  */
	List<CoreSetting> clanBannerGonfalons;
	
	/**  */
	List<CoreSetting> clanBannerGonfalonColors;
	
	/**  */
	List<CoreSetting> clanBannerGonfalonDetails;
	
	/**  */
	List<CoreSetting> clanBannerGonfalonDetailColors;
	
	/**  */
	List<CoreSetting> clanBannerStandards;
	
	/**  */
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
			data['systems'] = this.systems != null? this.systems.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['ignoreReasons'] = this.ignoreReasons != null? this.ignoreReasons.map((item)=>item.toMap()).toList() : null;
			data['forumCategories'] = this.forumCategories != null? this.forumCategories.map((item)=>item.toMap()).toList() : null;
			data['groupAvatars'] = this.groupAvatars != null? this.groupAvatars.map((item)=>item.toMap()).toList() : null;
			data['destinyMembershipTypes'] = this.destinyMembershipTypes != null? this.destinyMembershipTypes.map((item)=>item.toMap()).toList() : null;
			data['recruitmentPlatformTags'] = this.recruitmentPlatformTags != null? this.recruitmentPlatformTags.map((item)=>item.toMap()).toList() : null;
			data['recruitmentMiscTags'] = this.recruitmentMiscTags != null? this.recruitmentMiscTags.map((item)=>item.toMap()).toList() : null;
			data['recruitmentActivities'] = this.recruitmentActivities != null? this.recruitmentActivities.map((item)=>item.toMap()).toList() : null;
			data['userContentLocales'] = this.userContentLocales != null? this.userContentLocales.map((item)=>item.toMap()).toList() : null;
			data['systemContentLocales'] = this.systemContentLocales != null? this.systemContentLocales.map((item)=>item.toMap()).toList() : null;
			data['clanBannerDecals'] = this.clanBannerDecals != null? this.clanBannerDecals.map((item)=>item.toMap()).toList() : null;
			data['clanBannerDecalColors'] = this.clanBannerDecalColors != null? this.clanBannerDecalColors.map((item)=>item.toMap()).toList() : null;
			data['clanBannerGonfalons'] = this.clanBannerGonfalons != null? this.clanBannerGonfalons.map((item)=>item.toMap()).toList() : null;
			data['clanBannerGonfalonColors'] = this.clanBannerGonfalonColors != null? this.clanBannerGonfalonColors.map((item)=>item.toMap()).toList() : null;
			data['clanBannerGonfalonDetails'] = this.clanBannerGonfalonDetails != null? this.clanBannerGonfalonDetails.map((item)=>item.toMap()).toList() : null;
			data['clanBannerGonfalonDetailColors'] = this.clanBannerGonfalonDetailColors != null? this.clanBannerGonfalonDetailColors.map((item)=>item.toMap()).toList() : null;
			data['clanBannerStandards'] = this.clanBannerStandards != null? this.clanBannerStandards.map((item)=>item.toMap()).toList() : null;
			data['destiny2CoreSettings'] = this.destiny2CoreSettings != null? this.destiny2CoreSettings.toMap() : null;
		return data;
	}
}