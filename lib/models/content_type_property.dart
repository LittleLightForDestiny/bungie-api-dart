import 'content_type_default_value.dart';
class ContentTypeProperty{
	String name;
	String readableName;
	String value;
	String propertyDescription;
	bool localizable;
	bool fallback;
	bool enabled;
	int order;
	bool visible;
	bool isTitle;
	bool required;
	int maxLength;
	int maxByteLength;
	int maxFileSize;
	String regexp;
	String validateAs;
	String rssAttribute;
	String visibleDependency;
	String visibleOn;
	int datatype;
	Map<String, String> attributes;
	List<ContentTypeProperty> childProperties;
	String contentTypeAllowed;
	String bindToProperty;
	String boundRegex;
	Map<String, String> representationSelection;
	List<ContentTypeDefaultValue> defaultValues;
	bool isExternalAllowed;
	String propertySection;
	int weight;
	String entitytype;
	bool isCombo;
	bool suppressProperty;
	List<String> legalContentTypes;
	String representationValidationString;
	int minWidth;
	int maxWidth;
	int minHeight;
	int maxHeight;
	bool isVideo;
	bool isImage;
	ContentTypeProperty(
		this.name,
		this.readableName,
		this.value,
		this.propertyDescription,
		this.localizable,
		this.fallback,
		this.enabled,
		this.order,
		this.visible,
		this.isTitle,
		this.required,
		this.maxLength,
		this.maxByteLength,
		this.maxFileSize,
		this.regexp,
		this.validateAs,
		this.rssAttribute,
		this.visibleDependency,
		this.visibleOn,
		this.datatype,
		this.attributes,
		this.childProperties,
		this.contentTypeAllowed,
		this.bindToProperty,
		this.boundRegex,
		this.representationSelection,
		this.defaultValues,
		this.isExternalAllowed,
		this.propertySection,
		this.weight,
		this.entitytype,
		this.isCombo,
		this.suppressProperty,
		this.legalContentTypes,
		this.representationValidationString,
		this.minWidth,
		this.maxWidth,
		this.minHeight,
		this.maxHeight,
		this.isVideo,
		this.isImage,
	);

	static ContentTypeProperty fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypeProperty(
				data['name'],
				data['readableName'],
				data['value'],
				data['propertyDescription'],
				data['localizable'],
				data['fallback'],
				data['enabled'],
				data['order'],
				data['visible'],
				data['isTitle'],
				data['required'],
				data['maxLength'],
				data['maxByteLength'],
				data['maxFileSize'],
				data['regexp'],
				data['validateAs'],
				data['rssAttribute'],
				data['visibleDependency'],
				data['visibleOn'],
				data['datatype'],
				data['attributes'] != null ? Map<String, String>.from(data['attributes'].map((k, v)=>MapEntry(k, v))) : null,
				data['childProperties'] != null ? ContentTypeProperty.fromList(data['childProperties']) : null,
				data['contentTypeAllowed'],
				data['bindToProperty'],
				data['boundRegex'],
				data['representationSelection'] != null ? Map<String, String>.from(data['representationSelection'].map((k, v)=>MapEntry(k, v))) : null,
				data['defaultValues'] != null ? ContentTypeDefaultValue.fromList(data['defaultValues']) : null,
				data['isExternalAllowed'],
				data['propertySection'],
				data['weight'],
				data['entitytype'],
				data['isCombo'],
				data['suppressProperty'],
				data['legalContentTypes'] != null ? data['legalContentTypes']?.cast<String>() ?? null : null,
				data['representationValidationString'],
				data['minWidth'],
				data['maxWidth'],
				data['minHeight'],
				data['maxHeight'],
				data['isVideo'],
				data['isImage'],
		);
	}

	static List<ContentTypeProperty> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentTypeProperty> list = new List();
    data.forEach((item) {
      list.add(ContentTypeProperty.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['name'] = this.name;
			data['readableName'] = this.readableName;
			data['value'] = this.value;
			data['propertyDescription'] = this.propertyDescription;
			data['localizable'] = this.localizable;
			data['fallback'] = this.fallback;
			data['enabled'] = this.enabled;
			data['order'] = this.order;
			data['visible'] = this.visible;
			data['isTitle'] = this.isTitle;
			data['required'] = this.required;
			data['maxLength'] = this.maxLength;
			data['maxByteLength'] = this.maxByteLength;
			data['maxFileSize'] = this.maxFileSize;
			data['regexp'] = this.regexp;
			data['validateAs'] = this.validateAs;
			data['rssAttribute'] = this.rssAttribute;
			data['visibleDependency'] = this.visibleDependency;
			data['visibleOn'] = this.visibleOn;
			data['datatype'] = this.datatype;
			data['attributes'] = this.attributes;
			data['childProperties'] = this.childProperties.map((item)=>item.toMap()).toList();
			data['contentTypeAllowed'] = this.contentTypeAllowed;
			data['bindToProperty'] = this.bindToProperty;
			data['boundRegex'] = this.boundRegex;
			data['representationSelection'] = this.representationSelection;
			data['defaultValues'] = this.defaultValues.map((item)=>item.toMap()).toList();
			data['isExternalAllowed'] = this.isExternalAllowed;
			data['propertySection'] = this.propertySection;
			data['weight'] = this.weight;
			data['entitytype'] = this.entitytype;
			data['isCombo'] = this.isCombo;
			data['suppressProperty'] = this.suppressProperty;
			data['legalContentTypes'] = this.legalContentTypes;
			data['representationValidationString'] = this.representationValidationString;
			data['minWidth'] = this.minWidth;
			data['maxWidth'] = this.maxWidth;
			data['minHeight'] = this.minHeight;
			data['maxHeight'] = this.maxHeight;
			data['isVideo'] = this.isVideo;
			data['isImage'] = this.isImage;
		return data;
	}
}