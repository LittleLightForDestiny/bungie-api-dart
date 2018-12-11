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

	static CommunityLiveStatus fromJson(Map<String, dynamic> data){
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
				UserInfoCard.fromJson(data['userInfo']),
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
      list.add(CommunityLiveStatus.fromJson(item));
    });
    return list;
	}
}