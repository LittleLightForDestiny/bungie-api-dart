import 'user_info_card.dart';

/**  */
class CommunityLiveStatus{
	
	/**  */
	String dateStatusUpdated;
	
	/**  */
	String url;
	
	/**  */
	String partnershipIdentifier;
	
	/** Representing external partners to which BNet users can link accounts, but that are not Account System credentials: partnerships that BNet uses exclusively for data. */
	int partnershipType;
	
	/**  */
	String thumbnail;
	
	/**  */
	String thumbnailSmall;
	
	/**  */
	String thumbnailLarge;
	
	/**  */
	String destinyCharacterId;
	
	/** This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts. */
	UserInfoCard userInfo;
	
	/**  */
	int currentActivityHash;
	
	/**  */
	String dateLastPlayed;
	
	/**  */
	String dateStreamStarted;
	
	/**  */
	String locale;
	
	/**  */
	int currentViewers;
	
	/**  */
	int followers;
	
	/**  */
	int overallViewers;
	
	/**  */
	bool isFeatured;
	
	/**  */
	String title;
	
	/**  */
	int activityModeHash;
	
	/**  */
	String dateFeatured;
	
	/**  */
	double trendingValue;
	
	/**  */
	bool isSubscribable;
	CommunityLiveStatus(
		this.dateStatusUpdated,
		this.url,
		this.partnershipIdentifier,
		this.partnershipType,
		this.thumbnail,
		this.thumbnailSmall,
		this.thumbnailLarge,
		this.destinyCharacterId,
		this.userInfo,
		this.currentActivityHash,
		this.dateLastPlayed,
		this.dateStreamStarted,
		this.locale,
		this.currentViewers,
		this.followers,
		this.overallViewers,
		this.isFeatured,
		this.title,
		this.activityModeHash,
		this.dateFeatured,
		this.trendingValue,
		this.isSubscribable,
	);

	static CommunityLiveStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CommunityLiveStatus(
				data['dateStatusUpdated'],
				data['url'],
				data['partnershipIdentifier'],
				data['partnershipType'],
				data['thumbnail'],
				data['thumbnailSmall'],
				data['thumbnailLarge'],
				data['destinyCharacterId'],
				data['userInfo'] != null ? UserInfoCard.fromMap(data['userInfo']) : null,
				data['currentActivityHash'],
				data['dateLastPlayed'],
				data['dateStreamStarted'],
				data['locale'],
				data['currentViewers'],
				data['followers'],
				data['overallViewers'],
				data['isFeatured'],
				data['title'],
				data['activityModeHash'],
				data['dateFeatured'],
				data['trendingValue'],
				data['isSubscribable'],
		);
	}

	static List<CommunityLiveStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CommunityLiveStatus> list = new List();
    data.forEach((item) {
      list.add(CommunityLiveStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['dateStatusUpdated'] = this.dateStatusUpdated;
			data['url'] = this.url;
			data['partnershipIdentifier'] = this.partnershipIdentifier;
			data['partnershipType'] = this.partnershipType;
			data['thumbnail'] = this.thumbnail;
			data['thumbnailSmall'] = this.thumbnailSmall;
			data['thumbnailLarge'] = this.thumbnailLarge;
			data['destinyCharacterId'] = this.destinyCharacterId;
			data['userInfo'] = this.userInfo.toMap();
			data['currentActivityHash'] = this.currentActivityHash;
			data['dateLastPlayed'] = this.dateLastPlayed;
			data['dateStreamStarted'] = this.dateStreamStarted;
			data['locale'] = this.locale;
			data['currentViewers'] = this.currentViewers;
			data['followers'] = this.followers;
			data['overallViewers'] = this.overallViewers;
			data['isFeatured'] = this.isFeatured;
			data['title'] = this.title;
			data['activityModeHash'] = this.activityModeHash;
			data['dateFeatured'] = this.dateFeatured;
			data['trendingValue'] = this.trendingValue;
			data['isSubscribable'] = this.isSubscribable;
		return data;
	}
}