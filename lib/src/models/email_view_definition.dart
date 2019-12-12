import 'package:json_annotation/json_annotation.dart';

import 'email_view_definition_setting.dart';

part 'email_view_definition.g.dart';

/// Represents a data-driven view for Email settings. Web&#x2F;Mobile UI can use this data to show new EMail settings consistently without further manual work.
@JsonSerializable()
class EmailViewDefinition{
	
	EmailViewDefinition();

	factory EmailViewDefinition.fromJson(Map<String, dynamic> json) => _$EmailViewDefinitionFromJson(json);

	/// The identifier for this view.
	@JsonKey(name:'name')
	String name;
	/// The ordered list of settings to show in this view.
	@JsonKey(name:'viewSettings')
	List<EmailViewDefinitionSetting> viewSettings;

	
	
	Map<String, dynamic> toJson() => _$EmailViewDefinitionToJson(this);
}