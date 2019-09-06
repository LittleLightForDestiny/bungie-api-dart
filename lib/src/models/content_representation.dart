
import 'package:json_annotation/json_annotation.dart';
part 'content_representation.g.dart';

@JsonSerializable()
class ContentRepresentation {

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'path')
	String path;

	@JsonKey(name:'validationString')
	String validationString;
	ContentRepresentation();

	factory ContentRepresentation.fromJson(Map<String, dynamic> json) => _$ContentRepresentationFromJson(json);
	
	Map<String, dynamic> toJson() => _$ContentRepresentationToJson(this);
}
