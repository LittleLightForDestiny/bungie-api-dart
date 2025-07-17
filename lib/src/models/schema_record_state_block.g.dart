// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_record_state_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchemaRecordStateBlock _$SchemaRecordStateBlockFromJson(
  Map<String, dynamic> json,
) =>
    SchemaRecordStateBlock()
      ..featuredPriority = (json['featuredPriority'] as num?)?.toInt()
      ..obscuredName = json['obscuredName'] as String?
      ..obscuredDescription = json['obscuredDescription'] as String?;

Map<String, dynamic> _$SchemaRecordStateBlockToJson(
  SchemaRecordStateBlock instance,
) => <String, dynamic>{
  'featuredPriority': instance.featuredPriority,
  'obscuredName': instance.obscuredName,
  'obscuredDescription': instance.obscuredDescription,
};
