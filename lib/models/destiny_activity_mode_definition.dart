import 'destiny_display_properties_definition.dart';
class DestinyActivityModeDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	String pgcrImage;
	int modeType;
	int activityModeCategory;
	bool isTeamBased;
	bool isAggregateMode;
	List<int> parentHashes;
	String friendlyName;
	Map<String, int> activityModeMappings;
	bool display;
	int order;
	int hash;
	int index;
	bool redacted;
	DestinyActivityModeDefinition(
		this.displayProperties,
		this.pgcrImage,
		this.modeType,
		this.activityModeCategory,
		this.isTeamBased,
		this.isAggregateMode,
		this.parentHashes,
		this.friendlyName,
		this.activityModeMappings,
		this.display,
		this.order,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyActivityModeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityModeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['pgcrImage'],
				data['modeType'],
				data['activityModeCategory'],
				data['isTeamBased'],
				data['isAggregateMode'],
				data['parentHashes'] != null ? data['parentHashes']?.cast<int>() ?? null : null,
				data['friendlyName'],
				data['activityModeMappings'] != null ? Map<String, int>.from(data['activityModeMappings'].map((k, v)=>MapEntry(k, v))) : null,
				data['display'],
				data['order'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityModeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityModeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityModeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['pgcrImage'] = this.pgcrImage;
			data['modeType'] = this.modeType;
			data['activityModeCategory'] = this.activityModeCategory;
			data['isTeamBased'] = this.isTeamBased;
			data['isAggregateMode'] = this.isAggregateMode;
			data['parentHashes'] = this.parentHashes;
			data['friendlyName'] = this.friendlyName;
			data['activityModeMappings'] = this.activityModeMappings;
			data['display'] = this.display;
			data['order'] = this.order;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}