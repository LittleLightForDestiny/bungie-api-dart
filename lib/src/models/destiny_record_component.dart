import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_record_component.g.dart';

@JsonSerializable()
class DestinyRecordComponent {

	@JsonKey(name:'state')
	int state;

	@JsonKey(name:'objectives')
	List<DestinyObjectiveProgress> objectives;
	DestinyRecordComponent();

	factory DestinyRecordComponent.fromJson(Map<String, dynamic> json) => _$DestinyRecordComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordComponentToJson(this);
}
