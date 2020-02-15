// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_source_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSourceBlockDefinition _$DestinyItemSourceBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSourceBlockDefinition()
    ..sourceHashes =
        (json['sourceHashes'] as List)?.map((e) => e as int)?.toList()
    ..sources = (json['sources'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSourceDefinition.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..exclusive = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['exclusive'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..vendorSources = (json['vendorSources'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemVendorSourceReference.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemSourceBlockDefinitionToJson(
        DestinyItemSourceBlockDefinition instance) =>
    <String, dynamic>{
      'sourceHashes': instance.sourceHashes,
      'sources': instance.sources,
      'exclusive': _$BungieMembershipTypeEnumMap[instance.exclusive],
      'vendorSources': instance.vendorSources,
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

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
