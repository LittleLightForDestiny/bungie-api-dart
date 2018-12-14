import 'destiny_display_properties_definition.dart';
class DestinyReportReasonDefinition{
	int reasonHash;
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyReportReasonDefinition(
		this.reasonHash,
		this.displayProperties,
	);

	static DestinyReportReasonDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportReasonDefinition(
				data['reasonHash'],
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
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
			data['reasonHash'] = this.reasonHash;
			data['displayProperties'] = this.displayProperties.toMap();
		return data;
	}
}