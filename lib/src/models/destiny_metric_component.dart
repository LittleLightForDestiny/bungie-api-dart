import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_objective_progress.dart';

part 'destiny_metric_component.g.dart';

@JsonSerializable()
class DestinyMetricComponent{	
	DestinyMetricComponent();

	
	@JsonKey(name:'invisible')
	bool? invisible;
	
	/// Returns data about a character's status with a given Objective. Combine with DestinyObjectiveDefinition static data for display purposes.
	@JsonKey(name:'objectiveProgress')
	DestinyObjectiveProgress? objectiveProgress;

	factory DestinyMetricComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyMetricComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMetricComponentToJson(this);

	static Future<DestinyMetricComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMetricComponent>((json)=>DestinyMetricComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}