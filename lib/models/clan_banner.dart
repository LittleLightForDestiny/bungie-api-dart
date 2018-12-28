
/*  */
class ClanBanner{
	
	/*  */
	int decalId;
	
	/*  */
	int decalColorId;
	
	/*  */
	int decalBackgroundColorId;
	
	/*  */
	int gonfalonId;
	
	/*  */
	int gonfalonColorId;
	
	/*  */
	int gonfalonDetailId;
	
	/*  */
	int gonfalonDetailColorId;
	ClanBanner(
		this.decalId,
		this.decalColorId,
		this.decalBackgroundColorId,
		this.gonfalonId,
		this.gonfalonColorId,
		this.gonfalonDetailId,
		this.gonfalonDetailColorId,
	);

	static ClanBanner fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ClanBanner(
				data['decalId'],
				data['decalColorId'],
				data['decalBackgroundColorId'],
				data['gonfalonId'],
				data['gonfalonColorId'],
				data['gonfalonDetailId'],
				data['gonfalonDetailColorId'],
		);
	}

	static List<ClanBanner> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ClanBanner> list = new List();
    data.forEach((item) {
      list.add(ClanBanner.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['decalId'] = this.decalId;
			data['decalColorId'] = this.decalColorId;
			data['decalBackgroundColorId'] = this.decalBackgroundColorId;
			data['gonfalonId'] = this.gonfalonId;
			data['gonfalonColorId'] = this.gonfalonColorId;
			data['gonfalonDetailId'] = this.gonfalonDetailId;
			data['gonfalonDetailColorId'] = this.gonfalonDetailColorId;
		return data;
	}
}