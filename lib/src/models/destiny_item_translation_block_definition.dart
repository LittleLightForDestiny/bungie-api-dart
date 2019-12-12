import 'package:json_annotation/json_annotation.dart';

import 'dye_reference.dart';
import 'destiny_gear_art_arrangement_reference.dart';

part 'destiny_item_translation_block_definition.g.dart';

/// This Block defines the rendering data associated with the item, if any.
@JsonSerializable()
class DestinyItemTranslationBlockDefinition{
	
	DestinyItemTranslationBlockDefinition();

	factory DestinyItemTranslationBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemTranslationBlockDefinitionFromJson(json);

	@JsonKey(name:'weaponPatternIdentifier')
	String weaponPatternIdentifier;
	@JsonKey(name:'weaponPatternHash')
	int weaponPatternHash;
	@JsonKey(name:'defaultDyes')
	List<DyeReference> defaultDyes;
	@JsonKey(name:'lockedDyes')
	List<DyeReference> lockedDyes;
	@JsonKey(name:'customDyes')
	List<DyeReference> customDyes;
	@JsonKey(name:'arrangements')
	List<DestinyGearArtArrangementReference> arrangements;
	@JsonKey(name:'hasGeometry')
	bool hasGeometry;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemTranslationBlockDefinitionToJson(this);
}