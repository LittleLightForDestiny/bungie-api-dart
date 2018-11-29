import 'destiny_display_properties_definition.dart';
class DestinySocketCategoryDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int uiCategoryStyle;
	int categoryStyle;
	int hash;
	int index;
	bool redacted;
	DestinySocketCategoryDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.uiCategoryStyle,
		int this.categoryStyle,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinySocketCategoryDefinition fromJson(Map<String, dynamic> data){
		return new DestinySocketCategoryDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['uiCategoryStyle'],
				data['categoryStyle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinySocketCategoryDefinition> fromList(List<dynamic> data){
		List<DestinySocketCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySocketCategoryDefinition.fromJson(item));
    });
    return list;
	}
}