class BungieMembershipType[]{
	BungieMembershipType[](
	);

	static BungieMembershipType[] fromJson(Map<String, dynamic> data){
		return new BungieMembershipType[](
		);
	}

	static List<BungieMembershipType[]> fromList(List<dynamic> data){
		List<BungieMembershipType[]> list = new List();
    data.forEach((item) {
      list.add(BungieMembershipType[].fromJson(item));
    });
    return list;
	}
}