
/** If you want to report a player causing trouble in a game, this request will let you report that player and the specific PGCR in which the trouble was caused, along with why.
Please don't do this just because you dislike the person! I mean, I know people will do it anyways, but can you like take a good walk, or put a curse on them or something? Do me a solid and reconsider.
Note that this request object doesn't have the actual PGCR ID nor your Account/Character ID in it. We will infer that information from your authentication information and the PGCR ID that you pass into the URL of the reporting endpoint itself. */
class DestinyReportOffensePgcrRequest{
	
	/** So you've decided to report someone instead of cursing them and their descendants. Well, okay then. This is the category or categorie(s) of infractions for which you are reporting the user. These are hash identifiers that map to DestinyReportReasonCategoryDefinition entries. */
	List<int> reasonCategoryHashes;
	
	/** If applicable, provide a more specific reason(s) within the general category of problems provided by the reasonHash. This is also an identifier for a reason. All reasonHashes provided must be children of at least one the reasonCategoryHashes provided. */
	List<int> reasonHashes;
	
	/** Within the PGCR provided when calling the Reporting endpoint, this should be the character ID of the user that you thought was violating terms of use. They must exist in the PGCR provided. */
	String offendingCharacterId;
	DestinyReportOffensePgcrRequest(
		this.reasonCategoryHashes,
		this.reasonHashes,
		this.offendingCharacterId,
	);

	static DestinyReportOffensePgcrRequest fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyReportOffensePgcrRequest(
				data['reasonCategoryHashes'] != null ? data['reasonCategoryHashes']?.cast<int>() ?? null : null,
				data['reasonHashes'] != null ? data['reasonHashes']?.cast<int>() ?? null : null,
				data['offendingCharacterId'],
		);
	}

	static List<DestinyReportOffensePgcrRequest> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyReportOffensePgcrRequest> list = new List();
    data.forEach((item) {
      list.add(DestinyReportOffensePgcrRequest.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['reasonCategoryHashes'] = this.reasonCategoryHashes;
			data['reasonHashes'] = this.reasonHashes;
			data['offendingCharacterId'] = this.offendingCharacterId;
		return data;
	}
}