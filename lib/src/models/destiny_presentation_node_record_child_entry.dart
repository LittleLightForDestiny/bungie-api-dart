
import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_node_record_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeRecordChildEntry {

	@JsonKey(name:'recordHash')
	int recordHash;
	DestinyPresentationNodeRecordChildEntry();

	factory DestinyPresentationNodeRecordChildEntry.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodeRecordChildEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeRecordChildEntryToJson(this);
}
