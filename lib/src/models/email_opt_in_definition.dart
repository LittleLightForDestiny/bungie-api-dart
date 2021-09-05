import 'package:json_annotation/json_annotation.dart';

import '../enums/opt_in_flags.dart';
import 'email_subscription_definition.dart';

part 'email_opt_in_definition.g.dart';

/// Defines a single opt-in category: a wide-scoped permission to send emails for the subject related to the opt-in.
@JsonSerializable()
class EmailOptInDefinition{
	
	EmailOptInDefinition();

	factory EmailOptInDefinition.fromJson(Map<String, dynamic> json) {
		return _$EmailOptInDefinitionFromJson(json);
	}

	/// The unique identifier for this opt-in category.
	@JsonKey(name:'name')
	String? name;
	/// The flag value for this opt-in category. For historical reasons, this is defined as a flags enum.
	@JsonKey(name:'value')
	OptInFlags? value;
	/// If true, this opt-in setting should be set by default in situations where accounts are created without explicit choices about what they're opting into.
	@JsonKey(name:'setByDefault')
	bool? setByDefault;
	/// Information about the dependent subscriptions for this opt-in.
	@JsonKey(name:'dependentSubscriptions')
	List<EmailSubscriptionDefinition>? dependentSubscriptions;

	
	
	Map<String, dynamic> toJson() => _$EmailOptInDefinitionToJson(this);
}