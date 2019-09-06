import 'destiny_record_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_records_component.g.dart';

@JsonSerializable()
class DestinyRecordsComponent {

	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;
	DestinyRecordsComponent();

	factory DestinyRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyRecordsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordsComponentToJson(this);
}
