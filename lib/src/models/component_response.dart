import 'package:json_annotation/json_annotation.dart';


part 'component_response.g.dart';

/// The base class for any component-returning object that may need to indicate information about the state of the component being returned.
@JsonSerializable()
class ComponentResponse{
	
	ComponentResponse();

	factory ComponentResponse.fromJson(Map<String, dynamic> json) => _$ComponentResponseFromJson(json);

	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$ComponentResponseToJson(this);
}