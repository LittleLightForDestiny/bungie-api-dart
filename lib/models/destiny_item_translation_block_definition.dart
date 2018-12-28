import 'dye_reference.dart';
import 'destiny_gear_art_arrangement_reference.dart';

/** This Block defines the rendering data associated with the item, if any. */
class DestinyItemTranslationBlockDefinition{
	
	/**  */
	String weaponPatternIdentifier;
	
	/**  */
	int weaponPatternHash;
	
	/**  */
	List<DyeReference> defaultDyes;
	
	/**  */
	List<DyeReference> lockedDyes;
	
	/**  */
	List<DyeReference> customDyes;
	
	/**  */
	List<DestinyGearArtArrangementReference> arrangements;
	
	/**  */
	bool hasGeometry;
	DestinyItemTranslationBlockDefinition(
		this.weaponPatternIdentifier,
		this.weaponPatternHash,
		this.defaultDyes,
		this.lockedDyes,
		this.customDyes,
		this.arrangements,
		this.hasGeometry,
	);

	static DestinyItemTranslationBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemTranslationBlockDefinition(
				data['weaponPatternIdentifier'],
				data['weaponPatternHash'],
				data['defaultDyes'] != null ? DyeReference.fromList(data['defaultDyes']) : null,
				data['lockedDyes'] != null ? DyeReference.fromList(data['lockedDyes']) : null,
				data['customDyes'] != null ? DyeReference.fromList(data['customDyes']) : null,
				data['arrangements'] != null ? DestinyGearArtArrangementReference.fromList(data['arrangements']) : null,
				data['hasGeometry'],
		);
	}

	static List<DestinyItemTranslationBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemTranslationBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemTranslationBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['weaponPatternIdentifier'] = this.weaponPatternIdentifier;
			data['weaponPatternHash'] = this.weaponPatternHash;
			data['defaultDyes'] = this.defaultDyes.map((item)=>item.toMap()).toList();
			data['lockedDyes'] = this.lockedDyes.map((item)=>item.toMap()).toList();
			data['customDyes'] = this.customDyes.map((item)=>item.toMap()).toList();
			data['arrangements'] = this.arrangements.map((item)=>item.toMap()).toList();
			data['hasGeometry'] = this.hasGeometry;
		return data;
	}
}