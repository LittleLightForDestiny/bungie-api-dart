import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_record_state.dart';
import 'destiny_objective_progress.dart';

part 'destiny_record_component.g.dart';

@JsonSerializable()
class DestinyRecordComponent{
	
	DestinyRecordComponent();

	factory DestinyRecordComponent.fromJson(Map<String, dynamic> json) => _$DestinyRecordComponentFromJson(json);

	@JsonKey(name:'state')
	DestinyRecordState state;
	@JsonKey(name:'objectives')
	List<DestinyObjectiveProgress> objectives;
	@JsonKey(name:'intervalObjectives')
	List<DestinyObjectiveProgress> intervalObjectives;
	@JsonKey(name:'intervalsRedeemedCount')
	int intervalsRedeemedCount;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordComponentToJson(this);
}