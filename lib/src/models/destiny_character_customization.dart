
import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_customization.g.dart';

/// Raw data about the customization options chosen for a character&#39;s face and appearance.
/// You can look up the relevant class&#x2F;race&#x2F;gender combo in DestinyCharacterCustomizationOptionDefinition for the character, and then look up these values within the CustomizationOptions found to pull some data about their choices. Warning: not all of that data is meaningful. Some data has useful icons. Others have nothing, and are only meant for 3D rendering purposes (which we sadly do not expose yet)
@JsonSerializable()
class DestinyCharacterCustomization {

	@JsonKey(name:'personality')
	int personality;

	@JsonKey(name:'face')
	int face;

	@JsonKey(name:'skinColor')
	int skinColor;

	@JsonKey(name:'lipColor')
	int lipColor;

	@JsonKey(name:'eyeColor')
	int eyeColor;

	@JsonKey(name:'hairColors')
	List<int> hairColors;

	@JsonKey(name:'featureColors')
	List<int> featureColors;

	@JsonKey(name:'decalColor')
	int decalColor;

	@JsonKey(name:'wearHelmet')
	bool wearHelmet;

	@JsonKey(name:'hairIndex')
	int hairIndex;

	@JsonKey(name:'featureIndex')
	int featureIndex;

	@JsonKey(name:'decalIndex')
	int decalIndex;
	DestinyCharacterCustomization();

	factory DestinyCharacterCustomization.fromJson(Map<String, dynamic> json) => _$DestinyCharacterCustomizationFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterCustomizationToJson(this);
}
