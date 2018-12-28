
/**  */
class DestinyCollectibleComponent{
	
	/** A Flags Enumeration where each bit represents a different state that the Collectible can be in. A collectible can be in any number of these states, and you can choose to use or ignore any or all of them when making your own UI that shows Collectible info. Our displays are going to honor them, but we're also the kind of people who only pretend to inhale before quickly passing it to the left. So, you know, do what you got to do.
(All joking aside, please note the caveat I mention around the Invisible flag: there are cases where it is in the best interest of your users to honor these flags even if you're a "show all the data" person. Collector-oriented compulsion is a very unfortunate and real thing, and I would hate to instill that compulsion in others through showing them items that they cannot earn. Please consider this when you are making your own apps/sites.) */
	int state;
	DestinyCollectibleComponent(
		this.state,
	);

	static DestinyCollectibleComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleComponent(
				data['state'],
		);
	}

	static List<DestinyCollectibleComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
		return data;
	}
}