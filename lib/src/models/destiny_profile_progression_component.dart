
import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_progression_component.g.dart';

/// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there&#39;s less guitars on fire. Yet. #spoileralert?
/// This will include information such as Checklist info.
@JsonSerializable()
class DestinyProfileProgressionComponent {

	/// The set of checklists that can be examined on a profile-wide basis, keyed by the hash identifier of the Checklist (DestinyChecklistDefinition)
	/// For each checklist returned, its value is itself a Dictionary keyed by the checklist&#39;s hash identifier with the value being a boolean indicating if it&#39;s been discovered yet.
	@JsonKey(name:'checklists')
	Map<String, Map<String, bool>> checklists;
	DestinyProfileProgressionComponent();

	factory DestinyProfileProgressionComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileProgressionComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileProgressionComponentToJson(this);
}
