import 'package:json_annotation/json_annotation.dart';

import '../enums/group_application_resolve_state.dart';

part 'group_application_response.g.dart';

@JsonSerializable()
class GroupApplicationResponse{
	
	GroupApplicationResponse();

	factory GroupApplicationResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupApplicationResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'resolution',unknownEnumValue:GroupApplicationResolveState.ProtectedInvalidEnumValue)
	GroupApplicationResolveState resolution;

	
	
	Map<String, dynamic> toJson() => _$GroupApplicationResponseToJson(this);
}