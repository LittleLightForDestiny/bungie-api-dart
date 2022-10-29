import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_record_component.dart';

part 'destiny_profile_records_component.g.dart';

@JsonSerializable()
class DestinyProfileRecordsComponent{	
	DestinyProfileRecordsComponent();

	
	/// Your 'active' Triumphs score, maintained for backwards compatibility.
	@JsonKey(name:'score')
	int? score;
	
	/// Your 'active' Triumphs score.
	@JsonKey(name:'activeScore')
	int? activeScore;
	
	/// Your 'legacy' Triumphs score.
	@JsonKey(name:'legacyScore')
	int? legacyScore;
	
	/// Your 'lifetime' Triumphs score.
	@JsonKey(name:'lifetimeScore')
	int? lifetimeScore;
	
	/// If this profile is tracking a record, this is the hash identifier of the record it is tracking.
	@JsonKey(name:'trackedRecordHash')
	int? trackedRecordHash;
	
	@JsonKey(name:'records')
	Map<String, DestinyRecordComponent>? records;
	
	/// The hash for the root presentation node definition of Triumph categories.
	@JsonKey(name:'recordCategoriesRootNodeHash')
	int? recordCategoriesRootNodeHash;
	
	/// The hash for the root presentation node definition of Triumph Seals.
	@JsonKey(name:'recordSealsRootNodeHash')
	int? recordSealsRootNodeHash;

	factory DestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyProfileRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyProfileRecordsComponentToJson(this);

	static Future<DestinyProfileRecordsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyProfileRecordsComponent>((json)=>DestinyProfileRecordsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}