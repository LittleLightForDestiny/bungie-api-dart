
import 'package:json_annotation/json_annotation.dart';
part 'core_system.g.dart';

@JsonSerializable()
class CoreSystem {

	@JsonKey(name:'enabled')
	bool enabled;

	@JsonKey(name:'parameters')
	Map<String, String> parameters;
	CoreSystem();

	factory CoreSystem.fromJson(Map<String, dynamic> json) => _$CoreSystemFromJson(json);
	
	Map<String, dynamic> toJson() => _$CoreSystemToJson(this);
}
