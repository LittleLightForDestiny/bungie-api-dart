import 'package:json_annotation/json_annotation.dart';

import '../enums/group_type.dart';
import '../enums/group_date_range.dart';
import '../enums/group_sort_by.dart';

part 'group_query.g.dart';

/// NOTE: GroupQuery, as of Destiny 2, has essentially two totally different and incompatible &quot;modes&quot;.
/// If you are querying for a group, you can pass any of the properties below.
/// If you are querying for a Clan, you MUST NOT pass any of the following properties (they must be null or undefined in your request, not just empty string&#x2F;default values):
/// - groupMemberCountFilter - localeFilter - tagText
/// If you pass these, you will get a useless InvalidParameters error.
@JsonSerializable()
class GroupQuery{
	
	GroupQuery();

	factory GroupQuery.fromJson(Map<String, dynamic> json) {
		try{
			return _$GroupQueryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'name')
	String name;
	@JsonKey(name:'groupType',unknownEnumValue:GroupType.ProtectedInvalidEnumValue)
	GroupType groupType;
	@JsonKey(name:'creationDate',unknownEnumValue:GroupDateRange.ProtectedInvalidEnumValue)
	GroupDateRange creationDate;
	@JsonKey(name:'sortBy',unknownEnumValue:GroupSortBy.ProtectedInvalidEnumValue)
	GroupSortBy sortBy;
	@JsonKey(name:'groupMemberCountFilter')
	int groupMemberCountFilter;
	@JsonKey(name:'localeFilter')
	String localeFilter;
	@JsonKey(name:'tagText')
	String tagText;
	@JsonKey(name:'itemsPerPage')
	int itemsPerPage;
	@JsonKey(name:'currentPage')
	int currentPage;
	@JsonKey(name:'requestContinuationToken')
	String requestContinuationToken;

	
	
	Map<String, dynamic> toJson() => _$GroupQueryToJson(this);
}