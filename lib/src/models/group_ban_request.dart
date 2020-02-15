import 'package:json_annotation/json_annotation.dart';

import '../enums/ignore_length.dart';

part 'group_ban_request.g.dart';

@JsonSerializable()
class GroupBanRequest{
	
	GroupBanRequest();

	factory GroupBanRequest.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupBanRequestFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'comment')
	String comment;
	@JsonKey(name:'length',unknownEnumValue:IgnoreLength.ProtectedInvalidEnumValue)
	IgnoreLength length;

	
	
	Map<String, dynamic> toJson() => _$GroupBanRequestToJson(this);
}