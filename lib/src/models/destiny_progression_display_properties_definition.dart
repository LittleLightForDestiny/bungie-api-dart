import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_icon_sequence_definition.dart';

part 'destiny_progression_display_properties_definition.g.dart';

@JsonSerializable()
class DestinyProgressionDisplayPropertiesDefinition{	
	DestinyProgressionDisplayPropertiesDefinition();

	
	/// When progressions show your "experience" gained, that bar has units (i.e. "Experience", "Bad Dudes Snuffed Out", whatever). This is the localized string for that unit of measurement.
	@JsonKey(name:'displayUnitsName')
	String? displayUnitsName;
	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'name')
	String? name;
	
	/// Note that "icon" is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition's icon was a big picture of a book.
	/// But usually, it will be a small square image that you can use as... well, an icon.
	/// They are currently represented as 96px x 96px images.
	@JsonKey(name:'icon')
	String? icon;
	
	@JsonKey(name:'iconSequences')
	List<DestinyIconSequenceDefinition>? iconSequences;
	
	/// If this item has a high-res icon (at least for now, many things won't), then the path to that icon will be here.
	@JsonKey(name:'highResIcon')
	String? highResIcon;
	
	@JsonKey(name:'hasIcon')
	bool? hasIcon;

	factory DestinyProgressionDisplayPropertiesDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyProgressionDisplayPropertiesDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProgressionDisplayPropertiesDefinitionToJson(this);

	static Future<DestinyProgressionDisplayPropertiesDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProgressionDisplayPropertiesDefinition>((json)=>DestinyProgressionDisplayPropertiesDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}