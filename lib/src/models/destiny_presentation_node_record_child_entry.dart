import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_record_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeRecordChildEntry{
	
	DestinyPresentationNodeRecordChildEntry();

	factory DestinyPresentationNodeRecordChildEntry.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationNodeRecordChildEntryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'recordHash')
	int recordHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeRecordChildEntryToJson(this);
}