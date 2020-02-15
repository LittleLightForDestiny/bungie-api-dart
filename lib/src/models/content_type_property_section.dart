import 'package:json_annotation/json_annotation.dart';


part 'content_type_property_section.g.dart';

@JsonSerializable()
class ContentTypePropertySection{
	
	ContentTypePropertySection();

	factory ContentTypePropertySection.fromJson(Map<String, dynamic> json) {
		try{
			return _$ContentTypePropertySectionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'readableName')
	String readableName;
	@JsonKey(name:'collapsed')
	bool collapsed;

	
	
	Map<String, dynamic> toJson() => _$ContentTypePropertySectionToJson(this);
}