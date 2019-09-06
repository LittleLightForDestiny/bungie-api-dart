
import 'package:json_annotation/json_annotation.dart';
part 'destiny_collectible_acquisition_block.g.dart';

@JsonSerializable()
class DestinyCollectibleAcquisitionBlock {

	@JsonKey(name:'acquireMaterialRequirementHash')
	int acquireMaterialRequirementHash;

	@JsonKey(name:'acquireTimestampUnlockValueHash')
	int acquireTimestampUnlockValueHash;
	DestinyCollectibleAcquisitionBlock();

	factory DestinyCollectibleAcquisitionBlock.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleAcquisitionBlockFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleAcquisitionBlockToJson(this);
}
