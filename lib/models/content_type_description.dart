import 'content_type_property.dart';
import 'tag_metadata_definition.dart';
import 'tag_metadata_item.dart';
import 'content_preview.dart';
import 'content_type_property_section.dart';

/**  */
class ContentTypeDescription{
	
	/**  */
	String cType;
	
	/**  */
	String name;
	
	/**  */
	String contentDescription;
	
	/**  */
	String previewImage;
	
	/**  */
	int priority;
	
	/**  */
	String reminder;
	
	/**  */
	List<ContentTypeProperty> properties;
	
	/**  */
	List<TagMetadataDefinition> tagMetadata;
	
	/**  */
	Map<String, TagMetadataItem> tagMetadataItems;
	
	/**  */
	List<String> usageExamples;
	
	/**  */
	bool showInContentEditor;
	
	/**  */
	String typeOf;
	
	/**  */
	String bindIdentifierToProperty;
	
	/**  */
	String boundRegex;
	
	/**  */
	bool forceIdentifierBinding;
	
	/**  */
	bool allowComments;
	
	/**  */
	bool autoEnglishPropertyFallback;
	
	/**  */
	bool bulkUploadable;
	
	/**  */
	List<ContentPreview> previews;
	
	/**  */
	bool suppressCmsPath;
	
	/**  */
	List<ContentTypePropertySection> propertySections;
	ContentTypeDescription(
		this.cType,
		this.name,
		this.contentDescription,
		this.previewImage,
		this.priority,
		this.reminder,
		this.properties,
		this.tagMetadata,
		this.tagMetadataItems,
		this.usageExamples,
		this.showInContentEditor,
		this.typeOf,
		this.bindIdentifierToProperty,
		this.boundRegex,
		this.forceIdentifierBinding,
		this.allowComments,
		this.autoEnglishPropertyFallback,
		this.bulkUploadable,
		this.previews,
		this.suppressCmsPath,
		this.propertySections,
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
				data['properties'] != null ? ContentTypeProperty.fromList(data['properties']) : null,
				data['tagMetadata'] != null ? TagMetadataDefinition.fromList(data['tagMetadata']) : null,
				data['tagMetadataItems'] != null ? Map<String, TagMetadataItem>.from(data['tagMetadataItems'].map((k, v)=>MapEntry(k, TagMetadataItem.fromMap(v)))) : null,
				data['usageExamples'] != null ? data['usageExamples']?.cast<String>() ?? null : null,
				data['showInContentEditor'],
				data['typeOf'],
				data['bindIdentifierToProperty'],
				data['boundRegex'],
				data['forceIdentifierBinding'],
				data['allowComments'],
				data['autoEnglishPropertyFallback'],
				data['bulkUploadable'],
				data['previews'] != null ? ContentPreview.fromList(data['previews']) : null,
				data['suppressCmsPath'],
				data['propertySections'] != null ? ContentTypePropertySection.fromList(data['propertySections']) : null,
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
			data['cType'] = this.cType;
			data['name'] = this.name;
			data['contentDescription'] = this.contentDescription;
			data['previewImage'] = this.previewImage;
			data['priority'] = this.priority;
			data['reminder'] = this.reminder;
			data['properties'] = this.properties != null? this.properties.map((item)=>item.toMap()).toList() : null;
			data['tagMetadata'] = this.tagMetadata != null? this.tagMetadata.map((item)=>item.toMap()).toList() : null;
			data['tagMetadataItems'] = this.tagMetadataItems != null? this.tagMetadataItems.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['usageExamples'] = this.usageExamples;
			data['showInContentEditor'] = this.showInContentEditor;
			data['typeOf'] = this.typeOf;
			data['bindIdentifierToProperty'] = this.bindIdentifierToProperty;
			data['boundRegex'] = this.boundRegex;
			data['forceIdentifierBinding'] = this.forceIdentifierBinding;
			data['allowComments'] = this.allowComments;
			data['autoEnglishPropertyFallback'] = this.autoEnglishPropertyFallback;
			data['bulkUploadable'] = this.bulkUploadable;
			data['previews'] = this.previews != null? this.previews.map((item)=>item.toMap()).toList() : null;
			data['suppressCmsPath'] = this.suppressCmsPath;
			data['propertySections'] = this.propertySections != null? this.propertySections.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}