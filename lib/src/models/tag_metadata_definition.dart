import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'tag_metadata_item.dart';

part 'tag_metadata_definition.g.dart';

@JsonSerializable()
class TagMetadataDefinition{	
	TagMetadataDefinition();

	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'order')
	int? order;
	
	@JsonKey(name:'items')
	List<TagMetadataItem>? items;
	
	@JsonKey(name:'datatype')
	String? datatype;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'isRequired')
	bool? isRequired;

	factory TagMetadataDefinition.fromJson(Map<String, dynamic> json) {
		return _$TagMetadataDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TagMetadataDefinitionToJson(this);

	static Future<TagMetadataDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TagMetadataDefinition>((json)=>TagMetadataDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}