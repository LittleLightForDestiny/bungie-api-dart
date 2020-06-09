import 'package:json_annotation/json_annotation.dart';

import 'destiny_metric_component.dart';

part 'destiny_metrics_component.g.dart';

@JsonSerializable()
class DestinyMetricsComponent{
	
	DestinyMetricsComponent();

	factory DestinyMetricsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyMetricsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'metrics')
	Map<String, DestinyMetricComponent> metrics;
	@JsonKey(name:'metricsRootNodeHash')
	int metricsRootNodeHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyMetricsComponentToJson(this);
}