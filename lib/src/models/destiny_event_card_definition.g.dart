// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_event_card_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEventCardDefinition _$DestinyEventCardDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEventCardDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..linkRedirectPath = json['linkRedirectPath'] as String?
      ..color =
          json['color'] == null
              ? null
              : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..images =
          json['images'] == null
              ? null
              : DestinyEventCardImages.fromJson(
                json['images'] as Map<String, dynamic>,
              )
      ..triumphsPresentationNodeHash =
          (json['triumphsPresentationNodeHash'] as num?)?.toInt()
      ..sealPresentationNodeHash =
          (json['sealPresentationNodeHash'] as num?)?.toInt()
      ..eventCardCurrencyList =
          (json['eventCardCurrencyList'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..ticketCurrencyItemHash =
          (json['ticketCurrencyItemHash'] as num?)?.toInt()
      ..ticketVendorHash = (json['ticketVendorHash'] as num?)?.toInt()
      ..ticketVendorCategoryHash =
          (json['ticketVendorCategoryHash'] as num?)?.toInt()
      ..endTime = json['endTime'] as String?
      ..rewardProgressionHash = (json['rewardProgressionHash'] as num?)?.toInt()
      ..weeklyChallengesPresentationNodeHash =
          (json['weeklyChallengesPresentationNodeHash'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyEventCardDefinitionToJson(
  DestinyEventCardDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'linkRedirectPath': instance.linkRedirectPath,
  'color': instance.color?.toJson(),
  'images': instance.images?.toJson(),
  'triumphsPresentationNodeHash': instance.triumphsPresentationNodeHash,
  'sealPresentationNodeHash': instance.sealPresentationNodeHash,
  'eventCardCurrencyList': instance.eventCardCurrencyList,
  'ticketCurrencyItemHash': instance.ticketCurrencyItemHash,
  'ticketVendorHash': instance.ticketVendorHash,
  'ticketVendorCategoryHash': instance.ticketVendorCategoryHash,
  'endTime': instance.endTime,
  'rewardProgressionHash': instance.rewardProgressionHash,
  'weeklyChallengesPresentationNodeHash':
      instance.weeklyChallengesPresentationNodeHash,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
