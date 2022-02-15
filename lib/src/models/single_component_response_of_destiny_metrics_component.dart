import 'package:json_annotation/json_annotation.dart';

import 'destiny_metrics_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_metrics_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyMetricsComponent{	
	SingleComponentResponseOfDestinyMetricsComponent();

	factory SingleComponentResponseOfDestinyMetricsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyMetricsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyMetricsComponentToJson(this);
	
	@JsonKey(name:'data')
	DestinyMetricsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}