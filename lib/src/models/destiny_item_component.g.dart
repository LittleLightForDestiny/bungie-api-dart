// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponent _$DestinyItemComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyItemComponent()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..itemInstanceId = json['itemInstanceId'] as String?
      ..quantity = (json['quantity'] as num?)?.toInt()
      ..bindStatus = decodeItemBindStatus(json['bindStatus'])
      ..location = decodeItemLocation(json['location'])
      ..bucketHash = (json['bucketHash'] as num?)?.toInt()
      ..transferStatus = json['transferStatus'] == null
          ? null
          : TransferStatuses.fromJson((json['transferStatus'] as num).toInt())
      ..lockable = json['lockable'] as bool?
      ..state = json['state'] == null
          ? null
          : ItemState.fromJson((json['state'] as num).toInt())
      ..overrideStyleItemHash = (json['overrideStyleItemHash'] as num?)?.toInt()
      ..expirationDate = json['expirationDate'] as String?
      ..isWrapper = json['isWrapper'] as bool?
      ..tooltipNotificationIndexes =
          (json['tooltipNotificationIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..metricHash = (json['metricHash'] as num?)?.toInt()
      ..metricObjective = json['metricObjective'] == null
          ? null
          : DestinyObjectiveProgress.fromJson(
              json['metricObjective'] as Map<String, dynamic>)
      ..versionNumber = (json['versionNumber'] as num?)?.toInt()
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
      'transferStatus': instance.transferStatus?.toJson(),
      'lockable': instance.lockable,
      'state': instance.state?.toJson(),
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'expirationDate': instance.expirationDate,
      'isWrapper': instance.isWrapper,
      'tooltipNotificationIndexes': instance.tooltipNotificationIndexes,
      'metricHash': instance.metricHash,
      'metricObjective': instance.metricObjective?.toJson(),
      'versionNumber': instance.versionNumber,
      'itemValueVisibility': instance.itemValueVisibility,
    };
