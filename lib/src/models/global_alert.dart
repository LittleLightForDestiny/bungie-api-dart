import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/global_alert_level.dart';
import '../enums/global_alert_type.dart';
import 'stream_info.dart';

part 'global_alert.g.dart';

@JsonSerializable()
class GlobalAlert{	
	GlobalAlert();

	
	@JsonKey(name:'AlertKey')
	String? alertKey;
	
	@JsonKey(name:'AlertHtml')
	String? alertHtml;
	
	@JsonKey(name:'AlertTimestamp')
	String? alertTimestamp;
	
	@JsonKey(name:'AlertLink')
	String? alertLink;
	
	@JsonKey(name:'AlertLevel',fromJson:decodeGlobalAlertLevel,toJson:encodeGlobalAlertLevel)
	GlobalAlertLevel? alertLevel;
	
	@JsonKey(name:'AlertType',fromJson:decodeGlobalAlertType,toJson:encodeGlobalAlertType)
	GlobalAlertType? alertType;
	
	@JsonKey(name:'StreamInfo')
	StreamInfo? streamInfo;

	factory GlobalAlert.fromJson(Map<String, dynamic> json) {
		return _$GlobalAlertFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GlobalAlertToJson(this);

	static Future<GlobalAlert> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GlobalAlert>((json)=>GlobalAlert.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}