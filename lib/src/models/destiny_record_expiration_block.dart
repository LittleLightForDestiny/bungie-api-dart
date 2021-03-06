import 'package:json_annotation/json_annotation.dart';


part 'destiny_record_expiration_block.g.dart';

/// If this record has an expiration after which it cannot be earned, this is some information about that expiration.
@JsonSerializable()
class DestinyRecordExpirationBlock{
	
	DestinyRecordExpirationBlock();

	factory DestinyRecordExpirationBlock.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyRecordExpirationBlockFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'hasExpiration')
	bool hasExpiration;
	@JsonKey(name:'description')
	String description;
	@JsonKey(name:'icon')
	String icon;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordExpirationBlockToJson(this);
}