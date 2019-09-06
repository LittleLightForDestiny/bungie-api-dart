import 'destiny_vendor_display_properties_definition.dart';
import 'date_range.dart';
import 'destiny_vendor_action_definition.dart';
import 'destiny_vendor_category_entry_definition.dart';
import 'destiny_display_category_definition.dart';
import 'destiny_vendor_interaction_definition.dart';
import 'destiny_vendor_inventory_flyout_definition.dart';
import 'destiny_vendor_item_definition.dart';
import 'destiny_vendor_service_definition.dart';
import 'destiny_vendor_accepted_item_definition.dart';
import 'destiny_vendor_location_definition.dart';
import 'destiny_vendor_group_reference.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_definition.g.dart';

/// These are the definitions for Vendors.
/// In Destiny, a Vendor can be a lot of things - some things that you wouldn&#39;t expect, and some things that you don&#39;t even see directly in the game. Vendors are the Dolly Levi of the Destiny universe.
/// - Traditional Vendors as you see in game: people who you come up to and who give you quests, rewards, or who you can buy things from.
/// - Kiosks&#x2F;Collections, which are really just Vendors that don&#39;t charge currency (or charge some pittance of a currency) and whose gating for purchases revolves more around your character&#39;s state.
/// - Previews for rewards or the contents of sacks. These are implemented as Vendors, where you can&#39;t actually purchase from them but the items that they have for sale and the categories of sale items reflect the rewards or contents of the sack. This is so that the game could reuse the existing Vendor display UI for rewards and save a bunch of wheel reinvention.
/// - Item Transfer capabilities, like the Vault and Postmaster. Vendors can have &quot;acceptedItem&quot; buckets that determine the source and destination buckets for transfers. When you interact with such a vendor, these buckets are what gets shown in the UI instead of any items that the Vendor would have for sale. Yep, the Vault is a vendor.
/// It is pretty much guaranteed that they&#39;ll be used for even more features in the future. They have come to be seen more as generic categorized containers for items than &quot;vendors&quot; in a traditional sense, for better or worse.
/// Where possible and time allows, we&#39;ll attempt to split those out into their own more digestible derived &quot;Definitions&quot;: but often time does not allow that, as you can see from the above ways that vendors are used which we never split off from Vendor Definitions externally.
/// Since Vendors are so many things to so many parts of the game, the definition is understandably complex. You will want to combine this data with live Vendor information from the API when it is available.
@JsonSerializable()
class DestinyVendorDefinition {

	@JsonKey(name:'displayProperties')
	DestinyVendorDisplayPropertiesDefinition displayProperties;

	/// If the vendor has a custom localized string describing the &quot;buy&quot; action, that is returned here.
	@JsonKey(name:'buyString')
	String buyString;

	/// Ditto for selling. Not that you can sell items to a vendor anymore. Will it come back? Who knows. The string&#39;s still there.
	@JsonKey(name:'sellString')
	String sellString;

	/// If the vendor has an item that should be displayed as the &quot;featured&quot; item, this is the hash identifier for that DestinyVendorItemDefinition.
	/// Apparently this is usually a related currency, like a reputation token. But it need not be restricted to that.
	@JsonKey(name:'displayItemHash')
	int displayItemHash;

	/// If this is true, you aren&#39;t allowed to buy whatever the vendor is selling.
	@JsonKey(name:'inhibitBuying')
	bool inhibitBuying;

	/// If this is true, you&#39;re not allowed to sell whatever the vendor is buying.
	@JsonKey(name:'inhibitSelling')
	bool inhibitSelling;

	/// If the Vendor has a faction, this hash will be valid and point to a DestinyFactionDefinition.
	/// The game UI and BNet often mine the faction definition for additional elements and details to place on the screen, such as the faction&#39;s Progression status (aka &quot;Reputation&quot;).
	@JsonKey(name:'factionHash')
	int factionHash;

	/// A number used for calculating the frequency of a vendor&#39;s inventory resetting&#x2F;refreshing.
	/// Don&#39;t worry about calculating this - we do it on the server side and send you the next refresh date with the live data.
	@JsonKey(name:'resetIntervalMinutes')
	int resetIntervalMinutes;

	/// Again, used for reset&#x2F;refreshing of inventory. Don&#39;t worry too much about it. Unless you want to.
	@JsonKey(name:'resetOffsetMinutes')
	int resetOffsetMinutes;

	/// If an item can&#39;t be purchased from the vendor, there may be many &quot;custom&quot;&#x2F;game state specific reasons why not.
	/// This is a list of localized strings with messages for those custom failures. The live BNet data will return a failureIndexes property for items that can&#39;t be purchased: using those values to index into this array, you can show the user the appropriate failure message for the item that can&#39;t be bought.
	@JsonKey(name:'failureStrings')
	List<String> failureStrings;

	/// If we were able to predict the dates when this Vendor will be visible&#x2F;available, this will be the list of those date ranges. Sadly, we&#39;re not able to predict this very frequently, so this will often be useless data.
	@JsonKey(name:'unlockRanges')
	List<DateRange> unlockRanges;

	/// The internal identifier for the Vendor. A holdover from the old days of Vendors, but we don&#39;t have time to refactor it away.
	@JsonKey(name:'vendorIdentifier')
	String vendorIdentifier;

	/// A portrait of the Vendor&#39;s smiling mug. Or frothing tentacles.
	@JsonKey(name:'vendorPortrait')
	String vendorPortrait;

