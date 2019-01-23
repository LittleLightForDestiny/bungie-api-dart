import 'destiny_display_properties_definition.dart';

/** The definition for information related to a key/value pair that is relevant for a particular Milestone or component within the Milestone. 
This lets us more flexibly pass up information that's useful to someone, even if it's not necessarily us. */
class DestinyMilestoneValueDefinition{
	
	/**  */
	String key;
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyMilestoneValueDefinition(
		this.key,
		this.displayProperties,
	);

	static DestinyMilestoneValueDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneValueDefinition(
				data['key'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
		);
	}

	static List<DestinyMilestoneValueDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneValueDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneValueDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['key'] = this.key;
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
		return data;
	}
}