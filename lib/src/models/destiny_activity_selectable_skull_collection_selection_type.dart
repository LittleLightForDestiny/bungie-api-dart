import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_selectable_skull_collection_selection_type.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkullCollectionSelectionType{	
	DestinyActivitySelectableSkullCollectionSelectionType();

	
	@JsonKey(name:'selectionCount')
	int? selectionCount;
	
	@JsonKey(name:'refreshTimeMinutes')
	int? refreshTimeMinutes;
	
	@JsonKey(name:'refreshTimeOffsetMinutes')
	int? refreshTimeOffsetMinutes;

	factory DestinyActivitySelectableSkullCollectionSelectionType.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullCollectionSelectionTypeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullCollectionSelectionTypeToJson(this);

	static Future<DestinyActivitySelectableSkullCollectionSelectionType> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkullCollectionSelectionType>((json)=>DestinyActivitySelectableSkullCollectionSelectionType.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}