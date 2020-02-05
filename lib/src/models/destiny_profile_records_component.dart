import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_component.dart';

part 'destiny_profile_records_component.g.dart';

@JsonSerializable()
class DestinyProfileRecordsComponent{
	
	DestinyProfileRecordsComponent();

	factory DestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyProfileRecordsComponentFromJson(json);

	/// Your "Triumphs" score.
	@JsonKey(name:'score')
	int score;
	/// If this profile is tracking a record, this is the hash identifier of the record it is tracking.
	@JsonKey(name:'trackedRecordHash')
	int trackedRecordHash;
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;

	
	
	Map<String, dynamic> toJson() => _$DestinyProfileRecordsComponentToJson(this);
}