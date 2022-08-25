class ApplicationScopes {
    const ApplicationScopes(this._value);
    factory ApplicationScopes.fromJson(int numValue) => ApplicationScopes(numValue);
    
    final int _value;
    
    ///ReadBasicUserProfile = 1
    /// Read basic user profile information such as the user's handle, avatar icon, etc.
    static const ApplicationScopes ReadBasicUserProfile = ApplicationScopes(1);
    ///ReadGroups = 2
    /// Read Group/Clan Forums, Wall, and Members for groups and clans that the user has joined.
    static const ApplicationScopes ReadGroups = ApplicationScopes(2);
    ///WriteGroups = 4
    /// Write Group/Clan Forums, Wall, and Members for groups and clans that the user has joined.
    static const ApplicationScopes WriteGroups = ApplicationScopes(4);
    ///AdminGroups = 8
    /// Administer Group/Clan Forums, Wall, and Members for groups and clans that the user is a founder or an administrator.
    static const ApplicationScopes AdminGroups = ApplicationScopes(8);
    ///BnetWrite = 16
    /// Create new groups, clans, and forum posts, along with other actions that are reserved for Bungie.net elevated scope: not meant to be used by third party applications.
    static const ApplicationScopes BnetWrite = ApplicationScopes(16);
    ///MoveEquipDestinyItems = 32
    /// Move or equip Destiny items
    static const ApplicationScopes MoveEquipDestinyItems = ApplicationScopes(32);
    ///ReadDestinyInventoryAndVault = 64
    /// Read Destiny 1 Inventory and Vault contents. For Destiny 2, this scope is needed to read anything regarded as private. This is the only scope a Destiny 2 app needs for read operations against Destiny 2 data such as inventory, vault, currency, vendors, milestones, progression, etc.
    static const ApplicationScopes ReadDestinyInventoryAndVault = ApplicationScopes(64);
    ///ReadUserData = 128
    /// Read user data such as who they are web notifications, clan/group memberships, recent activity, muted users.
    static const ApplicationScopes ReadUserData = ApplicationScopes(128);
    ///EditUserData = 256
    /// Edit user data such as preferred language, status, motto, avatar selection and theme.
    static const ApplicationScopes EditUserData = ApplicationScopes(256);
    ///ReadDestinyVendorsAndAdvisors = 512
    /// Access vendor and advisor data specific to a user. OBSOLETE. This scope is only used on the Destiny 1 API.
    static const ApplicationScopes ReadDestinyVendorsAndAdvisors = ApplicationScopes(512);
    ///ReadAndApplyTokens = 1024
    /// Read offer history and claim and apply tokens for the user.
    static const ApplicationScopes ReadAndApplyTokens = ApplicationScopes(1024);
    ///AdvancedWriteActions = 2048
    /// Can perform actions that will result in a prompt to the user via the Destiny app.
    static const ApplicationScopes AdvancedWriteActions = ApplicationScopes(2048);
    ///PartnerOfferGrant = 4096
    /// Can use the partner offer api to claim rewards defined for a partner
    static const ApplicationScopes PartnerOfferGrant = ApplicationScopes(4096);
    ///DestinyUnlockValueQuery = 8192
    /// Allows an app to query sensitive information like unlock flags and values not available through normal methods.
    static const ApplicationScopes DestinyUnlockValueQuery = ApplicationScopes(8192);
    ///UserPiiRead = 16384
    /// Allows an app to query sensitive user PII, most notably email information.
    static const ApplicationScopes UserPiiRead = ApplicationScopes(16384);

    int get value {
        return _value;
    }

    bool contains(ApplicationScopes childValue){
        return value & childValue.value == childValue.value;
    }

    int operator & (ApplicationScopes item){
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