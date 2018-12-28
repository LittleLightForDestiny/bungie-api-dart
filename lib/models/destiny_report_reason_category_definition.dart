import 'destiny_display_properties_definition.dart';
import 'destiny_report_reason_definition.dart';

/* If you're going to report someone for a Terms of Service violation, you need to choose a category and reason for the report. This definition holds both the categories and the reasons within those categories, for simplicity and my own laziness' sake.
Note tha this means that, to refer to a Reason by reasonHash, you need a combination of the reasonHash *and* the associated ReasonCategory's hash: there are some reasons defined under multiple categories. */
class DestinyReportReasonCategoryDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* The specific reasons for the report under this category. */
	Map<String, DestinyReportReasonDefinition> reasons;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyReportReasonCategoryDefinition(
		this.displayProperties,
		this.reasons,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyReportReasonCategoryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportReasonCategoryDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['reasons'] != null ? Map<String, DestinyReportReasonDefinition>.from(data['reasons'].map((k, v)=>MapEntry(k, DestinyReportReasonDefinition.fromMap(v)))) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyReportReasonCategoryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyReportReasonCategoryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyReportReasonCategoryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['reasons'] = this.reasons;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}