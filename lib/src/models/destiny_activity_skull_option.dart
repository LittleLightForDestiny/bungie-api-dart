import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_activity_difficulty_id.dart';

part 'destiny_activity_skull_option.g.dart';

@JsonSerializable()
class DestinyActivitySkullOption{	
	DestinyActivitySkullOption();

	
	@JsonKey(name:'optionHash')
	int? optionHash;
	
	@JsonKey(name:'stringValue')
	String? stringValue;
	
	@JsonKey(name:'boolValue')
	bool? boolValue;
	
	@JsonKey(name:'integerValue')
	int? integerValue;
	
	@JsonKey(name:'floatValue')
	double? floatValue;
	
	@JsonKey(name:'minDisplayDifficultyId',fromJson:decodeDestinyActivityDifficultyId,toJson:encodeDestinyActivityDifficultyId)
	DestinyActivityDifficultyId? minDisplayDifficultyId;

	factory DestinyActivitySkullOption.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySkullOptionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySkullOptionToJson(this);

	static Future<DestinyActivitySkullOption> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySkullOption>((json)=>DestinyActivitySkullOption.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}