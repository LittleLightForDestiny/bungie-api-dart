import 'destiny_display_properties_definition.dart';
import 'destiny_art_dye_reference.dart';
class DestinyEquipmentSlotDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int equipmentCategoryHash;
	int bucketTypeHash;
	bool applyCustomArtDyes;
	List<DestinyArtDyeReference> artDyeChannels;
	int hash;
	int index;
	bool redacted;
	DestinyEquipmentSlotDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.equipmentCategoryHash,
		int this.bucketTypeHash,
		bool this.applyCustomArtDyes,
		List<DestinyArtDyeReference> this.artDyeChannels,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyEquipmentSlotDefinition fromJson(Map<String, dynamic> data){
		return new DestinyEquipmentSlotDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['equipmentCategoryHash'],
				data['bucketTypeHash'],
				data['applyCustomArtDyes'],
				DestinyArtDyeReference.fromList(data['artDyeChannels']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyEquipmentSlotDefinition> fromList(List<dynamic> data){
		List<DestinyEquipmentSlotDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyEquipmentSlotDefinition.fromJson(item));
    });
    return list;
	}
}