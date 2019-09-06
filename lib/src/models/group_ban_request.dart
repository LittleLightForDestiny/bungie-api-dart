
import 'package:json_annotation/json_annotation.dart';
part 'group_ban_request.g.dart';

@JsonSerializable()
class GroupBanRequest {

	@JsonKey(name:'comment')
	String comment;

	@JsonKey(name:'length')
	int length;
	GroupBanRequest();

	factory GroupBanRequest.fromJson(Map<String, dynamic> json) => _$GroupBanRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupBanRequestToJson(this);
}
