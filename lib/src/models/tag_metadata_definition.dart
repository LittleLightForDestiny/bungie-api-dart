import 'tag_metadata_item.dart';

import 'package:json_annotation/json_annotation.dart';
part 'tag_metadata_definition.g.dart';

@JsonSerializable()
class TagMetadataDefinition {

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'order')
	int order;

	@JsonKey(name:'items')
	List<TagMetadataItem> items;

	@JsonKey(name:'datatype')
	String datatype;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'isRequired')
	bool isRequired;
	TagMetadataDefinition();

	factory TagMetadataDefinition.fromJson(Map<String, dynamic> json) => _$TagMetadataDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$TagMetadataDefinitionToJson(this);
}