	/// If the vendor has a custom banner image, that can be found here.
	@JsonKey(name:'vendorBanner')
	String vendorBanner;

	/// If a vendor is not enabled, we won&#39;t even save the vendor&#39;s definition, and we won&#39;t return any items or info about them. It&#39;s as if they don&#39;t exist.
	@JsonKey(name:'enabled')
	bool enabled;

	/// If a vendor is not visible, we still have and will give vendor definition info, but we won&#39;t use them for things like Advisors or UI.
	@JsonKey(name:'visible')
	bool visible;

	/// The identifier of the VendorCategoryDefinition for this vendor&#39;s subcategory.
	@JsonKey(name:'vendorSubcategoryIdentifier')
	String vendorSubcategoryIdentifier;

	/// If TRUE, consolidate categories that only differ by trivial properties (such as having minor differences in name)
	@JsonKey(name:'consolidateCategories')
	bool consolidateCategories;

	/// Describes &quot;actions&quot; that can be performed on a vendor. Currently, none of these exist. But theoretically a Vendor could let you interact with it by performing actions. We&#39;ll see what these end up looking like if they ever get used.
	@JsonKey(name:'actions')
	List<DestinyVendorActionDefinition> actions;

	/// These are the headers for sections of items that the vendor is selling. When you see items organized by category in the header, it is these categories that it is showing.
	/// Well, technically not *exactly* these. On BNet, it doesn&#39;t make sense to have categories be &quot;paged&quot; as we do in Destiny, so we run some heuristics to attempt to aggregate pages of categories together. 
	/// These are the categories post-concatenation, if the vendor had concatenation applied. If you want the pre-aggregated category data, use originalCategories.
	@JsonKey(name:'categories')
	List<DestinyVendorCategoryEntryDefinition> categories;

	/// See the categories property for a description of categories and why originalCategories exists.
	@JsonKey(name:'originalCategories')
	List<DestinyVendorCategoryEntryDefinition> originalCategories;

	/// Display Categories are different from &quot;categories&quot; in that these are specifically for visual grouping and display of categories in Vendor UI. 
	/// The &quot;categories&quot; structure is for validation of the contained items, and can be categorized entirely separately from &quot;Display Categories&quot;, there need be and often will be no meaningful relationship between the two.
	@JsonKey(name:'displayCategories')
	List<DestinyDisplayCategoryDefinition> displayCategories;

	/// In addition to selling items, vendors can have &quot;interactions&quot;: UI where you &quot;talk&quot; with the vendor and they offer you a reward, some item, or merely acknowledge via dialog that you did something cool.
	@JsonKey(name:'interactions')
	List<DestinyVendorInteractionDefinition> interactions;

	/// If the vendor shows you items from your own inventory - such as the Vault vendor does - this data describes the UI around showing those inventory buckets and which ones get shown.
	@JsonKey(name:'inventoryFlyouts')
	List<DestinyVendorInventoryFlyoutDefinition> inventoryFlyouts;

	/// If the vendor sells items (or merely has a list of items to show like the &quot;Sack&quot; vendors do), this is the list of those items that the vendor can sell. From this list, only a subset will be available from the vendor at any given time, selected randomly and reset on the vendor&#39;s refresh interval.
	/// Note that a vendor can sell the same item multiple ways: for instance, nothing stops a vendor from selling you some specific weapon but using two different currencies, or the same weapon at multiple &quot;item levels&quot;.
	@JsonKey(name:'itemList')
	List<DestinyVendorItemDefinition> itemList;

	/// BNet doesn&#39;t use this data yet, but it appears to be an optional list of flavor text about services that the Vendor can provide.
	@JsonKey(name:'services')
	List<DestinyVendorServiceDefinition> services;

	/// If the Vendor is actually a vehicle for the transferring of items (like the Vault and Postmaster vendors), this defines the list of source-&gt;destination buckets for transferring.
	@JsonKey(name:'acceptedItems')
	List<DestinyVendorAcceptedItemDefinition> acceptedItems;

	/// As many of you know, Vendor data has historically been pretty brutal on the BNet servers. In an effort to reduce this workload, only Vendors with this flag set will be returned on Vendor requests. This allows us to filter out Vendors that don&#39;t dynamic data that&#39;s particularly useful: things like &quot;Preview&#x2F;Sack&quot; vendors, for example, that you can usually suss out the details for using just the definitions themselves.
	@JsonKey(name:'returnWithVendorRequest')
	bool returnWithVendorRequest;

	/// A vendor can be at different places in the world depending on the game&#x2F;character&#x2F;account state. This is the list of possible locations for the vendor, along with conditions we use to determine which one is currently active.
	@JsonKey(name:'locations')
	List<DestinyVendorLocationDefinition> locations;

	/// A vendor can be a part of 0 or 1 &quot;groups&quot; at a time: a group being a collection of Vendors related by either location or function&#x2F;purpose. It&#39;s used for our our Companion Vendor UI. Only one of these can be active for a Vendor at a time.
	@JsonKey(name:'groups')
	List<DestinyVendorGroupReference> groups;

	/// Some items don&#39;t make sense to return in the API, for example because they represent an action to be performed rather than an item being sold. I&#39;d rather we not do this, but at least in the short term this is a workable workaround.
	@JsonKey(name:'ignoreSaleItemHashes')
	List<int> ignoreSaleItemHashes;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyVendorDefinition();

	factory DestinyVendorDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorDefinitionToJson(this);
}
