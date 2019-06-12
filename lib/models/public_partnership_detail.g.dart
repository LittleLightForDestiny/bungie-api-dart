// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_partnership_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicPartnershipDetail _$PublicPartnershipDetailFromJson(
    Map<String, dynamic> json) {
  return PublicPartnershipDetail()
    ..partnerType = json['partnerType'] as int
    ..identifier = json['identifier'] as String
    ..name = json['name'] as String
    ..icon = json['icon'] as String;
}

Map<String, dynamic> _$PublicPartnershipDetailToJson(
        PublicPartnershipDetail instance) =>
    <String, dynamic>{
      'partnerType': instance.partnerType,
      'identifier': instance.identifier,
      'name': instance.name,
      'icon': instance.icon
    };
