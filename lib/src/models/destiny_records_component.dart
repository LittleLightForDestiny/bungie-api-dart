import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_component.dart';

part 'destiny_records_component.g.dart';

@JsonSerializable()
class DestinyRecordsComponent{	
	DestinyRecordsComponent();

	factory DestinyRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordsComponentToJson(this);
	
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent>? records;
	
	/// The hash for the root presentation node definition of Triumph categories.
	@JsonKey(name:'recordCategoriesRootNodeHash')
	int? recordCategoriesRootNodeHash;
	
	/// The hash for the root presentation node definition of Triumph Seals.
	@JsonKey(name:'recordSealsRootNodeHash')
	int? recordSealsRootNodeHash;
}