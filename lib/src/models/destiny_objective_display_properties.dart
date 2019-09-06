
import 'package:json_annotation/json_annotation.dart';
part 'destiny_objective_display_properties.g.dart';

@JsonSerializable()
class DestinyObjectiveDisplayProperties {

	/// The activity associated with this objective in the context of this item, if any.
	@JsonKey(name:'activityHash')
	int activityHash;

	/// If true, the game shows this objective on item preview screens.
	@JsonKey(name:'displayOnItemPreviewScreen')
	bool displayOnItemPreviewScreen;
	DestinyObjectiveDisplayProperties();

	factory DestinyObjectiveDisplayProperties.fromJson(Map<String, dynamic> json) => _$DestinyObjectiveDisplayPropertiesFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveDisplayPropertiesToJson(this);
}
