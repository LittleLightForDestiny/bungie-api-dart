import 'package:json_annotation/json_annotation.dart';


part 'date_range.g.dart';

@JsonSerializable()
class DateRange{	
	DateRange();

	factory DateRange.fromJson(Map<String, dynamic> json) {
		return _$DateRangeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DateRangeToJson(this);
	
	@JsonKey(name:'start')
	String? start;
	
	@JsonKey(name:'end')
	String? end;
}