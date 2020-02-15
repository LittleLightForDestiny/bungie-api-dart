import 'package:json_annotation/json_annotation.dart';

import '../enums/component_privacy_setting.dart';

part 'component_response.g.dart';

/// The base class for any component-returning object that may need to indicate information about the state of the component being returned.
@JsonSerializable()
class ComponentResponse{
	
	ComponentResponse();

	factory ComponentResponse.fromJson(Map<String, dynamic> json) {
		try{
			return _$ComponentResponseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$ComponentResponseToJson(this);
}