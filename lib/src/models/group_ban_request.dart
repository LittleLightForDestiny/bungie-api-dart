import 'package:json_annotation/json_annotation.dart';

import '../enums/ignore_length.dart';

part 'group_ban_request.g.dart';

@JsonSerializable()
class GroupBanRequest{	
	GroupBanRequest();

	factory GroupBanRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupBanRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupBanRequestToJson(this);
	
	@JsonKey(name:'comment')
	String? comment;
	
	@JsonKey(name:'length',fromJson:decodeIgnoreLength,toJson:encodeIgnoreLength)
	IgnoreLength? length;
}