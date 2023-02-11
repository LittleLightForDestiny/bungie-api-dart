// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_settings_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreSettingsConfiguration _$CoreSettingsConfigurationFromJson(
        Map<String, dynamic> json) =>
    CoreSettingsConfiguration()
      ..environment = json['environment'] as String?
      ..systems = (json['systems'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, CoreSystem.fromJson(e as Map<String, dynamic>)),
      )
      ..ignoreReasons = (json['ignoreReasons'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..forumCategories = (json['forumCategories'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..groupAvatars = (json['groupAvatars'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..defaultGroupTheme = json['defaultGroupTheme'] == null
          ? null
          : CoreSetting.fromJson(
              json['defaultGroupTheme'] as Map<String, dynamic>)
      ..destinyMembershipTypes =
          (json['destinyMembershipTypes'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..recruitmentPlatformTags =
          (json['recruitmentPlatformTags'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..recruitmentMiscTags = (json['recruitmentMiscTags'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..recruitmentActivities =
          (json['recruitmentActivities'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..userContentLocales = (json['userContentLocales'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..systemContentLocales = (json['systemContentLocales'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..clanBannerDecals = (json['clanBannerDecals'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..clanBannerDecalColors =
          (json['clanBannerDecalColors'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..clanBannerGonfalons = (json['clanBannerGonfalons'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..clanBannerGonfalonColors =
          (json['clanBannerGonfalonColors'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..clanBannerGonfalonDetails =
          (json['clanBannerGonfalonDetails'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..clanBannerGonfalonDetailColors =
          (json['clanBannerGonfalonDetailColors'] as List<dynamic>?)
              ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
              .toList()
      ..clanBannerStandards = (json['clanBannerStandards'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList()
      ..destiny2CoreSettings = json['destiny2CoreSettings'] == null
          ? null
          : Destiny2CoreSettings.fromJson(
              json['destiny2CoreSettings'] as Map<String, dynamic>)
      ..emailSettings = json['emailSettings'] == null
          ? null
          : EmailSettings.fromJson(
              json['emailSettings'] as Map<String, dynamic>)
      ..fireteamActivities = (json['fireteamActivities'] as List<dynamic>?)
          ?.map((e) => CoreSetting.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CoreSettingsConfigurationToJson(
        CoreSettingsConfiguration instance) =>
    <String, dynamic>{
      'environment': instance.environment,
      'systems': instance.systems?.map((k, e) => MapEntry(k, e.toJson())),
      'ignoreReasons': instance.ignoreReasons?.map((e) => e.toJson()).toList(),
      'forumCategories':
          instance.forumCategories?.map((e) => e.toJson()).toList(),
      'groupAvatars': instance.groupAvatars?.map((e) => e.toJson()).toList(),
      'defaultGroupTheme': instance.defaultGroupTheme?.toJson(),
      'destinyMembershipTypes':
          instance.destinyMembershipTypes?.map((e) => e.toJson()).toList(),
      'recruitmentPlatformTags':
          instance.recruitmentPlatformTags?.map((e) => e.toJson()).toList(),
      'recruitmentMiscTags':
          instance.recruitmentMiscTags?.map((e) => e.toJson()).toList(),
      'recruitmentActivities':
          instance.recruitmentActivities?.map((e) => e.toJson()).toList(),
      'userContentLocales':
          instance.userContentLocales?.map((e) => e.toJson()).toList(),
      'systemContentLocales':
          instance.systemContentLocales?.map((e) => e.toJson()).toList(),
      'clanBannerDecals':
          instance.clanBannerDecals?.map((e) => e.toJson()).toList(),
      'clanBannerDecalColors':
          instance.clanBannerDecalColors?.map((e) => e.toJson()).toList(),
      'clanBannerGonfalons':
          instance.clanBannerGonfalons?.map((e) => e.toJson()).toList(),
      'clanBannerGonfalonColors':
          instance.clanBannerGonfalonColors?.map((e) => e.toJson()).toList(),
      'clanBannerGonfalonDetails':
          instance.clanBannerGonfalonDetails?.map((e) => e.toJson()).toList(),
      'clanBannerGonfalonDetailColors': instance.clanBannerGonfalonDetailColors
          ?.map((e) => e.toJson())
          .toList(),
      'clanBannerStandards':
          instance.clanBannerStandards?.map((e) => e.toJson()).toList(),
      'destiny2CoreSettings': instance.destiny2CoreSettings?.toJson(),
      'emailSettings': instance.emailSettings?.toJson(),
      'fireteamActivities':
          instance.fireteamActivities?.map((e) => e.toJson()).toList(),
    };
