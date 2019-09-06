import 'destiny_objective_progress.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_node_component.g.dart';

@JsonSerializable()
class DestinyPresentationNodeComponent {

	@JsonKey(name:'state')
	int state;

	/// An optional property: presentation nodes MAY have objectives, which can be used to infer more human readable data about the progress. However, progressValue and completionValue ought to be considered the canonical values for progress on Progression Nodes.
	@JsonKey(name:'objective')
	DestinyObjectiveProgress objective;

	/// How much of the presentation node is considered to be completed so far by the given character&#x2F;profile.
	@JsonKey(name:'progressValue')
	int progressValue;

	/// The value at which the presentation ode is considered to be completed.
	@JsonKey(name:'completionValue')
	int completionValue;
	DestinyPresentationNodeComponent();

	factory DestinyPresentationNodeComponent.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodeComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeComponentToJson(this);
}
