import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_milestone_display_preference.dart';
import '../enums/destiny_milestone_type.dart';
import 'destiny_milestone_quest_definition.dart';
import 'destiny_milestone_reward_category_definition.dart';
import 'destiny_milestone_vendor_definition.dart';
import 'destiny_milestone_value_definition.dart';
import 'destiny_milestone_challenge_activity_definition.dart';

part 'destiny_milestone_definition.g.dart';

/// Milestones are an in-game concept where they&#39;re attempting to tell you what you can do next in-game.
/// If that sounds a lot like Advisors in Destiny 1, it is! So we threw out Advisors in the Destiny 2 API and tacked all of the data we would have put on Advisors onto Milestones instead.
/// Each Milestone represents something going on in the game right now:
/// - A &quot;ritual activity&quot; you can perform, like nightfall
/// - A &quot;special event&quot; that may have activities related to it, like Taco Tuesday (there&#39;s no Taco Tuesday in Destiny 2)
/// - A checklist you can fulfill, like helping your Clan complete all of its weekly objectives
/// - A tutorial quest you can play through, like the introduction to the Crucible.
/// Most of these milestones appear in game as well. Some of them are BNet only, because we&#39;re so extra. You&#39;re welcome.
/// There are some important caveats to understand about how we currently render Milestones and their deficiencies. The game currently doesn&#39;t have any content that actually tells you oughtright *what* the Milestone is: that is to say, what you&#39;ll be doing. The best we get is either a description of the overall Milestone, or of the Quest that the Milestone is having you partake in: which is usually something that assumes you already know what it&#39;s talking about, like &quot;Complete 5 Challenges&quot;. 5 Challenges for what? What&#39;s a challenge? These are not questions that the Milestone data will answer for you unfortunately.
/// This isn&#39;t great, and in the future I&#39;d like to add some custom text to give you more contextual information to pass on to your users. But for now, you can do what we do to render what little display info we do have:
/// Start by looking at the currently active quest (ideally, you&#39;ve fetched DestinyMilestone or DestinyPublicMilestone data from the API, so you know the currently active quest for the Milestone in question). Look up the Quests property in the Milestone Definition, and check if it has display properties. If it does, show that as the description of the Milestone. If it doesn&#39;t, fall back on the Milestone&#39;s description.
/// This approach will let you avoid, whenever possible, the even less useful (and sometimes nonexistant) milestone-level names and descriptions.
@JsonSerializable()
class DestinyMilestoneDefinition{	
	DestinyMilestoneDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// A hint to the UI to indicate what to show as the display properties for this Milestone when showing "Live" milestone data. Feel free to show more than this if desired: this hint is meant to simplify our own UI, but it may prove useful to you as well.
	@JsonKey(name:'displayPreference',fromJson:decodeDestinyMilestoneDisplayPreference,toJson:encodeDestinyMilestoneDisplayPreference)
	DestinyMilestoneDisplayPreference? displayPreference;
	
	/// A custom image someone made just for the milestone. Isn't that special?
	@JsonKey(name:'image')
	String? image;
	
	/// An enumeration listing one of the possible types of milestones. Check out the DestinyMilestoneType enum for more info!
	@JsonKey(name:'milestoneType',fromJson:decodeDestinyMilestoneType,toJson:encodeDestinyMilestoneType)
	DestinyMilestoneType? milestoneType;
	
	/// If True, then the Milestone has been integrated with BNet's recruiting feature.
	@JsonKey(name:'recruitable')
	bool? recruitable;
	
	/// If the milestone has a friendly identifier for association with other features - such as Recruiting - that identifier can be found here. This is "friendly" in that it looks better in a URL than whatever the identifier for the Milestone actually is.
	@JsonKey(name:'friendlyName')
	String? friendlyName;
	
	/// If TRUE, this entry should be returned in the list of milestones for the "Explore Destiny" (i.e. new BNet homepage) features of Bungie.net (as long as the underlying event is active) Note that this is a property specifically used by BNet and the companion app for the "Live Events" feature of the front page/welcome view: it's not a reflection of what you see in-game.
	@JsonKey(name:'showInExplorer')
	bool? showInExplorer;
	
	/// Determines whether we'll show this Milestone in the user's personal Milestones list.
	@JsonKey(name:'showInMilestones')
	bool? showInMilestones;
	
	/// If TRUE, "Explore Destiny" (the front page of BNet and the companion app) prioritize using the activity image over any overriding Quest or Milestone image provided. This unfortunate hack is brought to you by Trials of The Nine.
	@JsonKey(name:'explorePrioritizesActivityImage')
	bool? explorePrioritizesActivityImage;
	
	/// A shortcut for clients - and the server - to understand whether we can predict the start and end dates for this event. In practice, there are multiple ways that an event could have predictable date ranges, but not all events will be able to be predicted via any mechanism (for instance, events that are manually triggered on and off)
	@JsonKey(name:'hasPredictableDates')
	bool? hasPredictableDates;
	
	/// The full set of possible Quests that give the overview of the Milestone event/activity in question. Only one of these can be active at a time for a given Conceptual Milestone, but many of them may be "available" for the user to choose from. (for instance, with Milestones you can choose from the three available Quests, but only one can be active at a time) Keyed by the quest item.
	/// As of Forsaken (~September 2018), Quest-style Milestones are being removed for many types of activities. There will likely be further revisions to the Milestone concept in the future.
	@JsonKey(name:'quests')
	Map<String, DestinyMilestoneQuestDefinition>? quests;
	
	/// If this milestone can provide rewards, this will define the categories into which the individual reward entries are placed.
	/// This is keyed by the Category's hash, which is only guaranteed to be unique within a given Milestone.
	@JsonKey(name:'rewards')
	Map<String, DestinyMilestoneRewardCategoryDefinition>? rewards;
	
	/// If you're going to show Vendors for the Milestone, you can use this as a localized "header" for the section where you show that vendor data. It'll provide a more context-relevant clue about what the vendor's role is in the Milestone.
	@JsonKey(name:'vendorsDisplayTitle')
	String? vendorsDisplayTitle;
	
	/// Sometimes, milestones will have rewards provided by Vendors. This definition gives the information needed to understand which vendors are relevant, the order in which they should be returned if order matters, and the conditions under which the Vendor is relevant to the user.
	@JsonKey(name:'vendors')
	List<DestinyMilestoneVendorDefinition>? vendors;
	
	/// Sometimes, milestones will have arbitrary values associated with them that are of interest to us or to third party developers. This is the collection of those values' definitions, keyed by the identifier of the value and providing useful definition information such as localizable names and descriptions for the value.
	@JsonKey(name:'values')
	Map<String, DestinyMilestoneValueDefinition>? values;
	
	/// Some milestones are explicit objectives that you can see and interact with in the game. Some milestones are more conceptual, built by BNet to help advise you on activities and events that happen in-game but that aren't explicitly shown in game as Milestones. If this is TRUE, you can see this as a milestone in the game. If this is FALSE, it's an event or activity you can participate in, but you won't see it as a Milestone in the game's UI.
	@JsonKey(name:'isInGameMilestone')
	bool? isInGameMilestone;
	
	/// A Milestone can now be represented by one or more activities directly (without a backing Quest), and that activity can have many challenges, modifiers, and related to it.
	@JsonKey(name:'activities')
	List<DestinyMilestoneChallengeActivityDefinition>? activities;
	
	@JsonKey(name:'defaultOrder')
	int? defaultOrder;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyMilestoneDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneDefinitionToJson(this);

	static Future<DestinyMilestoneDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMilestoneDefinition>((json)=>DestinyMilestoneDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}