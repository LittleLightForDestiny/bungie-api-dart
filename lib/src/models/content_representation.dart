import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'content_representation.g.dart';

@JsonSerializable()
class ContentRepresentation{	
	ContentRepresentation();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'path')
	String? path;
	
	@JsonKey(name:'validationString')
	String? validationString;

	factory ContentRepresentation.fromJson(Map<String, dynamic> json) {
		return _$ContentRepresentationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ContentRepresentationToJson(this);

	static Future<ContentRepresentation> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ContentRepresentation>((json)=>ContentRepresentation.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}