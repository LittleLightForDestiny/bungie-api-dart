import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_record_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeRecordChildEntry{	
	DestinyPresentationNodeRecordChildEntry();

	factory DestinyPresentationNodeRecordChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeRecordChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeRecordChildEntryToJson(this);
	
	@JsonKey(name:'recordHash')
	int? recordHash;
}