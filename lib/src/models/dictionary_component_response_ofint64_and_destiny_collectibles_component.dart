import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_collectibles_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent{
	
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyCollectiblesComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentToJson(this);
}