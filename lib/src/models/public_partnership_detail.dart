
import 'package:json_annotation/json_annotation.dart';
part 'public_partnership_detail.g.dart';

/// All the partnership info that&#39;s fit to expose externally, if we care to do so.
@JsonSerializable()
class PublicPartnershipDetail {

	@JsonKey(name:'partnerType')
	int partnerType;

	@JsonKey(name:'identifier')
	String identifier;

	@JsonKey(name:'name')
	String name;

	@JsonKey(name:'icon')
	String icon;
	PublicPartnershipDetail();

	factory PublicPartnershipDetail.fromJson(Map<String, dynamic> json) => _$PublicPartnershipDetailFromJson(json);
	
	Map<String, dynamic> toJson() => _$PublicPartnershipDetailToJson(this);
}
