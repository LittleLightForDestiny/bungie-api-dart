
import 'package:json_annotation/json_annotation.dart';
part 'paged_query.g.dart';

@JsonSerializable()
class PagedQuery {

	@JsonKey(name:'itemsPerPage')
	int itemsPerPage;

	@JsonKey(name:'currentPage')
	int currentPage;

	@JsonKey(name:'requestContinuationToken')
	String requestContinuationToken;
	PagedQuery();

	factory PagedQuery.fromJson(Map<String, dynamic> json) => _$PagedQueryFromJson(json);
	
	Map<String, dynamic> toJson() => _$PagedQueryToJson(this);
}
