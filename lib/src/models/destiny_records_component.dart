import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_record_component.dart';

part 'destiny_records_component.g.dart';

@JsonSerializable()
class DestinyRecordsComponent{	
	DestinyRecordsComponent();

	
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent>? records;
	
	/// The hash for the root presentation node definition of Triumph categories.
	@JsonKey(name:'recordCategoriesRootNodeHash')
	int? recordCategoriesRootNodeHash;
	
	/// The hash for the root presentation node definition of Triumph Seals.
	@JsonKey(name:'recordSealsRootNodeHash')
	int? recordSealsRootNodeHash;

	factory DestinyRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordsComponentToJson(this);

	static Future<DestinyRecordsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordsComponent>((json)=>DestinyRecordsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}