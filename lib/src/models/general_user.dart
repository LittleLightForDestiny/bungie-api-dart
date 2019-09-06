import 'user_to_user_context.dart';

import 'package:json_annotation/json_annotation.dart';
part 'general_user.g.dart';

@JsonSerializable()
class GeneralUser {

	@JsonKey(name:'membershipId')
	String membershipId;

	@JsonKey(name:'uniqueName')
	String uniqueName;

	@JsonKey(name:'normalizedName')
	String normalizedName;

	@JsonKey(name:'displayName')
	String displayName;

	@JsonKey(name:'profilePicture')
	int profilePicture;

	@JsonKey(name:'profileTheme')
	int profileTheme;

	@JsonKey(name:'userTitle')
	int userTitle;

	@JsonKey(name:'successMessageFlags')
	String successMessageFlags;

	@JsonKey(name:'isDeleted')
	bool isDeleted;

	@JsonKey(name:'about')
	String about;

	@JsonKey(name:'firstAccess')
	String firstAccess;

	@JsonKey(name:'lastUpdate')
	String lastUpdate;

	@JsonKey(name:'legacyPortalUID')
	String legacyPortalUid;

	@JsonKey(name:'context')
	UserToUserContext context;

	@JsonKey(name:'psnDisplayName')
	String psnDisplayName;

	@JsonKey(name:'xboxDisplayName')
	String xboxDisplayName;

	@JsonKey(name:'fbDisplayName')
	String fbDisplayName;

	@JsonKey(name:'showActivity')
	bool showActivity;

	@JsonKey(name:'locale')
	String locale;

	@JsonKey(name:'localeInheritDefault')
	bool localeInheritDefault;

	@JsonKey(name:'lastBanReportId')
	String lastBanReportId;

	@JsonKey(name:'showGroupMessaging')
	bool showGroupMessaging;

	@JsonKey(name:'profilePicturePath')
	String profilePicturePath;

	@JsonKey(name:'profilePictureWidePath')
	String profilePictureWidePath;

	@JsonKey(name:'profileThemeName')
	String profileThemeName;

	@JsonKey(name:'userTitleDisplay')
	String userTitleDisplay;

	@JsonKey(name:'statusText')
	String statusText;

	@JsonKey(name:'statusDate')
	String statusDate;

	@JsonKey(name:'profileBanExpire')
	String profileBanExpire;

	@JsonKey(name:'blizzardDisplayName')
	String blizzardDisplayName;
	GeneralUser();

	factory GeneralUser.fromJson(Map<String, dynamic> json) => _$GeneralUserFromJson(json);
	
	Map<String, dynamic> toJson() => _$GeneralUserToJson(this);
}
