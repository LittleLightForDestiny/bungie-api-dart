import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_component.dart';

part 'destiny_character_records_component.g.dart';

@JsonSerializable()
class DestinyCharacterRecordsComponent{
	
	DestinyCharacterRecordsComponent();

	factory DestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyCharacterRecordsComponentFromJson(json);

	@JsonKey(name:'featuredRecordHashes')
	List<int> featuredRecordHashes;
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;

	
	
	Map<String, dynamic> toJson() => _$DestinyCharacterRecordsComponentToJson(this);
}