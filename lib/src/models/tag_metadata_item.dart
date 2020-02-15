import 'package:json_annotation/json_annotation.dart';


part 'tag_metadata_item.g.dart';

@JsonSerializable()
class TagMetadataItem{
	
	TagMetadataItem();

	factory TagMetadataItem.fromJson(Map<String, dynamic> json) {
		try{
			return _$TagMetadataItemFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'description')
	String description;
	@JsonKey(name:'tagText')
	String tagText;
	@JsonKey(name:'groups')
	List<String> groups;
	@JsonKey(name:'isDefault')
	bool isDefault;
	@JsonKey(name:'name')
	String name;

	
	
	Map<String, dynamic> toJson() => _$TagMetadataItemToJson(this);
}