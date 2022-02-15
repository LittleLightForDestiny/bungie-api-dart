// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponent _$DestinyItemComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyItemComponent()
      ..itemHash = json['itemHash'] as int?
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..quantity = json['quantity'] as int?
      ..bindStatus = decodeItemBindStatus(json['bindStatus'])
      ..location = decodeItemLocation(json['location'])
      ..bucketHash = json['bucketHash'] as int?
      ..transferStatus = json['transferStatus'] == null
          ? null
          : TransferStatuses.fromJson(json['transferStatus'] as int)
      ..lockable = json['lockable'] as bool?
      ..state = json['state'] == null
          ? null
          : ItemState.fromJson(json['state'] as int)
      ..overrideStyleItemHash = json['overrideStyleItemHash'] as int?
      ..expirationDate = json['expirationDate'] as String?
      ..isWrapper = json['isWrapper'] as bool?
      ..tooltipNotificationIndexes =
          (json['tooltipNotificationIndexes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
      ..metricHash = json['metricHash'] as int?
      ..metricObjective = json['metricObjective'] == null
          ? null
          : DestinyObjectiveProgress.fromJson(
              json['metricObjective'] as Map<String, dynamic>)
      ..versionNumber = json['versionNumber'] as int?
      ..itemValueVisibility = (json['itemValueVisibility'] as List<dynamic>?)
          ?.map((e) => e as bool)
          .toList();

Map<String, dynamic> _$DestinyItemComponentToJson(
        DestinyItemComponent instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'bindStatus': encodeItemBindStatus(instance.bindStatus),
      'location': encodeItemLocation(instance.location),
      'bucketHash': instance.bucketHash,
      'transferStatus': instance.transferStatus,
      'lockable': instance.lockable,
      'state': instance.state,
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'expirationDate': instance.expirationDate,
      'isWrapper': instance.isWrapper,
      'tooltipNotificationIndexes': instance.tooltipNotificationIndexes,
      'metricHash': instance.metricHash,
      'metricObjective': instance.metricObjective,
      'versionNumber': instance.versionNumber,
      'itemValueVisibility': instance.itemValueVisibility,
    };
