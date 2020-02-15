import 'package:json_annotation/json_annotation.dart';

import '../enums/platform_error_codes.dart';

part 'entity_action_result.g.dart';

@JsonSerializable()
class EntityActionResult{
	
	EntityActionResult();

	factory EntityActionResult.fromJson(Map<String, dynamic> json) {
		try{
			return _$EntityActionResultFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'entityId')
	String entityId;
	@JsonKey(name:'result',unknownEnumValue:PlatformErrorCodes.ProtectedInvalidEnumValue)
	PlatformErrorCodes result;

	
	
	Map<String, dynamic> toJson() => _$EntityActionResultToJson(this);
}