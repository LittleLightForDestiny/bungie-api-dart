import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_record_expiration_block.g.dart';

/// If this record has an expiration after which it cannot be earned, this is some information about that expiration.
@JsonSerializable()
class DestinyRecordExpirationBlock{	
	DestinyRecordExpirationBlock();

	
	@JsonKey(name:'hasExpiration')
	bool? hasExpiration;
	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'icon')
	String? icon;

	factory DestinyRecordExpirationBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordExpirationBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordExpirationBlockToJson(this);

	static Future<DestinyRecordExpirationBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordExpirationBlock>((json)=>DestinyRecordExpirationBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}