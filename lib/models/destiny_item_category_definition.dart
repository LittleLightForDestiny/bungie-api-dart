import 'destiny_display_properties_definition.dart';
class DestinyItemCategoryDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	bool visible;
	bool deprecated;
	String shortTitle;
	String itemTypeRegex;
	String plugCategoryIdentifier;
	String itemTypeRegexNot;
	String originBucketIdentifier;
	int grantDestinyItemType;
	int grantDestinySubType;
	int grantDestinyClass;
	List<int> groupedCategoryHashes;
	List<int> parentCategoryHashes;
	bool groupCategoryOnly;
	int hash;
	int index;
	bool redacted;
	DestinyItemCategoryDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		bool this.visible,
		bool this.deprecated,
		String this.shortTitle,
		String this.itemTypeRegex,
		String this.plugCategoryIdentifier,
		String this.itemTypeRegexNot,
		String this.originBucketIdentifier,
		int this.grantDestinyItemType,
		int this.grantDestinySubType,
		int this.grantDestinyClass,
		List<int> this.groupedCategoryHashes,
		List<int> this.parentCategoryHashes,
		bool this.groupCategoryOnly,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyItemCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemCategoryDefinition(
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
				data['visible'],
				data['deprecated'],
				data['shortTitle'],
				data['itemTypeRegex'],
				data['plugCategoryIdentifier'],
				data['itemTypeRegexNot'],
				data['originBucketIdentifier'],
				data['grantDestinyItemType'],
				data['grantDestinySubType'],
				data['grantDestinyClass'],
				data['groupedCategoryHashes'],
				data['parentCategoryHashes'],
				data['groupCategoryOnly'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyItemCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = displayProperties.toMap();
			data['visible'] = visible;
			data['deprecated'] = deprecated;
			data['shortTitle'] = shortTitle;
			data['itemTypeRegex'] = itemTypeRegex;
			data['plugCategoryIdentifier'] = plugCategoryIdentifier;
			data['itemTypeRegexNot'] = itemTypeRegexNot;
			data['originBucketIdentifier'] = originBucketIdentifier;
			data['grantDestinyItemType'] = grantDestinyItemType;
			data['grantDestinySubType'] = grantDestinySubType;
			data['grantDestinyClass'] = grantDestinyClass;
			data['groupedCategoryHashes'] = groupedCategoryHashes;
			data['parentCategoryHashes'] = parentCategoryHashes;
			data['groupCategoryOnly'] = groupCategoryOnly;
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}