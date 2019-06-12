// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_record_state_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchemaRecordStateBlock _$SchemaRecordStateBlockFromJson(
    Map<String, dynamic> json) {
  return SchemaRecordStateBlock()
    ..featuredPriority = json['featuredPriority'] as int
    ..obscuredString = json['obscuredString'] as String;
}

Map<String, dynamic> _$SchemaRecordStateBlockToJson(
        SchemaRecordStateBlock instance) =>
    <String, dynamic>{
      'featuredPriority': instance.featuredPriority,
      'obscuredString': instance.obscuredString
    };
