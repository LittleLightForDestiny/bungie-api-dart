import 'destiny_display_properties_definition.dart';

/** A specific reason for being banned. Only accessible under the related category (DestinyReportReasonCategoryDefinition) under which it is shown. Note that this means that report reasons' reasonHash are not globally unique: and indeed, entries like "Other" are defined under most categories for example. */
class DestinyReportReasonDefinition{
	
	/** The identifier for the reason: they are only guaranteed unique under the Category in which they are found. */
	int reasonHash;
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
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