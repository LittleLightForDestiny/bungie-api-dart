import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/content_property_data_type_enum.dart';
import 'content_type_default_value.dart';

part 'content_type_property.g.dart';

@JsonSerializable()
class ContentTypeProperty{	
	ContentTypeProperty();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'rootPropertyName')
	String? rootPropertyName;
	
	@JsonKey(name:'readableName')
	String? readableName;
	
	@JsonKey(name:'value')
	String? value;
	
	@JsonKey(name:'propertyDescription')
	String? propertyDescription;
	
	@JsonKey(name:'localizable')
	bool? localizable;
	
	@JsonKey(name:'fallback')
	bool? fallback;
	
	@JsonKey(name:'enabled')
	bool? enabled;
	
	@JsonKey(name:'order')
	int? order;
	
	@JsonKey(name:'visible')
	bool? visible;
	
	@JsonKey(name:'isTitle')
	bool? isTitle;
	
	@JsonKey(name:'required')
	bool? required;
	
	@JsonKey(name:'maxLength')
	int? maxLength;
	
	@JsonKey(name:'maxByteLength')
	int? maxByteLength;
	
	@JsonKey(name:'maxFileSize')
	int? maxFileSize;
	
	@JsonKey(name:'regexp')
	String? regexp;
	
	@JsonKey(name:'validateAs')
	String? validateAs;
	
	@JsonKey(name:'rssAttribute')
	String? rssAttribute;
	
	@JsonKey(name:'visibleDependency')
	String? visibleDependency;
	
	@JsonKey(name:'visibleOn')
	String? visibleOn;
	
	@JsonKey(name:'datatype',fromJson:decodeContentPropertyDataTypeEnum,toJson:encodeContentPropertyDataTypeEnum)
	ContentPropertyDataTypeEnum? datatype;
	
	@JsonKey(name:'attributes')
	Map<String, String>? attributes;
	
	@JsonKey(name:'childProperties')
	List<ContentTypeProperty>? childProperties;
	
	@JsonKey(name:'contentTypeAllowed')
	String? contentTypeAllowed;
	
	@JsonKey(name:'bindToProperty')
	String? bindToProperty;
	
	@JsonKey(name:'boundRegex')
	String? boundRegex;
	
	@JsonKey(name:'representationSelection')
	Map<String, String>? representationSelection;
	
	@JsonKey(name:'defaultValues')
	List<ContentTypeDefaultValue>? defaultValues;
	
	@JsonKey(name:'isExternalAllowed')
	bool? isExternalAllowed;
	
	@JsonKey(name:'propertySection')
	String? propertySection;
	
	@JsonKey(name:'weight')
	int? weight;
	
	@JsonKey(name:'entitytype')
	String? entitytype;
	
	@JsonKey(name:'isCombo')
	bool? isCombo;
	
	@JsonKey(name:'suppressProperty')
	bool? suppressProperty;
	
	@JsonKey(name:'legalContentTypes')
	List<String>? legalContentTypes;
	
	@JsonKey(name:'representationValidationString')
	String? representationValidationString;
	
	@JsonKey(name:'minWidth')
	int? minWidth;
	
	@JsonKey(name:'maxWidth')
	int? maxWidth;
	
	@JsonKey(name:'minHeight')
	int? minHeight;
	
	@JsonKey(name:'maxHeight')
	int? maxHeight;
	
	@JsonKey(name:'isVideo')
	bool? isVideo;
	
	@JsonKey(name:'isImage')
	bool? isImage;

	factory ContentTypeProperty.fromJson(Map<String, dynamic> json) {
		return _$ContentTypePropertyFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentTypePropertyToJson(this);

	static Future<ContentTypeProperty> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentTypeProperty>((json)=>ContentTypeProperty.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}