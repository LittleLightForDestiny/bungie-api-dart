import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_collectible_acquisition_block.g.dart';

@JsonSerializable()
class DestinyCollectibleAcquisitionBlock{	
	DestinyCollectibleAcquisitionBlock();

	
	@JsonKey(name:'acquireMaterialRequirementHash')
	int? acquireMaterialRequirementHash;
	
	@JsonKey(name:'acquireTimestampUnlockValueHash')
	int? acquireTimestampUnlockValueHash;

	factory DestinyCollectibleAcquisitionBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectibleAcquisitionBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleAcquisitionBlockToJson(this);

	static Future<DestinyCollectibleAcquisitionBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCollectibleAcquisitionBlock>((json)=>DestinyCollectibleAcquisitionBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}