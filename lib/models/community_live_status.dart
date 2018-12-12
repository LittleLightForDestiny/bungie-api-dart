import 'user_info_card.dart';
class CommunityLiveStatus{
	String dateStatusUpdated;
	String url;
	String partnershipIdentifier;
	int partnershipType;
	String thumbnail;
	String thumbnailSmall;
	String thumbnailLarge;
	int destinyCharacterId;
	UserInfoCard userInfo;
	int currentActivityHash;
	String dateLastPlayed;
	String dateStreamStarted;
	String locale;
	int currentViewers;
	int followers;
	int overallViewers;
	bool isFeatured;
	String title;
	int activityModeHash;
	String dateFeatured;
	int trendingValue;
	bool isSubscribable;
	CommunityLiveStatus(
		String this.dateStatusUpdated,
		String this.url,
		String this.partnershipIdentifier,
		int this.partnershipType,
		String this.thumbnail,
		String this.thumbnailSmall,
		String this.thumbnailLarge,
		int this.destinyCharacterId,
		UserInfoCard this.userInfo,
		int this.currentActivityHash,
		String this.dateLastPlayed,
		String this.dateStreamStarted,
		String this.locale,
		int this.currentViewers,
		int this.followers,
		int this.overallViewers,
		bool this.isFeatured,
		String this.title,
		int this.activityModeHash,
		String this.dateFeatured,
		int this.trendingValue,
		bool this.isSubscribable,
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
				UserInfoCard.fromMap(data['userInfo']),
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
			data['dateStatusUpdated'] = dateStatusUpdated;
			data['url'] = url;
			data['partnershipIdentifier'] = partnershipIdentifier;
			data['partnershipType'] = partnershipType;
			data['thumbnail'] = thumbnail;
			data['thumbnailSmall'] = thumbnailSmall;
			data['thumbnailLarge'] = thumbnailLarge;
			data['destinyCharacterId'] = destinyCharacterId;
			data['userInfo'] = userInfo.toMap();
			data['currentActivityHash'] = currentActivityHash;
			data['dateLastPlayed'] = dateLastPlayed;
			data['dateStreamStarted'] = dateStreamStarted;
			data['locale'] = locale;
			data['currentViewers'] = currentViewers;
			data['followers'] = followers;
			data['overallViewers'] = overallViewers;
			data['isFeatured'] = isFeatured;
			data['title'] = title;
			data['activityModeHash'] = activityModeHash;
			data['dateFeatured'] = dateFeatured;
			data['trendingValue'] = trendingValue;
			data['isSubscribable'] = isSubscribable;
	}
}