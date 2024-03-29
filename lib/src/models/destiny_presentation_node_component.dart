import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_presentation_node_state.dart';
import 'destiny_objective_progress.dart';

part 'destiny_presentation_node_component.g.dart';

@JsonSerializable()
class DestinyPresentationNodeComponent{	
	DestinyPresentationNodeComponent();

	
	@JsonKey(name:'state')
	DestinyPresentationNodeState? state;
	
	/// An optional property: presentation nodes MAY have objectives, which can be used to infer more human readable data about the progress. However, progressValue and completionValue ought to be considered the canonical values for progress on Progression Nodes.
	@JsonKey(name:'objective')
	DestinyObjectiveProgress? objective;
	
	/// How much of the presentation node is considered to be completed so far by the given character/profile.
	@JsonKey(name:'progressValue')
	int? progressValue;
	
	/// The value at which the presentation node is considered to be completed.
	@JsonKey(name:'completionValue')
	int? completionValue;
	
	/// If available, this is the current score for the record category that this node represents.
	@JsonKey(name:'recordCategoryScore')
	int? recordCategoryScore;

	factory DestinyPresentationNodeComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeComponentToJson(this);

	static Future<DestinyPresentationNodeComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeComponent>((json)=>DestinyPresentationNodeComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}