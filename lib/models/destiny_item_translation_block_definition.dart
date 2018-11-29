import 'dye_reference.dart';
import 'dye_reference.dart';
import 'dye_reference.dart';
import 'destiny_gear_art_arrangement_reference.dart';
class DestinyItemTranslationBlockDefinition{
	String weaponPatternIdentifier;
	int weaponPatternHash;
	List<DyeReference> defaultDyes;
	List<DyeReference> lockedDyes;
	List<DyeReference> customDyes;
	List<DestinyGearArtArrangementReference> arrangements;
	bool hasGeometry;
	DestinyItemTranslationBlockDefinition(
		String this.weaponPatternIdentifier,
		int this.weaponPatternHash,
		List<DyeReference> this.defaultDyes,
		List<DyeReference> this.lockedDyes,
		List<DyeReference> this.customDyes,
		List<DestinyGearArtArrangementReference> this.arrangements,
		bool this.hasGeometry,
	);

	static DestinyItemTranslationBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemTranslationBlockDefinition(
				data['weaponPatternIdentifier'],
				data['weaponPatternHash'],
				DyeReference.fromList(data['defaultDyes']),
				DyeReference.fromList(data['lockedDyes']),
				DyeReference.fromList(data['customDyes']),
				DestinyGearArtArrangementReference.fromList(data['arrangements']),
				data['hasGeometry'],
		);
	}

	static List<DestinyItemTranslationBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemTranslationBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTranslationBlockDefinition.fromJson(item));
    });
    return list;
	}
}