import 'package:json_annotation/json_annotation.dart';


part 'entity_action_result.g.dart';

@JsonSerializable()
class EntityActionResult{
	
	EntityActionResult();

	factory EntityActionResult.fromJson(Map<String, dynamic> json) => _$EntityActionResultFromJson(json);

	@JsonKey(name:'entityId')
	String entityId;
	@JsonKey(name:'result')
	int result;

	
	
	Map<String, dynamic> toJson() => _$EntityActionResultToJson(this);
}