import 'destiny_display_properties_definition.dart';
class DestinyReportReasonDefinition{
	int reasonHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyReportReasonDefinition(
		int this.reasonHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyReportReasonDefinition fromJson(Map<String, dynamic> data){
		return new DestinyReportReasonDefinition(
				data['reasonHash'],
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
		);
	}

	static List<DestinyReportReasonDefinition> fromList(List<dynamic> data){
		List<DestinyReportReasonDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyReportReasonDefinition.fromJson(item));
    });
    return list;
	}
}