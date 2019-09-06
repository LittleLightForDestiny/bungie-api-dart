import 'stream_info.dart';

import 'package:json_annotation/json_annotation.dart';
part 'global_alert.g.dart';

@JsonSerializable()
class GlobalAlert {

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
	GlobalAlert();

	factory GlobalAlert.fromJson(Map<String, dynamic> json) => _$GlobalAlertFromJson(json);
	
	Map<String, dynamic> toJson() => _$GlobalAlertToJson(this);
}
