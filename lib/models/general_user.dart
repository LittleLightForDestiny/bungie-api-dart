import 'user_to_user_context.dart';
class GeneralUser{
	int membershipId;
	String uniqueName;
	String normalizedName;
	String displayName;
	int profilePicture;
	int profileTheme;
	int userTitle;
	int successMessageFlags;
	bool isDeleted;
	String about;
	String firstAccess;
	String lastUpdate;
	int legacyPortalUid;
	UserToUserContext context;
	String psnDisplayName;
	String xboxDisplayName;
	String fbDisplayName;
	bool showActivity;
	String locale;
	bool localeInheritDefault;
	int lastBanReportId;
	bool showGroupMessaging;
	String profilePicturePath;
	String profilePictureWidePath;
	String profileThemeName;
	String userTitleDisplay;
	String statusText;
	String statusDate;
	String profileBanExpire;
	String blizzardDisplayName;
	GeneralUser(
		int this.membershipId,
		String this.uniqueName,
		String this.normalizedName,
		String this.displayName,
		int this.profilePicture,
		int this.profileTheme,
		int this.userTitle,
		int this.successMessageFlags,
		bool this.isDeleted,
		String this.about,
		String this.firstAccess,
		String this.lastUpdate,
		int this.legacyPortalUid,
		UserToUserContext this.context,
		String this.psnDisplayName,
		String this.xboxDisplayName,
		String this.fbDisplayName,
		bool this.showActivity,
		String this.locale,
		bool this.localeInheritDefault,
		int this.lastBanReportId,
		bool this.showGroupMessaging,
		String this.profilePicturePath,
		String this.profilePictureWidePath,
		String this.profileThemeName,
		String this.userTitleDisplay,
		String this.statusText,
		String this.statusDate,
		String this.profileBanExpire,
		String this.blizzardDisplayName,
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
				UserToUserContext.fromMap(data['context']),
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
			data['membershipId'] = membershipId;
			data['uniqueName'] = uniqueName;
			data['normalizedName'] = normalizedName;
			data['displayName'] = displayName;
			data['profilePicture'] = profilePicture;
			data['profileTheme'] = profileTheme;
			data['userTitle'] = userTitle;
			data['successMessageFlags'] = successMessageFlags;
			data['isDeleted'] = isDeleted;
			data['about'] = about;
			data['firstAccess'] = firstAccess;
			data['lastUpdate'] = lastUpdate;
			data['legacyPortalUID'] = legacyPortalUid;
			data['context'] = context.toMap();
			data['psnDisplayName'] = psnDisplayName;
			data['xboxDisplayName'] = xboxDisplayName;
			data['fbDisplayName'] = fbDisplayName;
			data['showActivity'] = showActivity;
			data['locale'] = locale;
			data['localeInheritDefault'] = localeInheritDefault;
			data['lastBanReportId'] = lastBanReportId;
			data['showGroupMessaging'] = showGroupMessaging;
			data['profilePicturePath'] = profilePicturePath;
			data['profilePictureWidePath'] = profilePictureWidePath;
			data['profileThemeName'] = profileThemeName;
			data['userTitleDisplay'] = userTitleDisplay;
			data['statusText'] = statusText;
			data['statusDate'] = statusDate;
			data['profileBanExpire'] = profileBanExpire;
			data['blizzardDisplayName'] = blizzardDisplayName;
	}
}