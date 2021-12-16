import 'package:json_annotation/json_annotation.dart';

import 'destiny_objective_progress.dart';

part 'destiny_metric_component.g.dart';

@JsonSerializable()
class DestinyMetricComponent{
	
	DestinyMetricComponent();

	factory DestinyMetricComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyMetricComponentFromJson(json);
	}

	@JsonKey(name:'invisible')
	bool? invisible;
	/// Returns data about a character's status with a given Objective. Combine with DestinyObjectiveDefinition static data for display purposes.
	@JsonKey(name:'objectiveProgress')
	DestinyObjectiveProgress? objectiveProgress;

	
	
	Map<String, dynamic> toJson() => _$DestinyMetricComponentToJson(this);
}