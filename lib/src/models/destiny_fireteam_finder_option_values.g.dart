// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionValues _$DestinyFireteamFinderOptionValuesFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionValues()
      ..optionalNull =
          json['optionalNull'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['optionalNull'] as Map<String, dynamic>,
              )
      ..optionalFormatString = json['optionalFormatString'] as String?
      ..displayFormatType = decodeFireteamFinderOptionDisplayFormat(
        json['displayFormatType'],
      )
      ..type = decodeFireteamFinderOptionValueProviderType(json['type'])
      ..valueDefinitions =
          (json['valueDefinitions'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderOptionValueDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyFireteamFinderOptionValuesToJson(
  DestinyFireteamFinderOptionValues instance,
) => <String, dynamic>{
  'optionalNull': instance.optionalNull?.toJson(),
  'optionalFormatString': instance.optionalFormatString,
  'displayFormatType': encodeFireteamFinderOptionDisplayFormat(
    instance.displayFormatType,
  ),
  'type': encodeFireteamFinderOptionValueProviderType(instance.type),
  'valueDefinitions':
      instance.valueDefinitions?.map((e) => e.toJson()).toList(),
};
