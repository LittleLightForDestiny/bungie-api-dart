import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'paged_query.g.dart';

@JsonSerializable()
class PagedQuery{	
	PagedQuery();

	
	@JsonKey(name:'itemsPerPage')
	int? itemsPerPage;
	
	@JsonKey(name:'currentPage')
	int? currentPage;
	
	@JsonKey(name:'requestContinuationToken')
	String? requestContinuationToken;

	factory PagedQuery.fromJson(Map<String, dynamic> json) {
		return _$PagedQueryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PagedQueryToJson(this);

	static Future<PagedQuery> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PagedQuery>((json)=>PagedQuery.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}