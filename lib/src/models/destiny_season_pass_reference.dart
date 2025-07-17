import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_season_pass_reference.g.dart';

/// Defines the hash, unlock flag and start time of season passes
@JsonSerializable()
class DestinySeasonPassReference{	
	DestinySeasonPassReference();

	
	/// The Season Pass Hash
	@JsonKey(name:'seasonPassHash')
	int? seasonPassHash;
	
	/// The Season Pass Start Date
	@JsonKey(name:'seasonPassStartDate')
	String? seasonPassStartDate;
	
	/// The Season Pass End Date
	@JsonKey(name:'seasonPassEndDate')
	String? seasonPassEndDate;

	factory DestinySeasonPassReference.fromJson(Map<String, dynamic> json) {
		return _$DestinySeasonPassReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySeasonPassReferenceToJson(this);

	static Future<DestinySeasonPassReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySeasonPassReference>((json)=>DestinySeasonPassReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}