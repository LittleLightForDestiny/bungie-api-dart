import 'destiny_milestone_activity_variant_definition.dart';
class DestinyMilestoneActivityDefinition{
	int conceptualActivityHash;
	Map<String, DestinyMilestoneActivityVariantDefinition> variants;
	DestinyMilestoneActivityDefinition(
		this.conceptualActivityHash,
		this.variants,
	);

	static DestinyMilestoneActivityDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityDefinition(
				data['conceptualActivityHash'],
				data['variants'] != null ? Map<String, DestinyMilestoneActivityVariantDefinition>.from(data['variants'].map((k, v)=>MapEntry(k, DestinyMilestoneActivityVariantDefinition.fromMap(v)))) : null,
		);
	}

	static List<DestinyMilestoneActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['conceptualActivityHash'] = this.conceptualActivityHash;
			data['variants'] = this.variants;
		return data;
	}
}