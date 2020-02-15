import 'package:json_annotation/json_annotation.dart';


part 'content_representation.g.dart';

@JsonSerializable()
class ContentRepresentation{
	
	ContentRepresentation();

	factory ContentRepresentation.fromJson(Map<String, dynamic> json) {
		try{
			return _$ContentRepresentationFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'path')
	String path;
	@JsonKey(name:'validationString')
	String validationString;

	
	
	Map<String, dynamic> toJson() => _$ContentRepresentationToJson(this);
}