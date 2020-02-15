import 'package:json_annotation/json_annotation.dart';

import '../enums/partnership_type.dart';

part 'public_partnership_detail.g.dart';

/// All the partnership info that&#39;s fit to expose externally, if we care to do so.
@JsonSerializable()
class PublicPartnershipDetail{
	
	PublicPartnershipDetail();

	factory PublicPartnershipDetail.fromJson(Map<String, dynamic> json) {
		try{
			return _$PublicPartnershipDetailFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'partnerType',unknownEnumValue:PartnershipType.ProtectedInvalidEnumValue)
	PartnershipType partnerType;
	@JsonKey(name:'identifier')
	String identifier;
	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'icon')
	String icon;

	
	
	Map<String, dynamic> toJson() => _$PublicPartnershipDetailToJson(this);
}