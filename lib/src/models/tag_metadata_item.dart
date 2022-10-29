import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'tag_metadata_item.g.dart';

@JsonSerializable()
class TagMetadataItem{	
	TagMetadataItem();

	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'tagText')
	String? tagText;
	
	@JsonKey(name:'groups')
	List<String>? groups;
	
	@JsonKey(name:'isDefault')
	bool? isDefault;
	
	@JsonKey(name:'name')
	String? name;

	factory TagMetadataItem.fromJson(Map<String, dynamic> json) {
		return _$TagMetadataItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TagMetadataItemToJson(this);

	static Future<TagMetadataItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TagMetadataItem>((json)=>TagMetadataItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}