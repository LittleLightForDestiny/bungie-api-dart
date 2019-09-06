import 'destiny_record_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_character_records_component.g.dart';

@JsonSerializable()
class DestinyCharacterRecordsComponent {

	@JsonKey(name:'featuredRecordHashes')
	List<int> featuredRecordHashes;

	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent> records;
	DestinyCharacterRecordsComponent();

	factory DestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) => _$DestinyCharacterRecordsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCharacterRecordsComponentToJson(this);
}
