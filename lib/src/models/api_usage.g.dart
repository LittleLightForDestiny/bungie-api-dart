// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiUsage _$ApiUsageFromJson(Map<String, dynamic> json) => ApiUsage()
  ..apiCalls = (json['apiCalls'] as List<dynamic>?)
      ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
      .toList()
  ..throttledRequests = (json['throttledRequests'] as List<dynamic>?)
      ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$ApiUsageToJson(ApiUsage instance) => <String, dynamic>{
      'apiCalls': instance.apiCalls,
      'throttledRequests': instance.throttledRequests,
    };
