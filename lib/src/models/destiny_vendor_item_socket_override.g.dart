// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_item_socket_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorItemSocketOverride _$DestinyVendorItemSocketOverrideFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorItemSocketOverride()
      ..singleItemHash = (json['singleItemHash'] as num?)?.toInt()
      ..randomizedOptionsCount =
          (json['randomizedOptionsCount'] as num?)?.toInt()
      ..socketTypeHash = (json['socketTypeHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyVendorItemSocketOverrideToJson(
  DestinyVendorItemSocketOverride instance,
) => <String, dynamic>{
  'singleItemHash': instance.singleItemHash,
  'randomizedOptionsCount': instance.randomizedOptionsCount,
  'socketTypeHash': instance.socketTypeHash,
};
