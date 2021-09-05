import 'package:json_annotation/json_annotation.dart';


part 'core_system.g.dart';

@JsonSerializable()
class CoreSystem{
	
	CoreSystem();

	factory CoreSystem.fromJson(Map<String, dynamic> json) {
		return _$CoreSystemFromJson(json);
	}

	@JsonKey(name:'enabled')
	bool? enabled;
	@JsonKey(name:'parameters')
	Map<String, String>? parameters;

	
	
	Map<String, dynamic> toJson() => _$CoreSystemToJson(this);
}