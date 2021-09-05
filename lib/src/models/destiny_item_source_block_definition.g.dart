// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_source_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSourceBlockDefinition _$DestinyItemSourceBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSourceBlockDefinition()
    ..sourceHashes =
        (json['sourceHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..sources = (json['sources'] as List<dynamic>?)
        ?.map((e) =>
            DestinyItemSourceDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..exclusive = _$enumDecodeNullable(
        _$BungieMembershipTypeEnumMap, json['exclusive'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..vendorSources = (json['vendorSources'] as List<dynamic>?)
        ?.map((e) => DestinyItemVendorSourceReference.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyItemSourceBlockDefinitionToJson(
        DestinyItemSourceBlockDefinition instance) =>
    <String, dynamic>{
      'sourceHashes': instance.sourceHashes,
      'sources': instance.sources,
      'exclusive': _$BungieMembershipTypeEnumMap[instance.exclusive],
      'vendorSources': instance.vendorSources,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
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
