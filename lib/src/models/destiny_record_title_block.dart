import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_record_title_block.g.dart';

@JsonSerializable()
class DestinyRecordTitleBlock{	
	DestinyRecordTitleBlock();

	
	@JsonKey(name:'hasTitle')
	bool? hasTitle;
	
	@JsonKey(name:'titlesByGender')
	Map<String, String>? titlesByGender;
	
	/// For those who prefer to use the definitions.
	@JsonKey(name:'titlesByGenderHash')
	Map<String, String>? titlesByGenderHash;
	
	@JsonKey(name:'gildingTrackingRecordHash')
	int? gildingTrackingRecordHash;

	factory DestinyRecordTitleBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordTitleBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordTitleBlockToJson(this);

	static Future<DestinyRecordTitleBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordTitleBlock>((json)=>DestinyRecordTitleBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}