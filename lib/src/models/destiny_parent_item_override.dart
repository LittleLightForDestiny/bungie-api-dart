import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_parent_item_override.g.dart';

@JsonSerializable()
class DestinyParentItemOverride{	
	DestinyParentItemOverride();

	
	@JsonKey(name:'additionalEquipRequirementsDisplayStrings')
	List<String>? additionalEquipRequirementsDisplayStrings;
	
	@JsonKey(name:'pipIcon')
	String? pipIcon;

	factory DestinyParentItemOverride.fromJson(Map<String, dynamic> json) {
		return _$DestinyParentItemOverrideFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyParentItemOverrideToJson(this);

	static Future<DestinyParentItemOverride> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyParentItemOverride>((json)=>DestinyParentItemOverride.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}