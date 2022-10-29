import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/ignore_length.dart';

part 'group_ban_request.g.dart';

@JsonSerializable()
class GroupBanRequest{	
	GroupBanRequest();

	
	@JsonKey(name:'comment')
	String? comment;
	
	@JsonKey(name:'length',fromJson:decodeIgnoreLength,toJson:encodeIgnoreLength)
	IgnoreLength? length;

	factory GroupBanRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupBanRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupBanRequestToJson(this);

	static Future<GroupBanRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupBanRequest>((json)=>GroupBanRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}