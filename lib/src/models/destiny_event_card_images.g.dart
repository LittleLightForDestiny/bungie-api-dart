// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_event_card_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEventCardImages _$DestinyEventCardImagesFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEventCardImages()
      ..unownedCardSleeveImagePath =
          json['unownedCardSleeveImagePath'] as String?
      ..unownedCardSleeveWrapImagePath =
          json['unownedCardSleeveWrapImagePath'] as String?
      ..cardIncompleteImagePath = json['cardIncompleteImagePath'] as String?
      ..cardCompleteImagePath = json['cardCompleteImagePath'] as String?
      ..cardCompleteWrapImagePath = json['cardCompleteWrapImagePath'] as String?
      ..progressIconImagePath = json['progressIconImagePath'] as String?
      ..themeBackgroundImagePath = json['themeBackgroundImagePath'] as String?;

Map<String, dynamic> _$DestinyEventCardImagesToJson(
  DestinyEventCardImages instance,
) => <String, dynamic>{
  'unownedCardSleeveImagePath': instance.unownedCardSleeveImagePath,
  'unownedCardSleeveWrapImagePath': instance.unownedCardSleeveWrapImagePath,
  'cardIncompleteImagePath': instance.cardIncompleteImagePath,
  'cardCompleteImagePath': instance.cardCompleteImagePath,
  'cardCompleteWrapImagePath': instance.cardCompleteWrapImagePath,
  'progressIconImagePath': instance.progressIconImagePath,
  'themeBackgroundImagePath': instance.themeBackgroundImagePath,
};
