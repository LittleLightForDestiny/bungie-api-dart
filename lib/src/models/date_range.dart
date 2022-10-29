import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'date_range.g.dart';

@JsonSerializable()
class DateRange{	
	DateRange();

	
	@JsonKey(name:'start')
	String? start;
	
	@JsonKey(name:'end')
	String? end;

	factory DateRange.fromJson(Map<String, dynamic> json) {
		return _$DateRangeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DateRangeToJson(this);

	static Future<DateRange> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DateRange>((json)=>DateRange.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}