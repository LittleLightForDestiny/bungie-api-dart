import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_metric_component.dart';

part 'destiny_metrics_component.g.dart';

@JsonSerializable()
class DestinyMetricsComponent{	
	DestinyMetricsComponent();

	
	@JsonKey(name:'metrics')
	Map<String, DestinyMetricComponent>? metrics;
	
	@JsonKey(name:'metricsRootNodeHash')
	int? metricsRootNodeHash;

	factory DestinyMetricsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyMetricsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMetricsComponentToJson(this);

	static Future<DestinyMetricsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMetricsComponent>((json)=>DestinyMetricsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}