import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_record_component.dart';

part 'destiny_character_records_component.g.dart';

@JsonSerializable()
class DestinyCharacterRecordsComponent{	
	DestinyCharacterRecordsComponent();

	
	@JsonKey(name:'featuredRecordHashes')
	List<int>? featuredRecordHashes;
	
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent>? records;
	
	/// The hash for the root presentation node definition of Triumph categories.
	@JsonKey(name:'recordCategoriesRootNodeHash')
	int? recordCategoriesRootNodeHash;
	
	/// The hash for the root presentation node definition of Triumph Seals.
	@JsonKey(name:'recordSealsRootNodeHash')
	int? recordSealsRootNodeHash;

	factory DestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCharacterRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCharacterRecordsComponentToJson(this);

	static Future<DestinyCharacterRecordsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCharacterRecordsComponent>((json)=>DestinyCharacterRecordsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}