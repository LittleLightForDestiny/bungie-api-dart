import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_component.dart';

part 'destiny_records_component.g.dart';

@JsonSerializable()
class DestinyRecordsComponent{
	
	DestinyRecordsComponent();

	factory DestinyRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyRecordsComponentFromJson(json);

	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordsComponentToJson(this);
}