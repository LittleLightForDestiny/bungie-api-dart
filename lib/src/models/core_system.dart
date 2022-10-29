import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'core_system.g.dart';

@JsonSerializable()
class CoreSystem{	
	CoreSystem();

	
	@JsonKey(name:'enabled')
	bool? enabled;
	
	@JsonKey(name:'parameters')
	Map<String, String>? parameters;

	factory CoreSystem.fromJson(Map<String, dynamic> json) {
		return _$CoreSystemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CoreSystemToJson(this);

	static Future<CoreSystem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CoreSystem>((json)=>CoreSystem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}