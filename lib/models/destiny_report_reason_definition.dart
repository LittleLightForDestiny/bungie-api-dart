import 'destiny_display_properties_definition.dart';
class DestinyReportReasonDefinition{
	int reasonHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyReportReasonDefinition(
		int this.reasonHash,
		DestinyDisplayPropertiesDefinition this.displayProperties,
	);

	static DestinyReportReasonDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportReasonDefinition(
				data['reasonHash'],
				DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']),
		);
	}

	static List<DestinyReportReasonDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyReportReasonDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyReportReasonDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['reasonHash'] = reasonHash;
			data['displayProperties'] = displayProperties.toMap();
	}
}