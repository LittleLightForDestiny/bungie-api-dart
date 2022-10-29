import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_objective_display_properties.g.dart';

@JsonSerializable()
class DestinyObjectiveDisplayProperties{	
	DestinyObjectiveDisplayProperties();

	
	/// The activity associated with this objective in the context of this item, if any.
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// If true, the game shows this objective on item preview screens.
	@JsonKey(name:'displayOnItemPreviewScreen')
	bool? displayOnItemPreviewScreen;

	factory DestinyObjectiveDisplayProperties.fromJson(Map<String, dynamic> json) {
		return _$DestinyObjectiveDisplayPropertiesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveDisplayPropertiesToJson(this);

	static Future<DestinyObjectiveDisplayProperties> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyObjectiveDisplayProperties>((json)=>DestinyObjectiveDisplayProperties.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}