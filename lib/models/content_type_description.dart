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

	static ContentTypeDescription fromJson(Map<String, dynamic> data){
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
		List<ContentTypeDescription> list = new List();
    data.forEach((item) {
      list.add(ContentTypeDescription.fromJson(item));
    });
    return list;
	}
}