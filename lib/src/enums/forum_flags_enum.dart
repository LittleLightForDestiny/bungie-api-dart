class ForumFlagsEnum {
    const ForumFlagsEnum(this._value);
    factory ForumFlagsEnum.fromJson(int numValue) => ForumFlagsEnum(numValue);
    
    final int _value;
    
    ///None = 0
    static const ForumFlagsEnum None = ForumFlagsEnum(0);
    ///BungieStaffPost = 1
    static const ForumFlagsEnum BungieStaffPost = ForumFlagsEnum(1);
    ///ForumNinjaPost = 2
    static const ForumFlagsEnum ForumNinjaPost = ForumFlagsEnum(2);
    ///ForumMentorPost = 4
    static const ForumFlagsEnum ForumMentorPost = ForumFlagsEnum(4);
    ///TopicBungieStaffPosted = 8
    static const ForumFlagsEnum TopicBungieStaffPosted = ForumFlagsEnum(8);
    ///TopicBungieVolunteerPosted = 16
    static const ForumFlagsEnum TopicBungieVolunteerPosted = ForumFlagsEnum(16);
    ///QuestionAnsweredByBungie = 32
    static const ForumFlagsEnum QuestionAnsweredByBungie = ForumFlagsEnum(32);
    ///QuestionAnsweredByNinja = 64
    static const ForumFlagsEnum QuestionAnsweredByNinja = ForumFlagsEnum(64);
    ///CommunityContent = 128
    static const ForumFlagsEnum CommunityContent = ForumFlagsEnum(128);

    int get value {
        return _value;
    }

    bool contains(ForumFlagsEnum childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (ForumFlagsEnum item){
      return value & item.value;
    }

    @override
    bool operator ==(dynamic other) {
        if(other is int){
            return other == value;
        }
        try{
        return value == other.value;
        }catch(e){
            return other == this;
        }
    }

    @override
    int get hashCode => value;
    
    int toJson() => value;
}