import 'destiny_display_properties_definition.dart';
import 'destiny_report_reason_definition.dart';
class DestinyReportReasonCategoryDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	Map<DestinyReportReasonDefinition, dynamic> reasons;
	int hash;
	int index;
	bool redacted;
	DestinyReportReasonCategoryDefinition(
		DestinyDisplayPropertiesDefinition this.displayProperties,
		Map<DestinyReportReasonDefinition, dynamic> this.reasons,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyReportReasonCategoryDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportReasonCategoryDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['reasons'],
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
      list.add(DestinyReportReasonCategoryDefinition.fromJson(item));
    });
    return list;
	}
}