import 'package:json_annotation/json_annotation.dart';


part 'content_representation.g.dart';

@JsonSerializable()
class ContentRepresentation{	
	ContentRepresentation();

	factory ContentRepresentation.fromJson(Map<String, dynamic> json) {
		return _$ContentRepresentationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentRepresentationToJson(this);
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'path')
	String? path;
	
	@JsonKey(name:'validationString')
	String? validationString;
}