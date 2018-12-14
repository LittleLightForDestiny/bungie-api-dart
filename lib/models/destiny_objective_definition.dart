import 'destiny_display_properties_definition.dart';
import 'destiny_objective_perk_entry_definition.dart';
import 'destiny_objective_stat_entry_definition.dart';
class DestinyObjectiveDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int completionValue;
	int scope;
	int locationHash;
	bool allowNegativeValue;
	bool allowValueChangeWhenCompleted;
	bool isCountingDownward;
	int valueStyle;
	String progressDescription;
	DestinyObjectivePerkEntryDefinition perks;
	DestinyObjectiveStatEntryDefinition stats;
	int minimumVisibilityThreshold;
	bool allowOvercompletion;
	bool showValueOnComplete;
	int completedValueStyle;
	int inProgressValueStyle;
	int hash;
	int index;
	bool redacted;
	DestinyObjectiveDefinition(
		this.displayProperties,
		this.completionValue,
		this.scope,
		this.locationHash,
		this.allowNegativeValue,
		this.allowValueChangeWhenCompleted,
		this.isCountingDownward,
		this.valueStyle,
		this.progressDescription,
		this.perks,
		this.stats,
		this.minimumVisibilityThreshold,
		this.allowOvercompletion,
		this.showValueOnComplete,
		this.completedValueStyle,
		this.inProgressValueStyle,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyObjectiveDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['completionValue'],
				data['scope'],
				data['locationHash'],
				data['allowNegativeValue'],
				data['allowValueChangeWhenCompleted'],
				data['isCountingDownward'],
				data['valueStyle'],
				data['progressDescription'],
				data['perks'] != null ? DestinyObjectivePerkEntryDefinition.fromMap(data['perks']) : null,
				data['stats'] != null ? DestinyObjectiveStatEntryDefinition.fromMap(data['stats']) : null,
				data['minimumVisibilityThreshold'],
				data['allowOvercompletion'],
				data['showValueOnComplete'],
				data['completedValueStyle'],
				data['inProgressValueStyle'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyObjectiveDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['completionValue'] = this.completionValue;
			data['scope'] = this.scope;
			data['locationHash'] = this.locationHash;
			data['allowNegativeValue'] = this.allowNegativeValue;
			data['allowValueChangeWhenCompleted'] = this.allowValueChangeWhenCompleted;
			data['isCountingDownward'] = this.isCountingDownward;
			data['valueStyle'] = this.valueStyle;
			data['progressDescription'] = this.progressDescription;
			data['perks'] = this.perks;
			data['stats'] = this.stats;
			data['minimumVisibilityThreshold'] = this.minimumVisibilityThreshold;
			data['allowOvercompletion'] = this.allowOvercompletion;
			data['showValueOnComplete'] = this.showValueOnComplete;
			data['completedValueStyle'] = this.completedValueStyle;
			data['inProgressValueStyle'] = this.inProgressValueStyle;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}