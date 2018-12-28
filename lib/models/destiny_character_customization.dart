
/* Raw data about the customization options chosen for a character's face and appearance.
You can look up the relevant class/race/gender combo in DestinyCharacterCustomizationOptionDefinition for the character, and then look up these values within the CustomizationOptions found to pull some data about their choices. Warning: not all of that data is meaningful. Some data has useful icons. Others have nothing, and are only meant for 3D rendering purposes (which we sadly do not expose yet) */
class DestinyCharacterCustomization{
	
	/*  */
	int personality;
	
	/*  */
	int face;
	
	/*  */
	int skinColor;
	
	/*  */
	int lipColor;
	
	/*  */
	int eyeColor;
	
	/*  */
	List<int> hairColors;
	
	/*  */
	List<int> featureColors;
	
	/*  */
	int decalColor;
	
	/*  */
	bool wearHelmet;
	
	/*  */
	int hairIndex;
	
	/*  */
	int featureIndex;
	
	/*  */
	int decalIndex;
	DestinyCharacterCustomization(
		this.personality,
		this.face,
		this.skinColor,
		this.lipColor,
		this.eyeColor,
		this.hairColors,
		this.featureColors,
		this.decalColor,
		this.wearHelmet,
		this.hairIndex,
		this.featureIndex,
		this.decalIndex,
	);

	static DestinyCharacterCustomization fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCharacterCustomization(
				data['personality'],
				data['face'],
				data['skinColor'],
				data['lipColor'],
				data['eyeColor'],
				data['hairColors'] != null ? data['hairColors']?.cast<int>() ?? null : null,
				data['featureColors'] != null ? data['featureColors']?.cast<int>() ?? null : null,
				data['decalColor'],
				data['wearHelmet'],
				data['hairIndex'],
				data['featureIndex'],
				data['decalIndex'],
		);
	}

	static List<DestinyCharacterCustomization> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCharacterCustomization> list = new List();
    data.forEach((item) {
      list.add(DestinyCharacterCustomization.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['personality'] = this.personality;
			data['face'] = this.face;
			data['skinColor'] = this.skinColor;
			data['lipColor'] = this.lipColor;
			data['eyeColor'] = this.eyeColor;
			data['hairColors'] = this.hairColors;
			data['featureColors'] = this.featureColors;
			data['decalColor'] = this.decalColor;
			data['wearHelmet'] = this.wearHelmet;
			data['hairIndex'] = this.hairIndex;
			data['featureIndex'] = this.featureIndex;
			data['decalIndex'] = this.decalIndex;
		return data;
	}
}