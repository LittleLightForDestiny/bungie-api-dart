import 'package:json_annotation/json_annotation.dart';

import 'tag_metadata_item.dart';

part 'tag_metadata_definition.g.dart';

@JsonSerializable()
class TagMetadataDefinition{
	
	TagMetadataDefinition();

	factory TagMetadataDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$TagMetadataDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

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

	
	
	Map<String, dynamic> toJson() => _$TagMetadataDefinitionToJson(this);
}