import 'package:json_annotation/json_annotation.dart';


part 'destiny_parent_item_override.g.dart';

@JsonSerializable()
class DestinyParentItemOverride{	
	DestinyParentItemOverride();

	factory DestinyParentItemOverride.fromJson(Map<String, dynamic> json) {
		return _$DestinyParentItemOverrideFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyParentItemOverrideToJson(this);
	
	@JsonKey(name:'additionalEquipRequirementsDisplayStrings')
	List<String>? additionalEquipRequirementsDisplayStrings;
	
	@JsonKey(name:'pipIcon')
	String? pipIcon;
}