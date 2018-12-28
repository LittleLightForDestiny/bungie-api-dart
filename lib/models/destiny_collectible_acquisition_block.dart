
/**  */
class DestinyCollectibleAcquisitionBlock{
	
	/**  */
	int acquireMaterialRequirementHash;
	
	/**  */
	int acquireTimestampUnlockValueHash;
	DestinyCollectibleAcquisitionBlock(
		this.acquireMaterialRequirementHash,
		this.acquireTimestampUnlockValueHash,
	);

	static DestinyCollectibleAcquisitionBlock fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyCollectibleAcquisitionBlock(
				data['acquireMaterialRequirementHash'],
				data['acquireTimestampUnlockValueHash'],
		);
	}

	static List<DestinyCollectibleAcquisitionBlock> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyCollectibleAcquisitionBlock> list = new List();
    data.forEach((item) {
      list.add(DestinyCollectibleAcquisitionBlock.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['acquireMaterialRequirementHash'] = this.acquireMaterialRequirementHash;
			data['acquireTimestampUnlockValueHash'] = this.acquireTimestampUnlockValueHash;
		return data;
	}
}