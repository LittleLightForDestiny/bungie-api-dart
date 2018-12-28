import 'user_to_user_context.dart';

/*  */
class GeneralUser{
	
	/*  */
	String membershipId;
	
	/*  */
	String uniqueName;
	
	/*  */
	String normalizedName;
	
	/*  */
	String displayName;
	
	/*  */
	int profilePicture;
	
	/*  */
	int profileTheme;
	
	/*  */
	int userTitle;
	
	/*  */
	String successMessageFlags;
	
	/*  */
	bool isDeleted;
	
	/*  */
	String about;
	
	/*  */
	String firstAccess;
	
	/*  */
	String lastUpdate;
	
	/*  */
	String legacyPortalUid;
	
	/*  */
	UserToUserContext context;
	
	/*  */
	String psnDisplayName;
	
	/*  */
	String xboxDisplayName;
	
	/*  */
	String fbDisplayName;
	
	/*  */
	bool showActivity;
	
	/*  */
	String locale;
	
	/*  */
	bool localeInheritDefault;
	
	/*  */
	String lastBanReportId;
	
	/*  */
	bool showGroupMessaging;
	
	/*  */
	String profilePicturePath;
	
	/*  */
	String profilePictureWidePath;
	
	/*  */
	String profileThemeName;
	
	/*  */
	String userTitleDisplay;
	
	/*  */
	String statusText;
	
	/*  */
	String statusDate;
	
	/*  */
	String profileBanExpire;
	
	/*  */
	String blizzardDisplayName;
	GeneralUser(
		this.membershipId,
		this.uniqueName,
		this.normalizedName,
		this.displayName,
		this.profilePicture,
		this.profileTheme,
		this.userTitle,
		this.successMessageFlags,
		this.isDeleted,
		this.about,
		this.firstAccess,
		this.lastUpdate,
		this.legacyPortalUid,
		this.context,
		this.psnDisplayName,
		this.xboxDisplayName,
		this.fbDisplayName,
		this.showActivity,
		this.locale,
		this.localeInheritDefault,
		this.lastBanReportId,
		this.showGroupMessaging,
		this.profilePicturePath,
		this.profilePictureWidePath,
		this.profileThemeName,
		this.userTitleDisplay,
		this.statusText,
		this.statusDate,
		this.profileBanExpire,
		this.blizzardDisplayName,
	);

	static GeneralUser fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GeneralUser(
				data['membershipId'],
				data['uniqueName'],
				data['normalizedName'],
				data['displayName'],
				data['profilePicture'],
				data['profileTheme'],
				data['userTitle'],
				data['successMessageFlags'],
				data['isDeleted'],
				data['about'],
				data['firstAccess'],
				data['lastUpdate'],
				data['legacyPortalUID'],
				data['context'] != null ? UserToUserContext.fromMap(data['context']) : null,
				data['psnDisplayName'],
				data['xboxDisplayName'],
				data['fbDisplayName'],
				data['showActivity'],
				data['locale'],
				data['localeInheritDefault'],
				data['lastBanReportId'],
				data['showGroupMessaging'],
				data['profilePicturePath'],
				data['profilePictureWidePath'],
				data['profileThemeName'],
				data['userTitleDisplay'],
				data['statusText'],
				data['statusDate'],
				data['profileBanExpire'],
				data['blizzardDisplayName'],
		);
	}

	static List<GeneralUser> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GeneralUser> list = new List();
    data.forEach((item) {
      list.add(GeneralUser.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['membershipId'] = this.membershipId;
			data['uniqueName'] = this.uniqueName;
			data['normalizedName'] = this.normalizedName;
			data['displayName'] = this.displayName;
			data['profilePicture'] = this.profilePicture;
			data['profileTheme'] = this.profileTheme;
			data['userTitle'] = this.userTitle;
			data['successMessageFlags'] = this.successMessageFlags;
			data['isDeleted'] = this.isDeleted;
			data['about'] = this.about;
			data['firstAccess'] = this.firstAccess;
			data['lastUpdate'] = this.lastUpdate;
			data['legacyPortalUID'] = this.legacyPortalUid;
			data['context'] = this.context.toMap();
			data['psnDisplayName'] = this.psnDisplayName;
			data['xboxDisplayName'] = this.xboxDisplayName;
			data['fbDisplayName'] = this.fbDisplayName;
			data['showActivity'] = this.showActivity;
			data['locale'] = this.locale;
			data['localeInheritDefault'] = this.localeInheritDefault;
			data['lastBanReportId'] = this.lastBanReportId;
			data['showGroupMessaging'] = this.showGroupMessaging;
			data['profilePicturePath'] = this.profilePicturePath;
			data['profilePictureWidePath'] = this.profilePictureWidePath;
			data['profileThemeName'] = this.profileThemeName;
			data['userTitleDisplay'] = this.userTitleDisplay;
			data['statusText'] = this.statusText;
			data['statusDate'] = this.statusDate;
			data['profileBanExpire'] = this.profileBanExpire;
			data['blizzardDisplayName'] = this.blizzardDisplayName;
		return data;
	}
}