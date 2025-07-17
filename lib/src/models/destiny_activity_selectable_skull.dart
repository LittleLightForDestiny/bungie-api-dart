import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_skull.dart';

part 'destiny_activity_selectable_skull.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkull{	
	DestinyActivitySelectableSkull();

	
	@JsonKey(name:'requiredTraitHash')
	int? requiredTraitHash;
	
	@JsonKey(name:'requiredTraitExistence')
	bool? requiredTraitExistence;
	
	@JsonKey(name:'isEmptySkull')
	bool? isEmptySkull;
	
	@JsonKey(name:'loadoutRestrictionHash')
	int? loadoutRestrictionHash;
	
	@JsonKey(name:'activitySkull')
	DestinyActivitySkull? activitySkull;

	factory DestinyActivitySelectableSkull.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullToJson(this);

	static Future<DestinyActivitySelectableSkull> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkull>((json)=>DestinyActivitySelectableSkull.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}