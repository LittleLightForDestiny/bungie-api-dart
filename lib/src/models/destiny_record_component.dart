import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_record_state.dart';
import 'destiny_objective_progress.dart';

part 'destiny_record_component.g.dart';

@JsonSerializable()
class DestinyRecordComponent{	
	DestinyRecordComponent();

	
	@JsonKey(name:'state')
	DestinyRecordState? state;
	
	@JsonKey(name:'objectives')
	List<DestinyObjectiveProgress>? objectives;
	
	@JsonKey(name:'intervalObjectives')
	List<DestinyObjectiveProgress>? intervalObjectives;
	
	@JsonKey(name:'intervalsRedeemedCount')
	int? intervalsRedeemedCount;
	
	/// If available, this is the number of times this record has been completed. For example, the number of times a seal title has been gilded.
	@JsonKey(name:'completedCount')
	int? completedCount;
	
	/// If available, a list that describes which reward rewards should be shown (true) or hidden (false). This property is for regular record rewards, and not for interval objective rewards.
	@JsonKey(name:'rewardVisibilty')
	List<bool>? rewardVisibilty;

	factory DestinyRecordComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordComponentToJson(this);

	static Future<DestinyRecordComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordComponent>((json)=>DestinyRecordComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}