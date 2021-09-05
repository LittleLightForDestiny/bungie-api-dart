import 'package:json_annotation/json_annotation.dart';

import 'destiny_icon_sequence_definition.dart';

part 'destiny_display_properties_definition.g.dart';

/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
@JsonSerializable()
class DestinyDisplayPropertiesDefinition{
	
	DestinyDisplayPropertiesDefinition();

	factory DestinyDisplayPropertiesDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyDisplayPropertiesDefinitionFromJson(json);
	}

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

	
	
	Map<String, dynamic> toJson() => _$DestinyDisplayPropertiesDefinitionToJson(this);
}