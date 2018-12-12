class DestinyTalentNodeStepGroups{
	int weaponPerformance;
	int impactEffects;
	int guardianAttributes;
	int lightAbilities;
	int damageTypes;
	DestinyTalentNodeStepGroups(
		int this.weaponPerformance,
		int this.impactEffects,
		int this.guardianAttributes,
		int this.lightAbilities,
		int this.damageTypes,
	);

	static DestinyTalentNodeStepGroups fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyTalentNodeStepGroups(
				data['weaponPerformance'],
				data['impactEffects'],
				data['guardianAttributes'],
				data['lightAbilities'],
				data['damageTypes'],
		);
	}

	static List<DestinyTalentNodeStepGroups> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyTalentNodeStepGroups> list = new List();
    data.forEach((item) {
      list.add(DestinyTalentNodeStepGroups.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['weaponPerformance'] = this.weaponPerformance;
			data['impactEffects'] = this.impactEffects;
			data['guardianAttributes'] = this.guardianAttributes;
			data['lightAbilities'] = this.lightAbilities;
			data['damageTypes'] = this.damageTypes;
		return data;
	}
}