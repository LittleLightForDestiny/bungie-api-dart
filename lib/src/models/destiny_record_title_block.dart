import 'package:json_annotation/json_annotation.dart';


part 'destiny_record_title_block.g.dart';

@JsonSerializable()
class DestinyRecordTitleBlock{	
	DestinyRecordTitleBlock();

	factory DestinyRecordTitleBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordTitleBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordTitleBlockToJson(this);
	
	@JsonKey(name:'hasTitle')
	bool? hasTitle;
	
	@JsonKey(name:'titlesByGender')
	Map<String, String>? titlesByGender;
	
	/// For those who prefer to use the definitions.
	@JsonKey(name:'titlesByGenderHash')
	Map<String, String>? titlesByGenderHash;
	
	@JsonKey(name:'gildingTrackingRecordHash')
	int? gildingTrackingRecordHash;
}