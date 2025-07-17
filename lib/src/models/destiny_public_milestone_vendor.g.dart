// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneVendor _$DestinyPublicMilestoneVendorFromJson(
        Map<String, dynamic> json) =>
    DestinyPublicMilestoneVendor()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..previewItemHash = (json['previewItemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPublicMilestoneVendorToJson(
        DestinyPublicMilestoneVendor instance) =>
    <String, dynamic>{
      'vendorHash': instance.vendorHash,
      'previewItemHash': instance.previewItemHash,
    };
