import 'content_type_property.dart';
import 'tag_metadata_definition.dart';
import 'tag_metadata_item.dart';
import 'content_preview.dart';
import 'content_type_property_section.dart';

import 'package:json_annotation/json_annotation.dart';
part 'content_type_description.g.dart';

@JsonSerializable()
class ContentTypeDescription {

	@JsonKey(name:'cType')
	String cType;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'contentDescription')
	String contentDescription;

	@JsonKey(name:'previewImage')
	String previewImage;

	@JsonKey(name:'priority')
	int priority;

	@JsonKey(name:'reminder')
	String reminder;

	@JsonKey(name:'properties')
	List<ContentTypeProperty> properties;

	@JsonKey(name:'tagMetadata')
	List<TagMetadataDefinition> tagMetadata;

	@JsonKey(name:'tagMetadataItems')
	Map<String, TagMetadataItem> tagMetadataItems;

	@JsonKey(name:'usageExamples')
	List<String> usageExamples;

	@JsonKey(name:'showInContentEditor')
	bool showInContentEditor;

	@JsonKey(name:'typeOf')
	String typeOf;

	@JsonKey(name:'bindIdentifierToProperty')
	String bindIdentifierToProperty;

	@JsonKey(name:'boundRegex')
	String boundRegex;

	@JsonKey(name:'forceIdentifierBinding')
	bool forceIdentifierBinding;

	@JsonKey(name:'allowComments')
	bool allowComments;

	@JsonKey(name:'autoEnglishPropertyFallback')
	bool autoEnglishPropertyFallback;

	@JsonKey(name:'bulkUploadable')
	bool bulkUploadable;

	@JsonKey(name:'previews')
	List<ContentPreview> previews;

	@JsonKey(name:'suppressCmsPath')
	bool suppressCmsPath;

	@JsonKey(name:'propertySections')
	List<ContentTypePropertySection> propertySections;
	ContentTypeDescription();

	factory ContentTypeDescription.fromJson(Map<String, dynamic> json) => _$ContentTypeDescriptionFromJson(json);
	
	Map<String, dynamic> toJson() => _$ContentTypeDescriptionToJson(this);
}
