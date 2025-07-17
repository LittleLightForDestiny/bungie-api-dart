// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneVendor _$DestinyMilestoneVendorFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMilestoneVendor()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..previewItemHash = (json['previewItemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneVendorToJson(
  DestinyMilestoneVendor instance,
) => <String, dynamic>{
  'vendorHash': instance.vendorHash,
  'previewItemHash': instance.previewItemHash,
};
