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
	Map<String, dynamic> attributes;
	List<ContentTypeProperty> childProperties;
	String contentTypeAllowed;
	String bindToProperty;
	String boundRegex;
	Map<String, dynamic> representationSelection;
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
		String this.name,
		String this.readableName,
		String this.value,
		String this.propertyDescription,
		bool this.localizable,
		bool this.fallback,
		bool this.enabled,
		int this.order,
		bool this.visible,
		bool this.isTitle,
		bool this.required,
		int this.maxLength,
		int this.maxByteLength,
		int this.maxFileSize,
		String this.regexp,
		String this.validateAs,
		String this.rssAttribute,
		String this.visibleDependency,
		String this.visibleOn,
		int this.datatype,
		Map<String, dynamic> this.attributes,
		List<ContentTypeProperty> this.childProperties,
		String this.contentTypeAllowed,
		String this.bindToProperty,
		String this.boundRegex,
		Map<String, dynamic> this.representationSelection,
		List<ContentTypeDefaultValue> this.defaultValues,
		bool this.isExternalAllowed,
		String this.propertySection,
		int this.weight,
		String this.entitytype,
		bool this.isCombo,
		bool this.suppressProperty,
		List<String> this.legalContentTypes,
		String this.representationValidationString,
		int this.minWidth,
		int this.maxWidth,
		int this.minHeight,
		int this.maxHeight,
		bool this.isVideo,
		bool this.isImage,
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
				data['attributes'],
				ContentTypeProperty.fromList(data['childProperties']),
				data['contentTypeAllowed'],
				data['bindToProperty'],
				data['boundRegex'],
				data['representationSelection'],
				ContentTypeDefaultValue.fromList(data['defaultValues']),
				data['isExternalAllowed'],
				data['propertySection'],
				data['weight'],
				data['entitytype'],
				data['isCombo'],
				data['suppressProperty'],
				data['legalContentTypes'],
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
			data['name'] = name;
			data['readableName'] = readableName;
			data['value'] = value;
			data['propertyDescription'] = propertyDescription;
			data['localizable'] = localizable;
			data['fallback'] = fallback;
			data['enabled'] = enabled;
			data['order'] = order;
			data['visible'] = visible;
			data['isTitle'] = isTitle;
			data['required'] = required;
			data['maxLength'] = maxLength;
			data['maxByteLength'] = maxByteLength;
			data['maxFileSize'] = maxFileSize;
			data['regexp'] = regexp;
			data['validateAs'] = validateAs;
			data['rssAttribute'] = rssAttribute;
			data['visibleDependency'] = visibleDependency;
			data['visibleOn'] = visibleOn;
			data['datatype'] = datatype;
			data['attributes'] = attributes;
			data['childProperties'] = childProperties.map((item)=>item.toMap());
			data['contentTypeAllowed'] = contentTypeAllowed;
			data['bindToProperty'] = bindToProperty;
			data['boundRegex'] = boundRegex;
			data['representationSelection'] = representationSelection;
			data['defaultValues'] = defaultValues.map((item)=>item.toMap());
			data['isExternalAllowed'] = isExternalAllowed;
			data['propertySection'] = propertySection;
			data['weight'] = weight;
			data['entitytype'] = entitytype;
			data['isCombo'] = isCombo;
			data['suppressProperty'] = suppressProperty;
			data['legalContentTypes'] = legalContentTypes;
			data['representationValidationString'] = representationValidationString;
			data['minWidth'] = minWidth;
			data['maxWidth'] = maxWidth;
			data['minHeight'] = minHeight;
			data['maxHeight'] = maxHeight;
			data['isVideo'] = isVideo;
			data['isImage'] = isImage;
	}
}