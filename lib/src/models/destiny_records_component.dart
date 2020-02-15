import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_component.dart';

part 'destiny_records_component.g.dart';

@JsonSerializable()
class DestinyRecordsComponent{
	
	DestinyRecordsComponent();

	factory DestinyRecordsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyRecordsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordsComponentToJson(this);
}