
import 'package:json_annotation/json_annotation.dart';
part 'date_range.g.dart';

@JsonSerializable()
class DateRange {

	@JsonKey(name:'start')
	String start;

	@JsonKey(name:'end')
	String end;
	DateRange();

	factory DateRange.fromJson(Map<String, dynamic> json) => _$DateRangeFromJson(json);
	
	Map<String, dynamic> toJson() => _$DateRangeToJson(this);
}
