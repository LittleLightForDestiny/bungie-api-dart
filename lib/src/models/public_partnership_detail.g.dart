// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_partnership_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicPartnershipDetail _$PublicPartnershipDetailFromJson(
    Map<String, dynamic> json) {
  return PublicPartnershipDetail()
    ..partnerType = _$enumDecodeNullable(
        _$PartnershipTypeEnumMap, json['partnerType'],
        unknownValue: PartnershipType.ProtectedInvalidEnumValue)
    ..identifier = json['identifier'] as String
    ..name = json['name'] as String
    ..icon = json['icon'] as String;
}

Map<String, dynamic> _$PublicPartnershipDetailToJson(
        PublicPartnershipDetail instance) =>
    <String, dynamic>{
      'partnerType': _$PartnershipTypeEnumMap[instance.partnerType],
      'identifier': instance.identifier,
      'name': instance.name,
      'icon': instance.icon,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$PartnershipTypeEnumMap = {
  PartnershipType.None: 0,
  PartnershipType.Twitch: 1,
  PartnershipType.ProtectedInvalidEnumValue: 999999999,
};
