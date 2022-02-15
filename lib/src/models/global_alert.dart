import 'package:json_annotation/json_annotation.dart';

import '../enums/global_alert_level.dart';
import '../enums/global_alert_type.dart';
import 'stream_info.dart';

part 'global_alert.g.dart';

@JsonSerializable()
class GlobalAlert{	
	GlobalAlert();

	factory GlobalAlert.fromJson(Map<String, dynamic> json) {
		return _$GlobalAlertFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GlobalAlertToJson(this);
	
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
}