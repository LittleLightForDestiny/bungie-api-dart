import 'package:json_annotation/json_annotation.dart';

import 'destiny_artifact_profile_scoped.dart';

part 'destiny_profile_progression_component.g.dart';

/// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there&#39;s less guitars on fire. Yet. #spoileralert?
/// This will include information such as Checklist info.
@JsonSerializable()
class DestinyProfileProgressionComponent{	
	DestinyProfileProgressionComponent();

	factory DestinyProfileProgressionComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileProgressionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileProgressionComponentToJson(this);
	
	/// The set of checklists that can be examined on a profile-wide basis, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
	/// For each checklist returned, its value is itself a Dictionary keyed by the checklist's hash identifier with the value being a boolean indicating if it's been discovered yet.
	@JsonKey(name:'checklists')
	Map<String, Map<String, bool>>? checklists;
	
	/// Data related to your progress on the current season's artifact that is the same across characters.
	@JsonKey(name:'seasonalArtifact')
	DestinyArtifactProfileScoped? seasonalArtifact;
}