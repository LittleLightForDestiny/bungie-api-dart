import 'user_info_card.dart';
class CommunityLiveStatus{
	String dateStatusUpdated;
	String url;
	String partnershipIdentifier;
	int partnershipType;
	String thumbnail;
	String thumbnailSmall;
	String thumbnailLarge;
	String destinyCharacterId;
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
		String this.destinyCharacterId,
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