// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralUser _$GeneralUserFromJson(Map<String, dynamic> json) =>
    GeneralUser()
      ..membershipId = json['membershipId'] as String?
      ..uniqueName = json['uniqueName'] as String?
      ..normalizedName = json['normalizedName'] as String?
      ..displayName = json['displayName'] as String?
      ..profilePicture = (json['profilePicture'] as num?)?.toInt()
      ..profileTheme = (json['profileTheme'] as num?)?.toInt()
      ..userTitle = (json['userTitle'] as num?)?.toInt()
      ..successMessageFlags = json['successMessageFlags'] as String?
      ..isDeleted = json['isDeleted'] as bool?
      ..about = json['about'] as String?
      ..firstAccess = json['firstAccess'] as String?
      ..lastUpdate = json['lastUpdate'] as String?
      ..legacyPortalUid = json['legacyPortalUID'] as String?
      ..context =
          json['context'] == null
              ? null
              : UserToUserContext.fromJson(
                json['context'] as Map<String, dynamic>,
              )
      ..psnDisplayName = json['psnDisplayName'] as String?
      ..xboxDisplayName = json['xboxDisplayName'] as String?
      ..fbDisplayName = json['fbDisplayName'] as String?
      ..showActivity = json['showActivity'] as bool?
      ..locale = json['locale'] as String?
      ..localeInheritDefault = json['localeInheritDefault'] as bool?
      ..lastBanReportId = json['lastBanReportId'] as String?
      ..showGroupMessaging = json['showGroupMessaging'] as bool?
      ..profilePicturePath = json['profilePicturePath'] as String?
      ..profilePictureWidePath = json['profilePictureWidePath'] as String?
      ..profileThemeName = json['profileThemeName'] as String?
      ..userTitleDisplay = json['userTitleDisplay'] as String?
      ..statusText = json['statusText'] as String?
      ..statusDate = json['statusDate'] as String?
      ..profileBanExpire = json['profileBanExpire'] as String?
      ..blizzardDisplayName = json['blizzardDisplayName'] as String?
      ..steamDisplayName = json['steamDisplayName'] as String?
      ..stadiaDisplayName = json['stadiaDisplayName'] as String?
      ..twitchDisplayName = json['twitchDisplayName'] as String?
      ..cachedBungieGlobalDisplayName =
          json['cachedBungieGlobalDisplayName'] as String?
      ..cachedBungieGlobalDisplayNameCode =
          (json['cachedBungieGlobalDisplayNameCode'] as num?)?.toInt()
      ..egsDisplayName = json['egsDisplayName'] as String?;

Map<String, dynamic> _$GeneralUserToJson(GeneralUser instance) =>
    <String, dynamic>{
      'membershipId': instance.membershipId,
      'uniqueName': instance.uniqueName,
      'normalizedName': instance.normalizedName,
      'displayName': instance.displayName,
      'profilePicture': instance.profilePicture,
      'profileTheme': instance.profileTheme,
      'userTitle': instance.userTitle,
      'successMessageFlags': instance.successMessageFlags,
      'isDeleted': instance.isDeleted,
      'about': instance.about,
      'firstAccess': instance.firstAccess,
      'lastUpdate': instance.lastUpdate,
      'legacyPortalUID': instance.legacyPortalUid,
      'context': instance.context?.toJson(),
      'psnDisplayName': instance.psnDisplayName,
      'xboxDisplayName': instance.xboxDisplayName,
      'fbDisplayName': instance.fbDisplayName,
      'showActivity': instance.showActivity,
      'locale': instance.locale,
      'localeInheritDefault': instance.localeInheritDefault,
      'lastBanReportId': instance.lastBanReportId,
      'showGroupMessaging': instance.showGroupMessaging,
      'profilePicturePath': instance.profilePicturePath,
      'profilePictureWidePath': instance.profilePictureWidePath,
      'profileThemeName': instance.profileThemeName,
      'userTitleDisplay': instance.userTitleDisplay,
      'statusText': instance.statusText,
      'statusDate': instance.statusDate,
      'profileBanExpire': instance.profileBanExpire,
      'blizzardDisplayName': instance.blizzardDisplayName,
      'steamDisplayName': instance.steamDisplayName,
      'stadiaDisplayName': instance.stadiaDisplayName,
      'twitchDisplayName': instance.twitchDisplayName,
      'cachedBungieGlobalDisplayName': instance.cachedBungieGlobalDisplayName,
      'cachedBungieGlobalDisplayNameCode':
          instance.cachedBungieGlobalDisplayNameCode,
      'egsDisplayName': instance.egsDisplayName,
    };
