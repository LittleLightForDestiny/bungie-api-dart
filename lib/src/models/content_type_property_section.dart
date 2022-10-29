import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'content_type_property_section.g.dart';

@JsonSerializable()
class ContentTypePropertySection{	
	ContentTypePropertySection();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'readableName')
	String? readableName;
	
	@JsonKey(name:'collapsed')
	bool? collapsed;

	factory ContentTypePropertySection.fromJson(Map<String, dynamic> json) {
		return _$ContentTypePropertySectionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentTypePropertySectionToJson(this);

	static Future<ContentTypePropertySection> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentTypePropertySection>((json)=>ContentTypePropertySection.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}