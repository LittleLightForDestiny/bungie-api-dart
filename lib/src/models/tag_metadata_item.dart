
import 'package:json_annotation/json_annotation.dart';
part 'tag_metadata_item.g.dart';

@JsonSerializable()
class TagMetadataItem {

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
	TagMetadataItem();

	factory TagMetadataItem.fromJson(Map<String, dynamic> json) => _$TagMetadataItemFromJson(json);
	
	Map<String, dynamic> toJson() => _$TagMetadataItemToJson(this);
}
