
/* Indicates the status of an "Unlock Flag" on a Character or Profile.
These are individual bits of state that can be either set or not set, and sometimes provide interesting human-readable information in their related DestinyUnlockDefinition. */
class DestinyUnlockStatus{
	
	/* The hash identifier for the Unlock Flag. Use to lookup DestinyUnlockDefinition for static data. Not all unlocks have human readable data - in fact, most don't. But when they do, it can be very useful to show. Even if they don't have human readable data, you might be able to infer the meaning of an unlock flag with a bit of experimentation... */
	int unlockHash;
	
	/* Whether the unlock flag is set. */
	bool isSet;
	DestinyUnlockStatus(
		this.unlockHash,
		this.isSet,
	);

	static DestinyUnlockStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyUnlockStatus(
				data['unlockHash'],
				data['isSet'],
		);
	}

	static List<DestinyUnlockStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyUnlockStatus> list = new List();
    data.forEach((item) {
      list.add(DestinyUnlockStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['unlockHash'] = this.unlockHash;
			data['isSet'] = this.isSet;
		return data;
	}
}