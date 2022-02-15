// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_completion_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordCompletionBlock _$DestinyRecordCompletionBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordCompletionBlock()
      ..partialCompletionObjectiveCountThreshold =
          json['partialCompletionObjectiveCountThreshold'] as int?
      ..scoreValue = json['ScoreValue'] as int?
      ..shouldFireToast = json['shouldFireToast'] as bool?
      ..toastStyle = decodeDestinyRecordToastStyle(json['toastStyle']);

Map<String, dynamic> _$DestinyRecordCompletionBlockToJson(
        DestinyRecordCompletionBlock instance) =>
    <String, dynamic>{
      'partialCompletionObjectiveCountThreshold':
          instance.partialCompletionObjectiveCountThreshold,
      'ScoreValue': instance.scoreValue,
      'shouldFireToast': instance.shouldFireToast,
      'toastStyle': encodeDestinyRecordToastStyle(instance.toastStyle),
    };
