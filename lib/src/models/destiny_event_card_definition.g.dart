// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_event_card_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEventCardDefinition _$DestinyEventCardDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyEventCardDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..linkRedirectPath = json['linkRedirectPath'] as String?
      ..color = json['color'] == null
          ? null
          : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..images = json['images'] == null
          ? null
          : DestinyEventCardImages.fromJson(
              json['images'] as Map<String, dynamic>)
      ..triumphsPresentationNodeHash =
          json['triumphsPresentationNodeHash'] as int?
      ..sealPresentationNodeHash = json['sealPresentationNodeHash'] as int?
      ..ticketCurrencyItemHash = json['ticketCurrencyItemHash'] as int?
      ..ticketVendorHash = json['ticketVendorHash'] as int?
      ..ticketVendorCategoryHash = json['ticketVendorCategoryHash'] as int?
      ..endTime = json['endTime'] as String?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyEventCardDefinitionToJson(
        DestinyEventCardDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'linkRedirectPath': instance.linkRedirectPath,
      'color': instance.color?.toJson(),
      'images': instance.images?.toJson(),
      'triumphsPresentationNodeHash': instance.triumphsPresentationNodeHash,
      'sealPresentationNodeHash': instance.sealPresentationNodeHash,
      'ticketCurrencyItemHash': instance.ticketCurrencyItemHash,
      'ticketVendorHash': instance.ticketVendorHash,
      'ticketVendorCategoryHash': instance.ticketVendorCategoryHash,
      'endTime': instance.endTime,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
