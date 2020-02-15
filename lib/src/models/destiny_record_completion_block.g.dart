// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_completion_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordCompletionBlock _$DestinyRecordCompletionBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordCompletionBlock()
    ..partialCompletionObjectiveCountThreshold =
        json['partialCompletionObjectiveCountThreshold'] as int
    ..scoreValue = json['ScoreValue'] as int
    ..shouldFireToast = json['shouldFireToast'] as bool
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

const _$DestinyRecordToastStyleEnumMap = {
  DestinyRecordToastStyle.None: 0,
  DestinyRecordToastStyle.Record: 1,
  DestinyRecordToastStyle.Lore: 2,
  DestinyRecordToastStyle.Badge: 3,
  DestinyRecordToastStyle.MetaRecord: 4,
  DestinyRecordToastStyle.MedalComplete: 5,
  DestinyRecordToastStyle.ProtectedInvalidEnumValue: 999999999,
};
