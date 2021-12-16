// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_metadata_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagMetadataItem _$TagMetadataItemFromJson(Map<String, dynamic> json) {
  return TagMetadataItem()
    ..description = json['description'] as String?
    ..tagText = json['tagText'] as String?
    ..groups =
        (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..isDefault = json['isDefault'] as bool?
    ..name = json['name'] as String?;
}

Map<String, dynamic> _$TagMetadataItemToJson(TagMetadataItem instance) =>
    <String, dynamic>{
      'description': instance.description,
      'tagText': instance.tagText,
      'groups': instance.groups,
      'isDefault': instance.isDefault,
      'name': instance.name,
    };
