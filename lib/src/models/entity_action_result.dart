import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/platform_error_codes.dart';

part 'entity_action_result.g.dart';

@JsonSerializable()
class EntityActionResult{	
	EntityActionResult();

	
	@JsonKey(name:'entityId')
	String? entityId;
	
	@JsonKey(name:'result',fromJson:decodePlatformErrorCodes,toJson:encodePlatformErrorCodes)
	PlatformErrorCodes? result;

	factory EntityActionResult.fromJson(Map<String, dynamic> json) {
		return _$EntityActionResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EntityActionResultToJson(this);

	static Future<EntityActionResult> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, EntityActionResult>((json)=>EntityActionResult.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}