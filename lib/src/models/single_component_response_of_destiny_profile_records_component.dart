import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_profile_records_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileRecordsComponent{	
	SingleComponentResponseOfDestinyProfileRecordsComponent();

	
	@JsonKey(name:'data')
	DestinyProfileRecordsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyProfileRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileRecordsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyProfileRecordsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyProfileRecordsComponent>((json)=>SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}