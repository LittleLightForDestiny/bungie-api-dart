import 'destiny_profile_records_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_profile_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileRecordsComponent {

	@JsonKey(name:'data')
	DestinyProfileRecordsComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyProfileRecordsComponent();

	factory SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileRecordsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileRecordsComponentToJson(this);
}
