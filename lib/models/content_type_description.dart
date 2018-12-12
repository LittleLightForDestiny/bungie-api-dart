import 'content_type_property.dart';
import 'tag_metadata_definition.dart';
import 'tag_metadata_item.dart';
import 'content_preview.dart';
import 'content_type_property_section.dart';
class ContentTypeDescription{
	String cType;
	String name;
	String contentDescription;
	String previewImage;
	int priority;
	String reminder;
	List<ContentTypeProperty> properties;
	List<TagMetadataDefinition> tagMetadata;
	Map<TagMetadataItem, dynamic> tagMetadataItems;
	List<String> usageExamples;
	bool showInContentEditor;
	String typeOf;
	String bindIdentifierToProperty;
	String boundRegex;
	bool forceIdentifierBinding;
	bool allowComments;
	bool autoEnglishPropertyFallback;
	bool bulkUploadable;
	List<ContentPreview> previews;
	bool suppressCmsPath;
	List<ContentTypePropertySection> propertySections;
	ContentTypeDescription(
		String this.cType,
		String this.name,
		String this.contentDescription,
		String this.previewImage,
		int this.priority,
		String this.reminder,
		List<ContentTypeProperty> this.properties,
		List<TagMetadataDefinition> this.tagMetadata,
		Map<TagMetadataItem, dynamic> this.tagMetadataItems,
		List<String> this.usageExamples,
		bool this.showInContentEditor,
		String this.typeOf,
		String this.bindIdentifierToProperty,
		String this.boundRegex,
		bool this.forceIdentifierBinding,
		bool this.allowComments,
		bool this.autoEnglishPropertyFallback,
		bool this.bulkUploadable,
		List<ContentPreview> this.previews,
		bool this.suppressCmsPath,
		List<ContentTypePropertySection> this.propertySections,
	);

	static ContentTypeDescription fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ContentTypeDescription(
				data['cType'],
				data['name'],
				data['contentDescription'],
				data['previewImage'],
				data['priority'],
				data['reminder'],
				ContentTypeProperty.fromList(data['properties']),
				TagMetadataDefinition.fromList(data['tagMetadata']),
				data['tagMetadataItems'],
				data['usageExamples'],
				data['showInContentEditor'],
				data['typeOf'],
				data['bindIdentifierToProperty'],
				data['boundRegex'],
				data['forceIdentifierBinding'],
				data['allowComments'],
				data['autoEnglishPropertyFallback'],
				data['bulkUploadable'],
				ContentPreview.fromList(data['previews']),
				data['suppressCmsPath'],
				ContentTypePropertySection.fromList(data['propertySections']),
		);
	}

	static List<ContentTypeDescription> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ContentTypeDescription> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDescription.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['cType'] = cType;
			data['name'] = name;
			data['contentDescription'] = contentDescription;
			data['previewImage'] = previewImage;
			data['priority'] = priority;
			data['reminder'] = reminder;
			data['properties'] = properties.map((item)=>item.toMap());
			data['tagMetadata'] = tagMetadata.map((item)=>item.toMap());
			data['tagMetadataItems'] = tagMetadataItems;
			data['usageExamples'] = usageExamples;
			data['showInContentEditor'] = showInContentEditor;
			data['typeOf'] = typeOf;
			data['bindIdentifierToProperty'] = bindIdentifierToProperty;
			data['boundRegex'] = boundRegex;
			data['forceIdentifierBinding'] = forceIdentifierBinding;
			data['allowComments'] = allowComments;
			data['autoEnglishPropertyFallback'] = autoEnglishPropertyFallback;
			data['bulkUploadable'] = bulkUploadable;
			data['previews'] = previews.map((item)=>item.toMap());
			data['suppressCmsPath'] = suppressCmsPath;
			data['propertySections'] = propertySections.map((item)=>item.toMap());
	}
}