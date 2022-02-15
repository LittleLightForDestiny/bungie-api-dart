import 'package:json_annotation/json_annotation.dart';

import '../enums/platform_error_codes.dart';

part 'entity_action_result.g.dart';

@JsonSerializable()
class EntityActionResult{	
	EntityActionResult();

	factory EntityActionResult.fromJson(Map<String, dynamic> json) {
		return _$EntityActionResultFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$EntityActionResultToJson(this);
	
	@JsonKey(name:'entityId')
	String? entityId;
	
	@JsonKey(name:'result',fromJson:decodePlatformErrorCodes,toJson:encodePlatformErrorCodes)
	PlatformErrorCodes? result;
}