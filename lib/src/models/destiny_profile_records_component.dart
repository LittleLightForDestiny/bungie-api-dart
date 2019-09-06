import 'destiny_record_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_records_component.g.dart';

@JsonSerializable()
class DestinyProfileRecordsComponent {

	/// Your &quot;Triumphs&quot; score.
	@JsonKey(name:'score')
	int score;

	/// If this profile is tracking a record, this is the hash identifier of the record it is tracking.
	@JsonKey(name:'trackedRecordHash')
	int trackedRecordHash;

	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;
	DestinyProfileRecordsComponent();

	factory DestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileRecordsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileRecordsComponentToJson(this);
}
