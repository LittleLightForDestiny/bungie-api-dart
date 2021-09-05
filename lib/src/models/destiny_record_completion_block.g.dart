// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_completion_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordCompletionBlock _$DestinyRecordCompletionBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordCompletionBlock()
    ..partialCompletionObjectiveCountThreshold =
        json['partialCompletionObjectiveCountThreshold'] as int?
    ..scoreValue = json['ScoreValue'] as int?
    ..shouldFireToast = json['shouldFireToast'] as bool?
    ..toastStyle = _$enumDecodeNullable(
        _$DestinyRecordToastStyleEnumMap, json['toastStyle'],
        unknownValue: DestinyRecordToastStyle.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyRecordCompletionBlockToJson(
        DestinyRecordCompletionBlock instance) =>
    <String, dynamic>{
      'partialCompletionObjectiveCountThreshold':
          instance.partialCompletionObjectiveCountThreshold,
      'ScoreValue': instance.scoreValue,
      'shouldFireToast': instance.shouldFireToast,
      'toastStyle': _$DestinyRecordToastStyleEnumMap[instance.toastStyle],
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

const _$DestinyRecordToastStyleEnumMap = {
  DestinyRecordToastStyle.None: 0,
  DestinyRecordToastStyle.Record: 1,
  DestinyRecordToastStyle.Lore: 2,
  DestinyRecordToastStyle.Badge: 3,
  DestinyRecordToastStyle.MetaRecord: 4,
  DestinyRecordToastStyle.MedalComplete: 5,
  DestinyRecordToastStyle.SeasonChallengeComplete: 6,
  DestinyRecordToastStyle.GildedTitleComplete: 7,
  DestinyRecordToastStyle.ProtectedInvalidEnumValue: 999999999,
};
