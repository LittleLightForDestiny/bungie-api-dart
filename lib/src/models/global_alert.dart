import 'package:json_annotation/json_annotation.dart';

import 'stream_info.dart';

part 'global_alert.g.dart';

@JsonSerializable()
class GlobalAlert{
	
	GlobalAlert();

	factory GlobalAlert.fromJson(Map<String, dynamic> json) => _$GlobalAlertFromJson(json);

	@JsonKey(name:'AlertKey')
	String alertKey;
	@JsonKey(name:'AlertHtml')
	String alertHtml;
	@JsonKey(name:'AlertTimestamp')
	String alertTimestamp;
	@JsonKey(name:'AlertLink')
	String alertLink;
	@JsonKey(name:'AlertLevel')
	int alertLevel;
	@JsonKey(name:'AlertType')
	int alertType;
	@JsonKey(name:'StreamInfo')
	StreamInfo streamInfo;

	
	
	Map<String, dynamic> toJson() => _$GlobalAlertToJson(this);
}