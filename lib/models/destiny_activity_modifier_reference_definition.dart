class DestinyActivityModifierReferenceDefinition{
	int activityModifierHash;
	DestinyActivityModifierReferenceDefinition(
		int this.activityModifierHash,
	);

	static DestinyActivityModifierReferenceDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityModifierReferenceDefinition(
				data['activityModifierHash'],
		);
	}

	static List<DestinyActivityModifierReferenceDefinition> fromList(List<dynamic> data){
		List<DestinyActivityModifierReferenceDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModifierReferenceDefinition.fromJson(item));
    });
    return list;
	}
}