if not VoiceOver or not VoiceOver.DataModules then return end
SpokenQuestsAudio_esES.QuestIDLookup = {
	["accept"] = {
		["Wolves Across the Border"] = 33,
		["Kobold Camp Cleanup"] = 7,
		["Investigate Echo Ridge"] = 15,
		["Skirmish at Echo Ridge"] = 21,
		["Report to Goldshire"] = 54,
		["Simple Letter"] = 3100,
		["Consecrated Letter"] = 3101,
		["Encrypted Letter"] = 	{
			["Marshal McBride"] = 3102,
			["Syndicate Documents"] = 511
		},
		["Hallowed Letter"] = 3103,
		["Glyphic Letter"] = 3104,
		["Tainted Letter"] = 3105,
		["The Killing Fields"] = 9,
		["Report to Gryan Stoutmantle"] = 	{
			["Farmer Saldean"] = 109,
			["Farmer Furlbrow"] = 109,
			["Marshal Dughan"] = 109,
			["Guard Thomas"] = 109,
			["Marshal Haggard"] = 109,
			["Deputy Rainer"] = 109
		},
		["The People's Militia"] = 	{
			["Gryan Stoutmantle"] = 		{
				["The People's Militia has but one goal: To defend the lands of Westfall and return join our ranks, slay 15 Defias Trappers and 15 Defias Smugglers then return to me."] = 12,
				["A band of vicious Defias Pillagers has been seen plundering the Gold Coast Quarry, Moonbrook I want you to kill 15 of those foul Defias Pillagers and 15 Defias Looters."] = 13,
				["Some Defias have eluded us. My most trusted scout reports that these Defias have been Hills, plotting their next move. Slay the wretches in the name of The People's Militia."] = 14
			}
		},
		["The Defias Brotherhood"] = 	{
			["Gryan Stoutmantle"] = 		{
				["The band of wretches responsible for driving the good people of Westfall from the land to Lakeshire in the Redridge Mountains, east of Elwynn, and find out what you can."] = 65,
				["I wonder what Wiley meant when he mentioned the Stonemasons. Perhaps that was a slip this growing mystery. If you have trouble finding Shaw, check the Barracks in Old Town."] = 135,
				["We need to discover the location of the Defias hideout. $N, my scout reports that to capture him. If he resists, kill him and bring me whatever he is carrying."] = 142,
				["There is but one task left for you to complete. Edwin VanCleef must be assassinated. rest once and for all. Bring me the villain's head once the deed is done."] = 166
			},
			["Wiley the Black"] = 132,
			["Master Mathias Shaw"] = 141,
			["The Defias Traitor"] = 155
		},
		["Messenger to Westfall"] = 	{
			["Gryan Stoutmantle"] = 144,
			["Magistrate Solomon"] = 143
		},
		["Goretusk Liver Pie"] = 22,
		["Westfall Stew"] = 	{
			["Salma Saldean"] = 38,
			["Verna Furlbrow"] = 36
		},
		["The Forgotten Heirloom"] = 64,
		["Poor Old Blanchy"] = 151,
		["Sweet Amber"] = 	{
			["Grimbooze Thunderbrew"] = 		{
				["In the land to the south where vines twist and creep Lies a hidden well where water runs deep Pure as the Light's sacred Daughter Bring to me now some Holy Spring Water."] = 48,
				["Amber is the hue of my life's longest love Like the last embers of dusk in me so that my love shall be born One sack of each: barley, rye and corn."] = 49,
				["I'll mix and mix till we have a mash For this will be our own private must be fashioned of metal strong Bring me some Truesilver so I can finish this song."] = 50,
				["Not yet filtered but freshly distilled Like unseeded land waiting there tilled. Next I will fashion our I will fashion our pile of charcoal Deliver a sycamore branch, that is your next goal."] = 51,
				["Mellifluous liquid clear as a baby's tears Turns a lovely deep amber over the years But before we proceed to get lit to the hilt A barrel of charred oak must be built."] = 53
			}
		},
		["Thunderbrew"] = 117,
		["Further Concerns"] = 35,
		["Cloth and Leather Armor"] = 59,
		["The Fargodeep Mine"] = 62,
		["The Jasperlode Mine"] = 76,
		["Manhunt"] = 147,
		["Westbrook Garrison Needs Help!"] = 239,
		["A Fishy Peril"] = 40,
		["Gold Dust Exchange"] = 47,
		["Princess Must Die!"] = 88,
		["Back to Billy"] = 84,
		["Lost Necklace"] = 85,
		["Note to William"] = 107,
		["Young Lovers"] = 106,
		["Speak with Gramma"] = 111,
		["Kobold Candles"] = 60,
		["Shipment to Stormwind"] = 61,
		["Collecting Kelp"] = 112,
		["The Escape"] = 	{
			["William Pestle"] = 114,
			["Wizzlecrank's Shredder"] = 863
		},
		["Find the Lost Guards"] = 37,
		["Deliver Thomas' Report"] = 39,
		["Bounty on Murlocs"] = 46,
		["Protect the Frontier"] = 52,
		["Messenger to Darkshire"] = 	{
			["Lord Ello Ebonlocke"] = 146,
			["Magistrate Solomon"] = 145
		},
		["Translate Abercrombie's Note"] = 251,
		["Bride of the Embalmer"] = 253,
		["The Night Watch"] = 	{
			["Commander Althea Ebonlocke"] = 		{
				["As Commander of The Night Watch it is my sworn duty to protect the citizens and slaying 8 Skeletal Warriors and 6 Skeletal Mages. The undead threat must be thwarted!"] = 56,
				["$N, I'm getting reports of an undead infestation in the forest! If you're up to of Darkshire, in and around Tranquil Gardens Cemetery. The undead must be driven from Duskwood!"] = 57,
				["The situation in Raven Hill is still grim. The safety of Darkshire is in your dispatch for Raven Hill yet again and rid the eastern mausoleum of 20 Plague Spreaders!"] = 58
			}
		},
		["The Legend of Stalvan"] = 	{
			["Commander Althea Ebonlocke"] = 		{
				["I have had my eye on that creep, Stalvan, for quite sometime. But if this Show him this page and see if the writing matches that of the registry signature."] = 80,
				["Stalvan Mistmantle led a life of depravity. Innocent victims died by his hand. Undoubtedly he her premonition that led to this gruesome discovery. But Darkshire is safer because of her."] = 98
			},
			["Madame Eva"] = 66,
			["Clerk Daltry"] = 		{
				["Stalvan, eh? Let me check the town registry. Stalvan. . .Stalvan. . .let's see. Ah, here if you get any update on this fellow. I like to keep the records clean."] = 67,
				["Oh my! Must have missed this the first time. In the registry, right beneath the headed to The Lion's Pride Inn over in Goldshire. Might want to check there, $N."] = 69,
				["Let Commander Ebonlocke know immediately that the handwriting matched, $N! Her suspicions were correct! Let Commander Ebonlocke know immediately that the handwriting matched, $N! Her suspicions were correct!"] = 97
			},
			["Tavernkeep Smitts"] = 79,
			["Marshal Haggard"] = 		{
				["There was a bundle of parchments in the chest upstairs when I moved into this of interest to you. Bring it to me and I'll help in anyway I can."] = 75,
				["I know of someone who might be able to assist you. Back when I was local lore. Show him this page and see what he has to say about it."] = 78
			},
			["Innkeeper Farley"] = 70,
			["Caretaker Folsom"] = 72,
			["Old Footlocker"] = 68,
			["Sealed Crate"] = 74
		},
		["Mor'Ladim"] = 228,
		["The Daughter Who Lived"] = 229,
		["The Totem of Infliction"] = 101,
		["Ghost Hair Thread"] = 149,
		["Deliver the Thread"] = 157,
		["The Shadowy Search Continues"] = 265,
		["Inquire at the Inn"] = 266,
		["The Carevin Family"] = 1042,
		["Morgan Ladimore"] = 227,
		["Translation to Ello"] = 252,
		["Wait for Sirra to Finish"] = 401,
		["Crime and Punishment"] = 377,
		["Ambushed In The Forest"] = 	{
			["Ambassador Berrybuck"] = 172,
			["Orphan Matron Battlewail"] = 172
		},
		["Children's Week"] = 	{
			["Ambassador Berrybuck"] = 172,
			["Orphan Matron Nightingale"] = 1468,
			["Orphan Matron Battlewail"] = 172
		},
		["Seasoned Wolf Kabobs"] = 90,
		["Dusky Crab Cakes"] = 93,
		["Return to Jitters"] = 240,
		["Gather Rot Blossoms"] = 156,
		["Juice Delivery"] = 159,
		["Finding the Shadowy Figure"] = 453,
		["Look To The Stars"] = 	{
			["Viktori Prism'Antras"] = 		{
				["My Gnomish friend, Cog, has promised to help me build a device which will let tube made by a skilled engineer. That is the first step, according to Cog's blueprint."] = 174,
				["According to Cog's blueprint, what I need now is a way to reflect light. I reflective surface for this project? I believe she once resided in southern Duskwood. . ."] = 175,
				["Now there is just one more item needed to complete this device. Cog's blueprint calls you can, bring to me his monocle and I will use that as our lens!"] = 181
			},
			["Blind Mary"] = 177
		},
		["Red Linen Goods"] = 83,
		["Morgan's Discovery"] = 9025,
		["Jitters' Growling Gut"] = 5,
		["Return to Sven"] = 268,
		["Ghoulish Effigy"] = 133,
		["Ogre Thieves"] = 134,
		["Supplies from Darkshire"] = 148,
		["Zombie Juice"] = 158,
		["Note to the Mayor"] = 160,
		["Dead-tooth Jack"] = 1667,
		["Morbent Fel"] = 55,
		["Sven's Revenge"] = 95,
		["The Shadowy Figure"] = 262,
		["Seeking Wisdom"] = 269,
		["Proving Your Worth"] = 323,
		["A Watchful Eye"] = 94,
		["Morganth"] = 	{
			["Theocritus"] = 249,
			["Old Lion Statue"] = 249
		},
		["Speak with Jennea"] = 1860,
		["Report to Jennea"] = 	{
			["Zaldimar Wefhellt"] = 1919,
			["Magis Sparkmantle"] = 1919,
			["Dink"] = 1919
		},
		["Magecraft"] = 	{
			["Maginor Dumas"] = 8250,
			["Archmage Shymm"] = 8250,
			["Pierce Shackleton"] = 8250,
			["Uthel'nay"] = 8250,
			["Dink"] = 8250
		},
		["Look to an Old Friend"] = 350,
		["Brotherhood's End"] = 395,
		["Snatch and Grab"] = 2206,
		["Mathias and the Defias"] = 2360,
		["The Touch of Zanzil"] = 	{
			["Master Mathias Shaw"] = 2607,
			["Doc Mixilpixil"] = 		{
				["Oh my, you look like death. Correction - I've seen death, you look worse than first few... fifty times or so... /lay down when you're ready for the treatment, $N."] = 2608,
				["It's unanimous, $N. You've got the 'itis.' Luckily, I have a cure for the 'itis.' Here's what cured. Oh, and Dr. Montgomery says you need a shower -- his words, not mine."] = 2609
			}
		},
		["Honor the Dead"] = 6183,
		["Flint Shadowmore"] = 6184,
		["Mazen's Behest"] = 	{
			["Mazen Mac'Nadir"] = 1363,
			["Acolyte Dellis"] = 1364
		},
		["The Everstill Bridge"] = 89,
		["The Lost Tools"] = 125,
		["Rethban Ore"] = 347,
		["An Unwelcome Guest"] = 34,
		["Delivering Daffodils"] = 131,
		["Redridge Goulash"] = 92,
		["Messenger to Stormwind"] = 	{
			["Magistrate Solomon"] = 120,
			["General Marcus Jonathan"] = 121
		},
		["The True Masters"] = 	{
			["Magistrate Solomon"] = 		{
				["This is grim news, $N. To discover that our mortal enemies are merely pawns of If this does not merit the aid of Stormwind, nothing will and all is lost."] = 4184,
				["<Magistrate Solomon sighs.> You must return to the Burning Steppes, $N. As a deputy of Stormwind, a deputy of Stormwind, you will be required to report to Marshal Maxwell. Good luck."] = 4223
			},
			["Marshal Maxwell"] = 4224,
			["Helendis Riverhorn"] = 4183,
			["Highlord Bolvar Fordragon"] = 		{
				["Solomon paints a dreary picture. Still, we cannot afford to send our thinly spread troops of dragons and dragonkin. She may be able to shed some light on this situation."] = 4185,
				["I am going to empower you as an acting deputy of Stormwind, $N. Return to Magistrate an acting deputy of Stormwind, $N. Return to Magistrate Solomon in Lakeshire and deliver this decree."] = 4186
			}
		},
		["Dry Times"] = 116,
		["Missing In Action"] = 219,
		["Return to Lewis"] = 6285,
		["In Favor of the Light"] = 	{
			["Priestess Anetta"] = 5623,
			["Branstock Khalder"] = 5626
		},
		["A Lack of Fear"] = 	{
			["High Priestess Laurena"] = 5645,
			["Priestess Alathea"] = 5647
		},
		["Elune's Grace"] = 	{
			["High Priestess Laurena"] = 5673,
			["Laurna Morninglight"] = 5674,
			["High Priest Rohan"] = 5675
		},
		["Garments of the Light"] = 	{
			["Priestess Josetta"] = 5624,
			["Maxan Anvol"] = 5625
		},
		["Returning Home"] = 	{
			["Priestess Josetta"] = 5628,
			["Maxan Anvol"] = 5630,
			["Laurna Morninglight"] = 5629,
			["Braenna Flintcrag"] = 5633,
			["Brother Joshua"] = 5631,
			["Nara Meideros"] = 5632
		},
		["Desperate Prayer"] = 	{
			["Priestess Josetta"] = 5635,
			["Maxan Anvol"] = 5637,
			["Laurna Morninglight"] = 5636,
			["Nara Meideros"] = 5638,
			["Priestess Alathea"] = 5640,
			["High Priest Rohan"] = 5639
		},
		["A Free Lunch"] = 129,
		["Selling Fish"] = 127,
		["Murloc Poachers"] = 150,
		["Tharil'zun"] = 19,
		["Blackrock Menace"] = 20,
		["Shadow Magic"] = 115,
		["The Price of Shoes"] = 118,
		["Underbelly Scales"] = 122,
		["A Baying of Gnolls"] = 124,
		["Howling in the Hills"] = 126,
		["Elmore's Task"] = 	{
			["Verner Osgood"] = 1097,
			["Smith Argus"] = 1097
		},
		["The Stolen Tome"] = 1598,
		["Beginnings"] = 1599,
		["Summon Felsteed"] = 	{
			["Demisette Cloyce"] = 4488,
			["Zevrost"] = 3631,
			["Kaal Soulreaper"] = 4489,
			["Briarthorn"] = 4487,
			["Strahad Farsan"] = 4490
		},
		["In Search of Menara Voidrender"] = 	{
			["Demisette Cloyce"] = 4738,
			["Zevrost"] = 4737,
			["Kaal Soulreaper"] = 4739,
			["Briarthorn"] = 4736
		},
		["Knowledge of the Orb of Orahil"] = 	{
			["Demisette Cloyce"] = 4968,
			["Zevrost"] = 4967,
			["Kaal Soulreaper"] = 4969,
			["Briarthorn"] = 4965
		},
		["An Imp's Request"] = 	{
			["Demisette Cloyce"] = 8419,
			["Zevrost"] = 8419,
			["Kaal Soulreaper"] = 8419,
			["Briarthorn"] = 8419
		},
		["Visit the Herbalist"] = 130,
		["Encroaching Gnolls"] = 244,
		["Bookie Herod"] = 200,
		["Colonel Kurzen"] = 202,
		["Patrol Schedules"] = 330,
		["The Head of the Beast"] = 394,
		["The Missing Diplomat"] = 	{
			["Elling Trias"] = 		{
				["Jorgen, you ol' sonuva.... So, that's how it's going to be, huh? All right, I can any Defias activity for me and he'll help you out with any information he can."] = 1243,
				["Yeah, now that I think about it... Dashel... Dashel something... What was his name? FIST! deep as these papers suggest, then he's not going to give you any information willingly."] = 1246,
				["A contact of mine retired in the Wetlands at the harbor city of Menethil. He least who he is. The docket doesn't mention anything about their plans after he's captured."] = 1248
			},
			["Watcher Backus"] = 		{
				["Defias activity? Well, there's always some activity; even if they keep to themselves we consider you find? The farmstead is south of the road from Westfall just as you enter Duskwood."] = 1244,
				["Whoa, this looks way too complex to be something to just lead you astray. I knew about any of this and didn't share it with them they'd probably hang me."] = 1245
			},
			["Jorgen"] = 1242,
			["Bishop DeLavey"] = 1241,
			["Dashel Stonefist"] = 		{
				["So yeah... um... I might know something 'bout that meeting at Addle's Stead. Happened a came out of Menethil; guy called Slim. That's all I know regarding their backup plan."] = 1247,
				["Yeah, you're obviously not the smartest $c to come into Stormwind, but you're about to you're about to be one of the dumbest to never leave. Have you met me friends?"] = 1447
			},
			["Tapoke 'Slim' Jahn"] = 1250,
			["Mikhail"] = 		{
				["You say Elling sent you here? Well then, the hospitality I expressed is now tenfold. do what you can to subdue him before he makes a break for the door."] = 1249,
				["The beginning of every month the Kul Tiras Marines all get paid and usually leave loyal to Proudmoore, but if you drop Elling's name, he should help you out... discretely."] = 1264
			},
			["Commander Samaul"] = 1265,
			["Private Hendel"] = 1324,
			["Archmage Tervosh"] = 1266,
			["Thomas"] = 1274
		},
		["Infiltrating the Castle"] = 2745,
		["A Swift Message"] = 6181,
		["Return to Verner"] = 119,
		["Continue to Stormwind"] = 6281,
		["A Daughter's Love"] = 231,
		["Raven Hill"] = 163,
		["Deliveries to Sven"] = 164,
		["The Hermit"] = 165,
		["A Plague Upon Thee"] = 	{
			["Nathaniel Dumah"] = 		{
				["I've tried many times to rout out the Scarlet Crusade through force alone, but to this jar with them, so we can prepare them to be unleashed on the Crusade."] = 5903,
				["Now that we have the termites, take this steel reinforced barrel to the Northridge Lumber termites should do their work from there and make the mill useless to the Crusade."] = 5904
			},
			["Mickey Levine"] = 		{
				["So, to bring pain and strife to the Scarlet Crusade, I want to take their termites you find in their mounds throughout the woods. Come back when you have enough."] = 5901,
				["Now that we have plenty of termites, take this steel reinforced barrel to the Northridge take care of itself. Just come back here and I'll reward you for helping me."] = 5902
			},
			["Termite Barrel"] = 6389
		},
		["Oh Brother. . ."] = 167,
		["Collecting Memories"] = 168,
		["Dwarven Outfitters"] = 179,
		["Coldridge Valley Mail Delivery"] = 	{
			["Sten Stoutarm"] = 233,
			["Talin Keeneye"] = 234
		},
		["Simple Rune"] = 3106,
		["Consecrated Rune"] = 3107,
		["Etched Rune"] = 3108,
		["Encrypted Rune"] = 3109,
		["Hallowed Rune"] = 3110,
		["Simple Memorandum"] = 3112,
		["Encrypted Memorandum"] = 3113,
		["Glyphic Memorandum"] = 3114,
		["Tainted Memorandum"] = 3115,
		["The Scythe of Elune"] = 1043,
		["Answered Questions"] = 1044,
		["Worgen in the Woods"] = 	{
			["Calor"] = 		{
				["Darkness seems drawn inexorably to Duskwood. Master Carevin's quest is the expulsion of evil and your skills against the Nightbane Shadow Weaver worgen in Brightwood Grove--bright, hah!--and the Rotting Orchard."] = 173,
				["You might have noticed some larger worgen wandering around with the Shadow Weavers in the town. These worgen are a bit tougher than the last you faced. Be on your guard."] = 221,
				["Your previous accomplishments have convinced me that you are ready to take on the toughest mine to the south. From far away you can even see the light from their bonfires..."] = 222,
				["Here you go, $n. Bring this message to Master Carevin. <He quickly removes a piece of Night Watch! Perhaps then we could complete the work that we few carry on today."] = 223
			}
		},
		["A New Threat"] = 170,
		["The Boar Hunter"] = 183,
		["Raptor Mastery"] = 	{
			["Hemet Nesingwary"] = 		{
				["So you think your hunting skills are in tip-top shape? I can put them to won't tell you where you can find them! Locating the beasts is half the challenge."] = 194,
				["Now let's step up the challenge and see if you're up to it. Venture into jungle and bag yourself 10 of those bloody Lashtail Raptors. Let's see what you've got!"] = 195,
				["Let's see how you handle this next challenge. There is a cagey breed of raptor at. Kill 10 Jungle Stalkers and I'll tip you off to the best hunting yet."] = 196,
				["Because you proved yourself to be such a go-getter in the jungle, let me tell his talon. It would be a feat that no other big game hunter has accomplished."] = 197
			}
		},
		["Big Game Hunter"] = 208,
		["The Green Hills of Stranglethorn"] = 338,
		["Chapter I"] = 339,
		["Chapter II"] = 340,
		["Chapter III"] = 341,
		["Chapter IV"] = 342,
		["Welcome to the Jungle"] = 583,
		["Tiger Mastery"] = 	{
			["Ajeck Rouack"] = 		{
				["When I was but a young girl, my father trained me in the art of camp. Test your tracking skills and see if you can hunt some of the beasts down."] = 185,
				["You are learning, $c. Let us test your skills with the mature cats now. Kill test your skills with the mature cats now. Kill 10 Stranglethorn Tigers this time out."] = 186,
				["Now I'm going to up the stakes on you and truly test your skill. Prove are not only the most difficult to find, they are also the fiercest to defeat."] = 187,
				["Here is the final challenge that I will put forth. We've been tracking an elusive me her paw as proof of your accomplishment. Tracking her down will be no easy task."] = 188
			}
		},
		["Panther Mastery"] = 	{
			["Sir S. J. Erlgadin"] = 		{
				["If you want to be a part of the hunt with this crack group Hemet see you kill 10 young panthers to start. Tracking them down is only half the challenge..."] = 190,
				["Now you're ready to turn it up a notch. If you want to prove yourself boys are tougher. They're not as easy as the young ones you were killing earlier."] = 191,
				["Now the hard part. A true panther hunter can show skill by dropping Shadowmaw Panthers, beasts. If you think they are hard to track, wait until you attempt to slay one...."] = 192,
				["You've almost proven yourself to be a master hunter of panthers. A panther by the kill the great Bhag'thera. Bring me the Fang of Bhag'thera and you'll have earned my respect!"] = 193
			}
		},
		["The Second Rebellion"] = 203,
		["Bad Medicine"] = 204,
		["Special Forces"] = 574,
		["Bloodscalp Ears"] = 189,
		["Skullsplitter Tusks"] = 209,
		["Hostile Takeover"] = 213,
		["Jungle Secrets"] = 215,
		["Troll Witchery"] = 205,
		["Mai'Zoth"] = 206,
		["Kurzen's Mystery"] = 207,
		["Krazek's Cookery"] = 210,
		["Supplies to Private Thorsen"] = 198,
		["Investigate the Camp"] = 201,
		["The Haunted Isle"] = 616,
		["Return to Corporal Kaleb"] = 622,
		["Favor for Krazek"] = 627,
		["Dream Dust in the Swamp"] = 1116,
		["Rumors for Kravel"] = 1117,
		["Tran'rek"] = 2864,
		["The Troll Cave"] = 182,
		["The Stolen Journal"] = 218,
		["Senir's Observations"] = 	{
			["Grelin Whitebeard"] = 282,
			["Mountaineer Thalos"] = 420
		},
		["Red Silk Bandanas"] = 214,
		["Patrolling Westfall"] = 102,
		["Bounty on Garrick Padfoot"] = 6,
		["Brotherhood of Thieves"] = 18,
		["A Threat Within"] = 783,
		["Milly Osworth"] = 3903,
		["Eagan Peltskinner"] = 5261,
		["Bring Back the Mug"] = 3365,
		["What Comes Around..."] = 386,
		["Red Leather Bandanas"] = 153,
		["Awaiting Word"] = 236,
		["Eight-Legged Menaces"] = 245,
		["Wolves at Our Heels"] = 226,
		["Solomon's Law"] = 91,
		["Blackrock Bounty"] = 128,
		["A Warrior's Training"] = 	{
			["Lyria Du Lac"] = 1638,
			["Ilsa Corbin"] = 1638
		},
		["Seek out SI: 7"] = 2205,
		["SI:7"] = 2300,
		["A Simple Request"] = 	{
			["Osborne the Night Man"] = 8233,
			["Ormok"] = 8233,
			["Syurna"] = 8233,
			["Miles Dexter"] = 8233,
			["Hulfdan Blackbeard"] = 8233
		},
		["Tome of Divinity"] = 	{
			["Brother Wilhelm"] = 2998,
			["Lord Grayson Shadowbreaker"] = 3000,
			["Azar Stronghammer"] = 2997,
			["Brandur Ironhammer"] = 		{
				["Hello, $N. I know you're busy helping out the people of Dun Morogh, but when to when it's time they learn more about the Light and what's expected of ya."] = 2999,
				["Sorry to interrupt your travels, $r, but I thought you should know that word was Tomes. Look for Duthorian Rall in Stormwind. He usually trains paladins in the Cathedral of Light."] = 3681
			}
		},
		["Emphasis on Sacrifice"] = 7637,
		["Exorcising Terrordale"] = 7640,
		["The Work of Grimand Elmore"] = 7641,
		["Ancient Equine Spirit"] = 7643,
		["The Divination Scryer"] = 7646,
		["Judgment and Redemption"] = 7647,
		["Chillwind Point"] = 	{
			["Lord Grayson Shadowbreaker"] = 8415,
			["Brandur Ironhammer"] = 8415
		},
		["Ink Supplies"] = 345,
		["Return to Kristoff"] = 346,
		["Riverpaw Gnoll Bounty"] = 11,
		["Broken Alliances"] = 	{
			["Gorn"] = 		{
				["From the Horde's alliance with the dragon Deathwing during the Second War, we know that overwhelming us and taking it for himself. Go to Camp Boff and take it back!"] = 782,
				["The Seal of the Earth is held by three runestones, held in the Pillars of part of the Badlands. Be careful though, for the ravine is home to countless drakes."] = 793
			}
		},
		["Assessing the Threat"] = 246,
		["A Grim Task"] = 304,
		["A Dark Threat Looms"] = 	{
			["Ashlan Stonesmirk"] = 274,
			["Chief Engineer Hinderweir VII"] = 		{
				["If my suspicions are correct, this is some type of explosive powder. This must be Stonesmirk in Dun Modr. Heed my advice: stick to the roads and stop for nothing!"] = 161,
				["Thank the stars someone is concerned about the well-being of the Dam. First the destruction about the eastern ramp of the Dam. Investigate the area and bring back a clue."] = 250,
				["Begin collecting the disarming materials immediately, $N. Lurker Venom can be found on the indigenous Return to me once you've collected the needed items and I will prepare the mixture."] = 278,
				["Earlier today I spotted some Dark Iron Insurgents swimming toward the Dam with a large to take this mixture and stir it into the keg before it's too late! Hurry!"] = 280
			},
			["Suspicious Barrel"] = 199,
			["Explosive Charge"] = 283
		},
		["The Dark Iron War"] = 303,
		["The Fury Runs Deep"] = 378,
		["The Thandol Span"] = 	{
			["Rhag Garmason"] = 		{
				["A tremendous explosion roared through the hills. 'Twas horrible, I tell you! Good soldiers died defending the manpower to search for him with Dun Modr under siege. Perhaps you can find him..."] = 631,
				["Heavens no! Poor Rustlocke. 'Tis quite a tragedy indeed. We must not let his death pass must be destroyed, $n! Return to me when your mission is complete. You're our only hope."] = 633
			},
			["Ebenezer Rustlocke's Corpse"] = 632
		},
		["Plea To The Alliance"] = 634,
		["In Search of The Excavation Team"] = 	{
			["Merrin Rockweaver"] = 306,
			["Tarrel Rockweaver"] = 305
		},
		["Uncovering the Past"] = 299,
		["Ormer's Revenge"] = 	{
			["Ormer Ironbraid"] = 		{
				["The situation is severe, that much is for sure. When we uncovered these bones it you can. That will be a good start to the vengeance I have planned for them."] = 294,
				["Now it's time to really make those dreaded Raptors regret their blood-thirst. Just down below Mottled Scytheclaws and Mottled Razormaws. Make those rotten creatures pay by slaying 10 of each!"] = 295,
				["While you were down there I happened to notice that one of those beasts stood this case means death! Bring me one of his talons as proof of his death."] = 296
			}
		},
		["In Defense of the King's Lands"] = 	{
			["Mountaineer Cobbleflint"] = 224,
			["Mountaineer Wallbang"] = 263,
			["Mountaineer Gravelgaw"] = 237,
			["Captain Rugelfuss"] = 217
		},
		["The Trogg Threat"] = 267,
		["Resupplying the Excavation"] = 273,
		["Report to Ironforge"] = 301,
		["Ironband's Excavation"] = 436,
		["Mercenaries"] = 255,
		["A Meal Served Cold"] = 212,
		["Morgan Stern"] = 1260,
		["Crocolisk Hunting"] = 385,
		["Down the Scarlet Path"] = 	{
			["Brother Anton"] = 		{
				["I will be frank. We are at war with the Scourge. It is an evil in the Valley of Bones to the south. Do this, and the Crusade will embrace you."] = 261,
				["We of the Scarlet Crusade lay claim to strongholds from Hearthglen to Tirisfal Glades. We seal and he will escort you to a place of honor in our Scarlet Monastery."] = 1052
			}
		},
		["A Hunter's Boast"] = 257,
		["A Hunter's Challenge"] = 258,
		["Vyrin's Revenge"] = 	{
			["Daryl the Youngling"] = 531,
			["Vyrin Swiftwind"] = 271
		},
		["The Doomed Fleet"] = 270,
		["Cleansing the Eye"] = 293,
		["Lightforge Iron"] = 321,
		["Blessed Arm"] = 322,
		["Lightforge Ingots"] = 526,
		["Speak with Bink"] = 1879,
		["Muren Stormpike"] = 1679,
		["Taming the Beast"] = 	{
			["Grif Wildheart"] = 		{
				["Hi there, $Glad:lass;! So, you'd be wanting to know how you can gain a pet like. So, find a large crag boar, then use the taming rod to tame it."] = 6064,
				["Those crag boars are quite burly; maybe you'd like something with a little more finesse? the boar you tamed. Take this taming rod and see how you like the snow leopard."] = 6084,
				["Perhaps you'd like a creature that possesses little more than brute strength. The ice claw I will also show you how to call it and dismiss it as ya like."] = 6085
			},
			["Yaw Sharpmane"] = 		{
				["As a tauren, it is important to follow the traditions of our ancestors by fighting much to learn. Begin by taking this taming rod; you must tame an adult plainstrider."] = 6061,
				["You have a fiery spirit, hunter, readily awaiting your next challenge. Your next task is to to muscle. Here is the taming rod, $N. Tame a prairie stalker and practice your skills."] = 6087,
				["The final task that I have for you requires that you tame a creature that I will also show you how to call it and dismiss it as you wish."] = 6088
			},
			["Thotar"] = 		{
				["It is an admirable skill to command one's authority over nature. As a hunter, you Practice your skills in battle with the boar at your side, then return to me."] = 6062,
				["The final creature you need to tame is one you should strive to emulate; the I will also show you how to call it and dismiss it as you wish."] = 6082,
				["The advantage a pet affords you against your rivals is duly noted, $N. When you called the surf crawler. Use the taming rod to tame it, then practice your skills."] = 6083
			},
			["Dazalar"] = 		{
				["As a hunter, it is important to remember the responsibility you hold in your hands. able to tame a webwood lurker. Tame it, and practice your skills as a hunter."] = 6063,
				["The variance of nature is something that can be relied upon, $N. It is predictable as a hunter. Then you will begin to understand the similarities and differences of nature."] = 6101,
				["You have tamed two creatures that inhabit the land, now you must tame one that I will also show you how to call it and dismiss it as you wish."] = 6102
			},
			["Жозефина Карсон"] = 		{
				["You've proven yourself by taming a boar and a wolf, now it's time for your trust of even the mightiest companion. Completing this lesson will deepen your attunement to beasts."] = 94864,
				["You've alraedy mastered taming a boar, now it's time for the next lesson. The forest Wolf. Remember, nature's balance must be respected. Prove your skill as a hunter once more."] = 94863,
				["Many hunters prefer to travel with animal companions. With a beast at your side, you will be able to tame a Rockhide Boar and practice your skills as a hunter."] = 94792
			},
			["Elayaa Easewind"] = 94007,
			["Quel'ana Quickgale"] = 		{
				["Every hunter begins by learning the bond between beast and master. This is your first Crawler. Show that you can earn its trust, and begin your path toward true mastery."] = 94978,
				["You've proven you can tame the river's crawler, now it's time to test your skill the lowlands and earn its trust. Show you're ready for the trials yet to come."] = 94979,
				["You've returned triumphant from taming two beasts, it's time now for your last trial. The Complete this lesson and you'll be ready to learn the deeper ways of the hunter."] = 94013
			}
		},
		["Training the Beast"] = 	{
			["Grif Wildheart"] = 6086,
			["Yaw Sharpmane"] = 6089,
			["Thotar"] = 6081,
			["Dazalar"] = 6103,
			["Жозефина Карсон"] = 94793,
			["Quel'ana Quickgale"] = 94050
		},
		["The Hunter's Path"] = 	{
			["Grif Wildheart"] = 6722,
			["Kary Thunderhorn"] = 		{
				["Hello, young hunter. You look to me like you are skilled enough to handle a Village. He can put you on the path to earning a pet of your own."] = 6065,
				["Hello, young hunter. You look to me like you are skilled enough to handle a Hill. He can put you on the path to earning a pet of your own."] = 6070
			},
			["Lanka Farshot"] = 6066,
			["Thotar"] = 6067,
			["Sian'dur"] = 6068,
			["Ayanna Everstride"] = 6072,
			["Jocaste"] = 6071,
			["Olmin Burningbeard"] = 6074,
			["Regnus Thundergranite"] = 6721,
			["Einris Brightspear"] = 		{
				["Hello, young hunter. You look to me like you are skilled enough to handle a Dolanaar. He can put you on the path to earning a pet of your own."] = 6073,
				["Hello, young hunter. You look to me like you are skilled enough to handle a Kharanos. He can put you on the path to earning a pet of your own."] = 6076
			},
			["Tristane Shadowstone"] = 6075,
			["Kali Remik"] = 6069
		},
		["Road to Salvation"] = 2218,
		["To Hulfdan!"] = 2299,
		["The Third Fleet"] = 288,
		["The Cursed Crew"] = 289,
		["Lifting the Curse"] = 290,
		["The Greenwarden"] = 463,
		["Claws from the Deep"] = 279,
		["Reclaiming Goods"] = 281,
		["Frostmane Hold"] = 287,
		["The Reports"] = 291,
		["Those Blasted Troggs!"] = 432,
		["Protecting the Herd"] = 314,
		["Tundra MacGrann's Stolen Stash"] = 312,
		["Beer Basted Boar Ribs"] = 384,
		["Hurley Blackbreath"] = 4126,
		["Gnogaine"] = 2926,
		["The Only Cure is More Green Glow"] = 2962,
		["Operation Recombobulation"] = 412,
		["Bring the Light"] = 3636,
		["Dungar Longdrink"] = 6261,
		["Rat Catching"] = 416,
		["Stonegear's Search"] = 	{
			["Mountaineer Kadrell"] = 467,
			["Pilot Longbeard"] = 467
		},
		["Report to Mountaineer Rockgar"] = 468,
		["Mountaineer Stormpike's Task"] = 1339,
		["The Algaz Gauntlet"] = 455,
		["Filthy Paws"] = 307,
		["Stormpike's Order"] = 1338,
		["Excavation Progress Report"] = 298,
		["Agmond's Fate"] = 704,
		["Find Agmond"] = 738,
		["Gathering Idols"] = 297,
		["Powder to Ironband"] = 302,
		["Further Mysteries"] = 525,
		["Ironband Wants You!"] = 707,
		["The Lost Dwarves"] = 2398,
		["The Perfect Stout"] = 315,
		["A Favor for Evershine"] = 319,
		["Return to Bellowfiz"] = 320,
		["Shimmer Stout"] = 413,
		["Bitter Rivals"] = 310,
		["The Grizzled Den"] = 313,
		["Search for Incendicite"] = 466,
		["Stocking Jetsteam"] = 317,
		["Evershine"] = 318,
		["Rejold's New Brew"] = 	{
			["Pilot Bellowfiz"] = 415,
			["Tharek Blackstone"] = 415
		},
		["Protecting the Shipment"] = 309,
		["Armed and Ready"] = 325,
		["Stormpike's Delivery"] = 353,
		["Burning Blood"] = 1705,
		["Collection of Goods"] = 7642,
		["Grimand's Finest Work"] = 7648,
		["Report to Doren"] = 331,
		["Harlan Needs a Resupply"] = 333,
		["Package for Thurman"] = 334,
		["Wine Shop Advert"] = 332,
		["A Noble Brew"] = 	{
			["Zardeth of the Black Claw"] = 		{
				["Lord Wishock is causing quite a stir amongst the House of Nobles. He was made at the very base of the falls far beneath the Stonewrought Dam in the Wetlands."] = 335,
				["Lord Wishock, like all men, has his weaknesses. His happens to be a fondness for he likes it. Most likely the old fool is milling about the Hall of Petitioners."] = 336
			}
		},
		["You Have Served Us Well"] = 397,
		["Brother Paxton"] = 344,
		["Southshore"] = 538,
		["Neeka Bloodscar"] = 1418,
		["Pool of Tears"] = 1424,
		["The Atal'ai Exile"] = 1429,
		["The Temple of Atal'Hakkar"] = 1445,
		["Speaking of Fortitude"] = 343,
		["Uldaman Reagent Run"] = 	{
			["Ghak Healtouch"] = 17,
			["Jarkal Mossmeld"] = 2202
		},
		["Badlands Reagent Run"] = 	{
			["Ghak Healtouch"] = 2500,
			["Jarkal Mossmeld"] = 2258
		},
		["Badlands Reagent Run II"] = 	{
			["Ghak Healtouch"] = 2501,
			["Jarkal Mossmeld"] = 2203
		},
		["Rear Guard Patrol"] = 	{
			["Deathguard Linnea"] = 		{
				["The defenders on The Bulwark protecting Tirisfal from the Plaguelands are on constant alert. But at the Balnir Farmstead to the east. It has become a haven for interloping Scourge."] = 356,
				["Damn it all! A new report came in while you were on patrol. There has and you will be duly rewarded. Bring me its heart as proof of the deed."] = 99156
			}
		},
		["Return to the Magistrate"] = 360,
		["A Putrid Task"] = 404,
		["The Mills Overrun"] = 426,
		["Ulag the Cleaver"] = 1819,
		["Speak with Coleman"] = 1820,
		["Proving Allegiance"] = 409,
		["The Prodigal Lich Returns"] = 411,
		["The Lich's Identity"] = 357,
		["Return the Book"] = 366,
		["Thule Ravenclaw"] = 446,
		["Graverobbers"] = 358,
		["Forsaken Duties"] = 359,
		["The Prodigal Lich"] = 405,
		["The Family Crypt"] = 408,
		["Raleigh and the Undercity"] = 441,
		["Deaths in the Family"] = 354,
		["Speak with Sevren"] = 355,
		["The Haunted Mills"] = 362,
		["Agamand Heirlooms"] = 1821,
		["At War With The Scarlet Crusade"] = 	{
			["Executor Zygand"] = 		{
				["The strategic documents from Executor Arren contain all the details we need to wipe the of Brill. Kill Perrine along with 3 Zealots and 3 Missionaries and report back to me."] = 370,
				["We are still at war and the Scarlet Crusade grows in strength. The report Executor with 5 Scarlet Friars. It should prove to be a devastating blow to the Crusade!"] = 371,
				["Scarlet Crusaders have been raiding from the ruined tower in northern Tirisfal, past Faol's Rest. dangerous mission. Slay Melrache and his two bodyguards, in the name of The Dark Lady."] = 372,
				["The documents Executor Arren provided are just the break we needed in our battle with by travelling west to the tower past the Solliden Farmstead and slay 10 Scarlet Warriors."] = 427
			}
		},
		["A New Plague"] = 	{
			["Apothecary Johaan"] = 		{
				["Lady Sylvanas has called upon the Royal Apothecary Society. The Dark Lady believes our knowledge key. Bring to me 5 vials of darkhound blood so I can test my theory."] = 367,
				["While you were collecting samples for me, my experiments led me to realize that more You will find the creatures along the coast to the north or to the west."] = 368,
				["While you were out gathering, I uncovered some old text in one of my tomes my new concoction. Rumor has it the spiders can be found in Eastern Tirisfal Glades."] = 369,
				["According to the Deathguard, another one of those foolish Dwarven Mountaineers has just been captured. a subtle hint of what The Dark Lady has planned for the rest of Azeroth."] = 492
			}
		},
		["Fields of Grief"] = 	{
			["Apothecary Johaan"] = 407,
			["Deathguard Simmer"] = 365
		},
		["Delivery to Silverpine Forest"] = 445,
		["The Chill of Death"] = 375,
		["Rude Awakening"] = 363,
		["The Mindless Ones"] = 364,
		["Simple Scroll"] = 3095,
		["Encrypted Scroll"] = 3096,
		["Hallowed Scroll"] = 3097,
		["Glyphic Scroll"] = 3098,
		["Tainted Scroll"] = 3099,
		["Rattling the Rattlecages"] = 3901,
		["Night Web's Hollow"] = 380,
		["The Scarlet Crusade"] = 381,
		["The Red Messenger"] = 382,
		["Vital Intelligence"] = 383,
		["Ride to Ironforge"] = 6391,
		["Return to Brock"] = 6392,
		["Bazil Thredd"] = 389,
		["Shadow of the Past"] = 393,
		["An Audience with the King"] = 396,
		["Humble Beginnings"] = 399,
		["Proof of Demise"] = 374,
		["The Damned"] = 376,
		["Marla's Last Wish"] = 6395,
		["Honor Students"] = 6387,
		["Ammo for Rumbleshot"] = 5541,
		["Quell The Uprising"] = 387,
		["The Stockade Riots"] = 391,
		["The Curious Visitor"] = 392,
		["The Color of Blood"] = 388,
		["Scavenging Deathknell"] = 3902,
		["The Champion of the Banshee Queen"] = 5961,
		["In Dreams"] = 5944,
		["Inert Scourgestones"] = 8416,
		["Demon Dogs"] = 5542,
		["Blood Tinged Skies"] = 5543,
		["Carrion Grubbage"] = 5544,
		["Redemption"] = 5742,
		["Of Forgotten Memories"] = 5781,
		["Of Lost Honor"] = 5845,
		["Of Love and Family"] = 	{
			["Tirion Fordring"] = 5846,
			["Artist Renfray"] = 5848
		},
		["Find Myranda"] = 5861,
		["Tools for Steelgrill"] = 400,
		["Return to Quinn"] = 430,
		["Rot Hide Origins"] = 444,
		["A Recipe For Death"] = 	{
			["Apothecary Renferrel"] = 		{
				["Arthas's numbers are overwhelming. But with a New Plague we could eradicate both the Scourge Deliver the reagents to Master Apothecary Faranell of the Royal Apothecary Society in the Undercity."] = 447,
				["According to Berard's Journal the moss from Lake Skulkers and Creepers might prove useful for as the rare hardened tumor and take them to Master Apothecary Faranell in the Undercity."] = 451
			},
			["Master Apothecary Faranell"] = 450
		},
		["Report to Hadrec"] = 448,
		["Journey to Hillsbrad Foothills"] = 493,
		["Zinge's Delivery"] = 1359,
		["Arugal's Folly"] = 	{
			["Dalar Dawnweaver"] = 		{
				["As my understanding of Arugal's magic grows so does my disdain for the hapless fool. the enchanted shackles Arugal cast on them. Bring to me six enchanted Pyrewood Shackles, $N."] = 99,
				["How Arugal gained acceptance within the Kirin Tor is beyond me. His spell-casting knowledge seemed not secure them. Retrieve for me the spell labeled Remedy of Arugal from those books."] = 422,
				["After examining Arugal's work my worst suspicions were confirmed. The old hack was not qualified shackles for my research. The foul creatures have been seen to the north and east."] = 423,
				["It will indeed take me longer than I had thought to uncover the dark secrets foreman of the mine, Grimson the Pale. With his death, the mine shall be ours."] = 424,
				["Ah, it's all become so embarrassingly clear! Arugal hardly had any magic at all, let the beasts apart and bring me whatever you find. This requires a more direct approach."] = 98298
			}
		},
		["Prove Your Worth"] = 421,
		["Dalaran's Intentions"] = 482,
		["Arugal Must Die"] = 1014,
		["Ivar the Foul"] = 425,
		["Wild Hearts"] = 429,
		["The Deathstalkers' Report"] = 449,
		["Lost Deathstalkers"] = 428,
		["The Dead Fields"] = 437,
		["The Decrepit Ferry"] = 438,
		["The Engraved Ring"] = 440,
		["Assault on Fenris Isle"] = 442,
		["Rot Hide Ichor"] = 443,
		["Deathstalkers in Shadowfang"] = 1098,
		["Speak with Renferrel"] = 3221,
		["Stout to Kadrell"] = 414,
		["The Lost Pilot"] = 419,
		["Thelsamar Blood Sausages"] = 418,
		["The Public Servant"] = 433,
		["Escorting Erland"] = 435,
		["A Husband's Revenge"] = 530,
		["Elixir of Agony"] = 	{
			["Master Apothecary Faranell"] = 515,
			["Apothecary Lydon"] = 		{
				["Another day, another elixir to be made. If it were up to me, I'd just and Southshore. Collect for me 6 Mudsnout Blossoms from the field for my next elixir."] = 509,
				["Just when I thought another day was going to pass devoid of any joy, you indeed! Here, take this Mudsnout Composite and run it off to Master Faranell at once, $N."] = 513,
				["This new elixir is finally ready to be tested. But why let a perfectly good, Stout. Once I have that keg, you and I will have quite the party, $N."] = 517,
				["Next door the Deathguards are holding a few captured farmers hostage. High Executor Darthalia suspected ol' time! Place this tainted keg on the rug in their room. Plagued brew for all!"] = 524
			}
		},
		["Going, Going, Guano!"] = 1109,
		["Hearts of Zeal"] = 1113,
		["After the Ambush"] = 454,
		["Pyrewood Ambush"] = 452,
		["The Woodland Protector"] = 	{
			["Melithar Staghelm"] = 458,
			["Tarindrella"] = 459
		},
		["A Troubling Breeze"] = 475,
		["The Relics of Wakening"] = 483,
		["Ursal the Mauler"] = 486,
		["The Balance of Nature"] = 	{
			["Conservator Ilthalaine"] = 		{
				["Greetings, $N. I am Conservator Ilthalaine. My purpose in Shadowglen is to ensure that the $c, and thin the boar and saber populations so that nature's harmony will be preserved."] = 456,
				["Thinning the younger population of creatures here in Shadowglen was a good start, $N, but into the forest and slay mangy nightsabers and thistle boars in the name of balance."] = 457
			}
		},
		["Simple Sigil"] = 3116,
		["Etched Sigil"] = 3117,
		["Encrypted Sigil"] = 3118,
		["Hallowed Sigil"] = 3119,
		["Verdant Sigil"] = 3120,
		["Timberling Seeds"] = 918,
		["Timberling Sprouts"] = 919,
		["Rellian Greenspyre"] = 922,
		["Planting the Heart"] = 941,
		["Oakenscowl"] = 2499,
		["Webwood Venom"] = 916,
		["Webwood Egg"] = 917,
		["Tenaron's Summons"] = 920,
		["Seek Redemption!"] = 489,
		["Denalan's Earth"] = 997,
		["Elixirs for the Bladeleafs"] = 1581,
		["Report to Captain Stoutfist"] = 473,
		["The Brassbolts Brothers"] = 	{
			["Pilot Longbeard"] = 1179,
			["Klockmort Spannerspan"] = 2769
		},
		["Daily Delivery"] = 469,
		["Apprentice's Duties"] = 471,
		["Young Crocolisk Skins"] = 484,
		["Fall of Dun Modr"] = 472,
		["War Banners"] = 464,
		["Nek'rosh's Gambit"] = 465,
		["Gnarlpine Corruption"] = 476,
		["Digging Through the Ooze"] = 470,
		["Border Crossings"] = 477,
		["Ambermill Investigations"] = 479,
		["The Weaver"] = 480,
		["Dalar's Analysis"] = 481,
		["Beren's Peril"] = 516,
		["In Favor of Darkness"] = 5651,
		["Speak with Anastasia"] = 1881,
		["Garments of Darkness"] = 5650,
		["Mennet Carkad"] = 1885,
		["Speak with Dillinger"] = 1818,
		["Four-legged Menaces"] = 	{
			["Watcher Callahan"] = 171,
			["Human Orphan"] = 171
		},
		["A Warden of the Alliance"] = 	{
			["Watcher Callahan"] = 171,
			["Human Orphan"] = 171
		},
		["The Road to Darnassus"] = 487,
		["Elanaria"] = 	{
			["Moon Priestess Amara"] = 1684,
			["Kyra Windblade"] = 1684,
			["Sentinel Elissa Starbreeze"] = 1684
		},
		["The New Frontier"] = 	{
			["Crier Goodman"] = 1015,
			["Arch Druid Fandral Staghelm"] = 6761,
			["Courier Hammerfall"] = 1019,
			["Herald Moonstalker"] = 1047,
			["Harbinger Balthazad"] = 1004,
			["Warcaller Gorlach"] = 1018,
			["Bluff Runner Windstrider"] = 1000
		},
		["A Call to Arms: The Plaguelands!"] = 	{
			["Crier Goodman"] = 5066,
			["Courier Hammerfall"] = 5090,
			["Herald Moonstalker"] = 5091,
			["Harbinger Balthazad"] = 5094,
			["Warcaller Gorlach"] = 5093,
			["Bluff Runner Windstrider"] = 5095
		},
		["Feathermoon Stronghold"] = 	{
			["Crier Goodman"] = 7494,
			["Courier Hammerfall"] = 7494,
			["Herald Moonstalker"] = 7494
		},
		["Time To Strike"] = 494,
		["Battle of Hillsbrad"] = 	{
			["High Executor Darthalia"] = 		{
				["Stand at attention while addressing me, $c. I am under direct command of Varimathras. We are Fields. Make sure that the landowners, Farmer Ray and Farmer Getz, are executed as well."] = 527,
				["Word of the attack on the northern farms has the townsfolk panicked. Most excellent. Our Deathstalkers out the cowering peasants. Lay waste to them in the name of our Dark Lady. Dismissed!"] = 528,
				["The humans of Hillsbrad have been putting up unexpected resistance. The problem appears to be in handy when we are done with the conquering of Hillsbrad and begin razing Southshore."] = 529,
				["The town of Hillsbrad is in disarray and we believe it will soon fall. We document as well, the Hillsbrad Proclamation. And while you're at it, steal the town registry."] = 532,
				["The Hillsbrad Town Registry indicates that the Azureload Mine is under Alliance control. Furthermore, the Bonds. Kill his miners as well. That should send a clear message to the Alliance."] = 539,
				["Dwarves aiding the humans? Damn those filthy little beasts. We shall test the strength of the battle is to lay siege on Dun Garok, $c. Captain Ironhill, their leader, must die."] = 541,
				["Because you fought with such valor and perseverance in the Battle of Hillsbrad, I have command to recognize. Take this sealed commendation to Varimathras in the Undercity. Go with pride, $c."] = 550
			}
		},
		["Elixir of Suffering"] = 	{
			["Apothecary Lydon"] = 		{
				["Ah, another wretched day in Tarren Mill. All of this clean air puts me in to find, Creeper Ichor. You'll find both bears and creepers just outside of Tarren Mill."] = 496,
				["It will take but a moment for me to mix these components into what I a taste of what the Dark Lady has planned for both humans and Scourge alike."] = 499
			}
		},
		["Elixir of Pain"] = 	{
			["Apothecary Lydon"] = 		{
				["Oh, $N. . .the flowers are blooming in Hillsbrad and the air is so fresh blood of a Mountain Lion. Bring some to me and we'll have a little fun."] = 501,
				["Ah, nothing like the smell of fresh blood in the foothills! Now we'll mix in a Fields to the southwest. Let's see how Farmer Ray's little dog Stanley likes this 'treat.'"] = 502
			}
		},
		["Blood of Innocents"] = 1066,
		["Return to Thunder Bluff"] = 	{
			["Apothecary Lydon"] = 1067,
			["Uldum Pedestal"] = 2967
		},
		["Undamaged Venom Sac"] = 2934,
		["Consult Master Gadrin"] = 2935,
		["Venom to the Undercity"] = 2938,
		["Ride to the Undercity"] = 6323,
		["Down the Coast"] = 536,
		["Farren's Proof"] = 	{
			["Lieutenant Farren Orinelle"] = 		{
				["Would you believe it, $n? Redpath wasn't satisfied with all the murlocs we killed--oh now, proof of the dead, hacking off cold, slimy murloc heads to submit for his approval."] = 559,
				["You know, $n, I'd really rather not take these heads... Since you've already got a already got a handle on them, would you mind delivering them to Redpath for me?"] = 560
			},
			["Marshal Redpath"] = 561
		},
		["Stormwind Ho!"] = 562,
		["Reassignment"] = 563,
		["The Rescue"] = 498,
		["Gol'dir"] = 503,
		["Lord Aliden Perenolde"] = 507,
		["Infiltration"] = 533,
		["Regthar Deathgate"] = 	{
			["Krusk"] = 1361,
			["Belgrom Rockmaul"] = 1361
		},
		["Crushridge Bounty"] = 500,
		["Crushridge Warmongers"] = 504,
		["Syndicate Assassins"] = 505,
		["Noble Deaths"] = 512,
		["Baron's Demise"] = 523,
		["Dark Council"] = 537,
		["Letter to Stormpike"] = 514,
		["Preserving Knowledge"] = 540,
		["Return to Milton"] = 542,
		["Stormpike's Deciphering"] = 554,
		["The Perenolde Tiara"] = 543,
		["Mayara Brightwing"] = 4766,
		["Bring the End"] = 3341,
		["Blackmoore's Legacy"] = 506,
		["Taretha's Gift"] = 508,
		["Valik"] = 535,
		["Manna-Enriched Horse Feed"] = 7645,
		["Costly Menace"] = 564,
		["Hinott's Assistance"] = 	{
			["Serge Hinott"] = 2480,
			["Shenthul"] = 2479
		},
		["Soothing Turtle Bisque"] = 	{
			["Christoph Jeffcoat"] = 7321,
			["Chef Jessen"] = 555
		},
		["Prison Break In"] = 544,
		["Dalaran Patrols"] = 545,
		["Souvenirs of Death"] = 546,
		["Humbert's Sword"] = 547,
		["Helcular's Revenge"] = 	{
			["Novice Thaivand"] = 		{
				["Master Helcular was almost complete with his transformation into a Lich when a human lynch Helcular's Rod first. Yeti overtook his ritual lair. Undoubtedly one of the beasts has it."] = 552,
				["Here, take the Rod of Helcular. You will need it. Helcular fashioned 3 ceremonial pyres as grave in Southshore, the heavily guarded human town to the south. Vengeance shall be ours!"] = 553
			}
		},
		["Stone Tokens"] = 556,
		["Bracers of Binding"] = 557,
		["Bartolo's Yeti Fur Cloak"] = 565,
		["The Defense of Grom'gol"] = 	{
			["Commander Aggro'gosh"] = 		{
				["Throm'ka, $c! Your arrival at Grom'gol is timely, indeed. As commander of the Warchief's base camp outside of Grom'gol. Once you have made significant progress, report back to me for reassignment."] = 568,
				["When we first arrived in this jungle we did not intend to wage war on drive them from the area. At the very least it will send a firm message."] = 569
			}
		},
		["Mok'thardin's Enchantment"] = 	{
			["Far Seer Mok'thardin"] = 		{
				["The power of the jungle's magic must be realized and then harnessed by the Horde. will find some close by, just across the river from Mizjah Ruins to the southeast."] = 570,
				["What I need from you now will be very difficult to obtain. To hold all these you to find exactly what I need but it will be well worth the hunt."] = 571,
				["The items you gathered from the feline beasts of the Vale are only the first a tribe of the raptors directly south of Grom'gol, not far from the great arena."] = 572,
				["There is but one final reagent needed to complete the enchantment. In the south, towards the explorers have advanced upon the spring. They will need to be dealt with as well."] = 573
			}
		},
		["Stranglethorn Fever"] = 348,
		["The Bloodsail Buccaneers"] = 	{
			["Fleet Master Seahorn"] = 		{
				["Crazz speaks highly of your dedication to the Blackwater Raiders. I am going to trust along with their written orders. We shall see exactly what those scum are up to."] = 604,
				["Blast the nerve of Firallon! He couldn't sail a skiff through Crystal Lake let alone to Firallon's landing spot and assassinate the Bloodsail leadership. Their fleet will sink soon after...."] = 608
			},
			["First Mate Crazz"] = 		{
				["You sure seem eager to work, matey. Not sure why some land-loving $r $c is cove just north of Booty Bay along the Savage Coast and see what you find."] = 595,
				["Shiver me timbers! So the Bloodsail Buccaneers are planning some sort of attack on Booty learned to Fleet Master Seahorn at once! The ol' sea dog is around town somewhere...."] = 599
			},
			["Bloodsail Correspondence"] = 597
		},
		["Sunken Treasure"] = 	{
			["Fleet Master Seahorn"] = 670,
			["Professor Phizzlethorpe"] = 665,
			["Doctor Draxlegauge"] = 		{
				["The treasure has been on the sea floor so long that the gems have calcified I have important scientific business to tend to up on the safe, dry land....er, yeah."] = 666,
				["Let's not leave Captain O'Breen waiting. He'll want to see these gems first hand. After health is to be caught hanging on to their treasure. Here, $n, take these to O'Breen."] = 668
			},
			["Shakes O'Breen"] = 669
		},
		["Up to Snuff"] = 587,
		["Whiskey Slim's Lost Grog"] = 580,
		["Keep An Eye Out"] = 576,
		["Akiris by the Bundle"] = 	{
			["Privateer Bloads"] = 		{
				["You looking fer work, $N? I might have some if you're up for a little to do. The naga were last seen along the beach to the north of here."] = 617,
				["$N, since I have you here, I got a message from Groy while you were I'd be careful though, Theramore can be dangerous if you're the wrong kind of crowd."] = 623
			}
		},
		["Supply and Demand"] = 575,
		["Some Assembly Required"] = 577,
		["Excelsior"] = 628,
		["The Stone of the Tides"] = 578,
		["Water Elementals"] = 601,
		["Magical Analysis"] = 602,
		["Goblin Sponsorship"] = 	{
			["Baron Revilgaz"] = 		{
				["See, the Venture Company shredders out in Lake Nazferiti (in northern Stranglethorn) have been equipped know he keeps them in his house, but they're almost certainly under lock and key."] = 1182,
				["You should be all set to go. Give Pozzik my regards and tell him that to ask. I'll be waiting for the news that he breaks the track record soon!"] = 1183
			},
			["Gazlowe"] = 1180,
			["Pozzik"] = 1178,
			["Wharfmaster Lozgil"] = 1181
		},
		["Hunt for Yenniku"] = 581,
		["Headhunting"] = 582,
		["Bloodscalp Clan Heads"] = 584,
		["Trollbane"] = 638,
		["Grim Message"] = 2932,
		["Venture Company Mining"] = 600,
		["Singing Blue Shards"] = 605,
		["Zanzil's Secret"] = 621,
		["Zanzil's Mixture and a Fool's Stout"] = 1119,
		["Fool's Stout"] = 1127,
		["Scaring Shaky"] = 606,
		["Voodoo Dues"] = 609,
		["Cracking Maury's Foot"] = 613,
		["Stoley's Debt"] = 2872,
		["Return to MacKinley"] = 607,
		["The Singing Crystals"] = 589,
		["The Mind's Eye"] = 591,
		["Saving Yenniku"] = 592,
		["Bloody Bone Necklaces"] = 596,
		["Split Bone Necklace"] = 598,
		["The Vile Reef"] = 629,
		["'Pretty Boy' Duncan"] = 610,
		["The Curse of the Tides"] = 611,
		["Ansirem's Key"] = 603,
		["Avast Ye, Scallywag"] = 1036,
		["Facing Negolash"] = 618,
		["Message in a Bottle"] = 	{
			["Princess Poobah"] = 630,
			["Carefully Folded Note"] = 594
		},
		["Components for the Enchanted Gold Bloodrobe"] = 	{
			["Xizk Goodstitch"] = 4782,
			["Menara Voidrender"] = 		{
				["The first item I will aid you in creating is a robe. You will gather could make it yourself--but regardless, bring me the robes, and we shall go from there."] = 1796,
				["Your next task is as simple as your first, but will require you to seek thread for you. Gold bars are smelted by skilled miners. Ask a miner for help."] = 4781,
				["The next components are found in Desolace, far to the west of the Barrens and bring me a lesser infernal stone. We will use both in the construction of your robe."] = 4783,
				["I need only three things now, $N, then we can finish your robe. First, the fine the components, return here to the tower and I will complete the robe for you."] = 4784
			}
		},
		["Sara Balloo's Plea"] = 683,
		["MacKreel's Moonshine"] = 647,
		["Northfold Manor"] = 681,
		["Stromgarde Badges"] = 682,
		["Sigil of Strom"] = 639,
		["The Broken Sigil"] = 640,
		["Sigil of Arathor"] = 643,
		["Sigil of Trollbane"] = 644,
		["Trol'kalar"] = 	{
			["Zengu"] = 645,
			["Trollbane's Tomb"] = 646
		},
		["Sigil of Thoradin"] = 641,
		["Foul Magics"] = 	{
			["Tor'gan"] = 		{
				["I have felt a strangeness in the air... a feeling that simmers in my blood. to examine, but I dare not return to the manor. Can you bring me some?"] = 671,
				["There is no doubt in my mind that a powerful warlock resides within the walls it and see that its power is not used to taint this land any longer."] = 673
			}
		},
		["Raising Spirits"] = 	{
			["Tor'gan"] = 		{
				["We tried to settle him in, cheer him up, telling him stories of our mighty him, yes... Bring me some raptor eyes, and I will see what I can do."] = 672,
				["Here, take this amulet to Gor'mul, and see if the raptors' strength can awaken the raptors' strength can awaken the flame of the warrior that once burned through his veins."] = 674
			},
			["Gor'mul"] = 675
		},
		["Guile of the Raptor"] = 	{
			["Tor'gan"] = 		{
				["With some additional objects, I will be able to create an item that will imbue the warrior that lies dormant! I will require raptor hearts to fashion the item and spell."] = 701,
				["Take this orb and use its energy to give Gor'mul the essence of the raptor. of the Horde, and we will have a great warrior's assistance in our unceasing battles."] = 702
			},
			["Gor'mul"] = 847
		},
		["Malin's Request"] = 	{
			["Archmage Malin"] = 690,
			["Skuerto"] = 697
		},
		["Hints of a New Plague?"] = 	{
			["Phin Odelic"] = 659,
			["Quae"] = 		{
				["<Quae begins to go through the folder.> This IS interesting. Seems Apothecary Jorell has been working down to the farm to steal whatever research Jorell still hasn't sent to Tarren Mill."] = 657,
				["So, Phin sent you to check on us? Not surprised--he worries too much. We've been watching our hands on those documents, it might shed some light on what's happening in Hillsbrad."] = 658,
				["I've seen Kinelory look way worse after a night in the tavern than she does bit longer. Would you be willing to head back to Southshore and talk to Phin?"] = 661
			},
			["Kinelory"] = 660
		},
		["Deep Sea Salvage"] = 662,
		["Drowned Sorrows"] = 664,
		["The Hammer May Fall"] = 676,
		["Call to Arms"] = 	{
			["Drum Fel"] = 		{
				["The Witherbark trolls and Boulderfist ogres of Arathi are working together to rid us from here. Slay them in droves, and only return when their camps run thick with blood."] = 677,
				["Your strength is evident, $N. Now to see how you fare against a real enemy. The spirit when you fail. I shall give praise to your tenacity in battle either way."] = 678,
				["The head of the beast is ready to be taken off... with great force, $N. Boulderfist lords and their lackey shaman who would try and drive us from these lands."] = 679
			}
		},
		["The Real Threat"] = 680,
		["The Eastern Kingdoms"] = 4002,
		["The Royal Rescue"] = 4003,
		["For The Horde!"] = 4974,
		["Hidden Enemies"] = 	{
			["Thrall"] = 		{
				["One thing I will not tolerate are traitors in our midst, $N. But I would find a lieutenant's insignia off one of the Burning Blade there, and return to me."] = 5726,
				["Now let us see if this insignia you found is worth the effort. There is a see if he believes you are one of his own, then return to me here."] = 5727,
				["Hmm, leaders of the Searing Blade... this concerns me most. If they are the ones who did this. You must retain your identity as one of his $gbrothers:sisters; in arms."] = 5728,
				["I think our next step should be to have you placed close to Neeru. If turmoil. Return to the Cleft and speak to him again, but do not be too overt."] = 5729
			},
			["Neeru Fireblade"] = 5730
		},
		["What the Wind Carries"] = 6566,
		["The Champion of the Horde"] = 6567,
		["For All To See"] = 7491,
		["The Lord of Blackrock"] = 	{
			["Thrall"] = 7784,
			["Highlord Bolvar Fordragon"] = 7782,
			["Head of Nefarian"] = 		{
				["The old feeling returns. The welcome pangs of victory reverberate throughout your being. Before you you lies the monolithic, battle scarred head of Nefarian. Return it to your Warchief, champion."] = 7783,
				["The old feeling returns. The welcome pangs of victory reverberate throughout your being. Before you you lies the monolithic, battle scarred head of Nefarian. Return it to your Highlord, champion."] = 7781
			}
		},
		["Summoning the Princess"] = 656,
		["The Lost Fragments"] = 692,
		["Solution to Doom"] = 709,
		["To Ironforge for Yagyin's Digest"] = 727,
		["To the Undercity for Yagyin's Digest"] = 728,
		["Theldurin the Lost"] = 	{
			["Gerrig Bonegrip"] = 687,
			["Zaruk"] = 687
		},
		["The Star, the Hand and the Heart"] = 	{
			["Gerrig Bonegrip"] = 735,
			["Keeper Bel'dugur"] = 736
		},
		["Forbidden Knowledge"] = 	{
			["Gerrig Bonegrip"] = 737,
			["Keeper Bel'dugur"] = 737
		},
		["Knowledge in the Deeps"] = 971,
		["Worth Its Weight in Gold"] = 691,
		["An Apprentice's Enchantment"] = 695,
		["Wand over Fist"] = 693,
		["Trelane's Defenses"] = 694,
		["Attack on the Tower"] = 696,
		["A King's Tribute"] = 	{
			["Grand Mason Marblesten"] = 		{
				["So our good King would like a memorial built in honor of a soldier named stones available. Travel to Darrow Hill in Hillsbrad and gather for me some Alterac Granite."] = 689,
				["Ah, such fine stone comes from Lordaeron. Such a shame the land is in such you will, please send word to His Majesty that the Memorial is complete as requested."] = 700
			},
			["King Magni Bronzebeard"] = 686
		},
		["Hammerfall"] = 655,
		["Barbecued Buzzard Wings"] = 703,
		["Pearl Diving"] = 705,
		["Power Stones"] = 2418,
		["Fiery Blaze Enchantments"] = 706,
		["Mirages"] = 718,
		["Scrounging"] = 733,
		["A Dwarf and His Tools"] = 719,
		["A Sign of Hope"] = 	{
			["Prospector Ryedol"] = 721,
			["Crumpled Map"] = 720
		},
		["Prospect of Faith"] = 	{
			["Prospector Ryedol"] = 724,
			["Hammertoe Grez"] = 723
		},
		["The Absent Minded Prospector"] = 	{
			["Archaeologist Flagongut"] = 943,
			["Chief Archaeologist Greywhisker"] = 942,
			["Archaeologist Hollee"] = 		{
				["What an honor it was when Master Greywhisker assigned me to work under the guidance ran back to Auberdine for help. Please travel south and see if the prospector is ok!"] = 729,
				["So the prospector wants to send the mysterious fossil to the Explorers' League in Darnassus? leaving Darkshore without him. Here, $n, deliver the mysterious fossil to Chief Archaeologist Greywhisker in Darnassus."] = 741
			},
			["Prospector Remtravel"] = 731
		},
		["Trouble In Darkshore?"] = 730,
		["Passing Word of a Threat"] = 	{
			["Historian Karnik"] = 725,
			["Advisor Belgrum"] = 726
		},
		["An Ambassador of Evil"] = 762,
		["Seeing What Happens"] = 	{
			["Historian Karnik"] = 2946,
			["Nara Wildmane"] = 2966
		},
		["A Future Task"] = 	{
			["Historian Karnik"] = 2964,
			["Nara Wildmane"] = 2968
		},
		["Passing the Burden"] = 3448,
		["The Feast of Winter Veil"] = 	{
			["Historian Karnik"] = 7063,
			["Sagorne Creststrider"] = 7061
		},
		["The Lost Tablets of Will"] = 1139,
		["Liquid Stone"] = 715,
		["Stone Is Better than Cloth"] = 716,
		["This Is Going to Be Hard"] = 	{
			["Lucien Tosselwrench"] = 777,
			["Lotwil Veriatus"] = 		{
				["Wonderful, wonderful. <Lotwil looks up at you for a moment before going back to his shackles.> Go speak to Lucien, $N. I need a cog #5. Bring it to me, will you?"] = 734,
				["Haha! Done! The shackles are done! It's time, Lucien. It's time, Servo! Are you ready to bear summon forth a powerful elemental now. This is a groundbreaking day for all of us."] = 778
			}
		},
		["Study of the Elements: Rock"] = 	{
			["Lotwil Veriatus"] = 		{
				["Here in the Badlands I've stopped to work on my latest project: my shackles of from the lesser rock elementals to the west of here. Could you bring me some?"] = 710,
				["$N, you've already proven more able than all my apprentices combined. The next parts I need edges. Take your time; I'll need a while to test these smaller pieces you brought me."] = 711,
				["$N, there's one more part I need from the elementals here in the Badlands: the their bracers just so I have extras. Servo's notorious for misplacing my reagents and research."] = 712
			}
		},
		["Coolant Heads Prevail"] = 713,
		["Gyro... What?"] = 714,
		["The Rise of the Machines"] = 	{
			["Lotwil Veriatus"] = 4063,
			["Hierophant Theodora Mulvadania"] = 		{
				["The machines made themselves known to us during our initial forays into the Searing Gorge. collected a sufficient amount, return to me and I shall determine their source of origin."] = 4061,
				["G.L.A. Those are the 'initials' imprinted on the elemental shards. Below the initials are a rank the field of elemental sciences. He may be able to assist us in our search."] = 4062
			}
		},
		["The Red Crystal"] = 4811,
		["As Water Cascades"] = 4812,
		["The Book of Ur"] = 1013,
		["Swoop Hunting"] = 761,
		["Poison Water"] = 748,
		["Winterhoof Cleansing"] = 754,
		["Thunderhorn Totem"] = 756,
		["Thunderhorn Cleansing"] = 758,
		["Wildmane Totem"] = 759,
		["Wildmane Cleansing"] = 760,
		["The Hunt Begins"] = 747,
		["The Hunt Continues"] = 750,
		["The Battleboars"] = 780,
		["Simple Note"] = 3091,
		["Etched Note"] = 3092,
		["Rune-Inscribed Note"] = 3093,
		["Verdant Note"] = 3094,
		["A Humble Task"] = 	{
			["Chief Hawkwind"] = 752,
			["Greatmother Hawkwind"] = 753
		},
		["Rites of the Earthmother"] = 	{
			["Chief Hawkwind"] = 		{
				["Your willingness to perform a humble task for the tauren of Narache and your eagerness the seer's abode directly to the south of Camp Narache, tucked away in the hills."] = 755,
				["For you to continue with the Rites of the Earthmother you must pass two more Camp Narache and travel with haste. Do not stray or you will lose your way."] = 763
			},
			["Cairne Bloodhoof"] = 776
		},
		["Rite of Strength"] = 757,
		["Rite of Wisdom"] = 773,
		["Dangers of the Windfury"] = 743,
		["Test of Faith"] = 1149,
		["Test of Endurance"] = 1150,
		["Test of Strength"] = 1151,
		["Test of Lore"] = 	{
			["Dorn Plainstalker"] = 1152,
			["Parqual Fintallas"] = 		{
				["I will tell you what you must seek, and I will even ask you my by the now-corrupt paladins there to train them to fight my kind. Bring it to me."] = 1160,
				["So the time is once again upon us. As a student of lore, you have again, and take all the time you need, $N--there is no pressure to answer quickly."] = 6628
			},
			["Braug Dimspirit"] = 		{
				["You have passed Dorn's tests, and now you seek to pass your next trial. Very the bottom of Dor'danil in southern Ashenvale, protected by the dead druids and their slayers."] = 1154,
				["Well done, $N. You have passed the first portion of the Test of Lore, but you anything, but you have done masterfully thus far--I'm sure you will overcome his obstacle."] = 1159,
				["You have brought me the book, and now it is time for your question. Are so do not feel pressured. You may take as long as you like to answer."] = 6627
			}
		},
		["Preparation for Ceremony"] = 744,
		["The Ravaged Caravan"] = 	{
			["Morin Cloudstalker"] = 749,
			["Sealed Supply Crate"] = 751
		},
		["The Venture Co."] = 764,
		["Supervisor Fizsprocket"] = 765,
		["Sharing the Land"] = 745,
		["Dwarven Digging"] = 746,
		["Rite of Vision"] = 	{
			["Baine Bloodhoof"] = 767,
			["Zarlman Two-Moons"] = 		{
				["In order to pass through the Rite of Vision, you must gather the reagents needed Follow it, and it will lead you to the next step of this holy quest."] = 771,
				["I now present you with the Water of the Seers. When you are ready, consume the the fire. At that point, it is up to you to follow it to your destiny...."] = 772
			}
		},
		["Journey into Thunder Bluff"] = 775,
		["Return to Jahan"] = 6364,
		["Elemental Mastery"] = 	{
			["Beram Skychaser"] = 8410,
			["Sagorne Creststrider"] = 8410
		},
		["A Lesson to Learn"] = 	{
			["Turak Runetotem"] = 27,
			["Mathrengyl Bearwalker"] = 26
		},
		["Moonglade"] = 	{
			["Turak Runetotem"] = 		{
				["All druids are welcomed to the sacred lands of Moonglade, tauren and night elf alike. with Dendrite Starblaze in Nighthaven about the path you're now on. Good luck, young druid."] = 5922,
				["All druids are welcomed to the sacred lands of Moonglade. Keeper Remulos - Moonglade's guardian with Dendrite Starblaze in Nighthaven about the path you're now on. Good luck, young druid."] = 94913
			},
			["Mathrengyl Bearwalker"] = 5921,
			["Sheldras Moontree"] = 94914
		},
		["Body and Heart"] = 	{
			["Turak Runetotem"] = 6002,
			["Mathrengyl Bearwalker"] = 6001
		},
		["Lessons Anew"] = 	{
			["Turak Runetotem"] = 6126,
			["Mathrengyl Bearwalker"] = 6121,
			["Hana Lighthoof"] = 6126,
			["Alfina Vistanoche"] = 6126
		},
		["Torwa Pathfinder"] = 	{
			["Turak Runetotem"] = 9063,
			["Mathrengyl Bearwalker"] = 9063,
			["Theridran"] = 9063,
			["Loganaar"] = 9063
		},
		["The Hunter's Charm"] = 	{
			["Holt Thunderhorn"] = 8151,
			["Ormak Grimshot"] = 8151,
			["Dorion"] = 8151,
			["Olmin Burningbeard"] = 8151,
			["Ulfir Ironbeard"] = 8151
		},
		["The Islander"] = 	{
			["Torm Ragetotem"] = 1718,
			["Sorek"] = 1718,
			["Baltus Fowler"] = 1718,
			["Kelv Sternhammer"] = 1718,
			["Wu Shen"] = 1718
		},
		["Speak with Ruga"] = 	{
			["Torm Ragetotem"] = 1823,
			["Sorek"] = 1823,
			["Baltus Fowler"] = 1823
		},
		["Shadowguard"] = 	{
			["Miles Welsh"] = 5642,
			["Aelthalyste"] = 5643
		},
		["Devouring Plague"] = 	{
			["Miles Welsh"] = 5644,
			["Ur'kyo"] = 5646
		},
		["Hex of Weakness"] = 	{
			["Miles Welsh"] = 5656,
			["Tai'jin"] = 5654,
			["Var'jun"] = 5655,
			["Aelthalyste"] = 5657
		},
		["Touch of Weakness"] = 	{
			["Miles Welsh"] = 5663,
			["Tai'jin"] = 5660,
			["Ur'kyo"] = 5662,
			["Var'jun"] = 5661
		},
		["Journey to the Marsh"] = 	{
			["Ursyn Ghull"] = 1947,
			["Anastasia Hartwell"] = 1947,
			["Bink"] = 1947,
			["Jennea Cannon"] = 1947,
			["Deino"] = 1947
		},
		["Return to the Marsh"] = 	{
			["Ursyn Ghull"] = 1953,
			["Anastasia Hartwell"] = 1953,
			["Bink"] = 1953,
			["Jennea Cannon"] = 1953,
			["Deino"] = 1953
		},
		["Tabetha's Task"] = 	{
			["Ursyn Ghull"] = 2861,
			["Anastasia Hartwell"] = 2861,
			["Bink"] = 2861,
			["Jennea Cannon"] = 2861,
			["Deino"] = 2861
		},
		["Speak with Un'thuwa"] = 	{
			["Thurston Xane"] = 1883,
			["Uthel'nay"] = 1883
		},
		["Report to Anastasia"] = 	{
			["Thurston Xane"] = 1959,
			["Uthel'nay"] = 1959
		},
		["Gathering Leather"] = 768,
		["Kodo Hide Bag"] = 769,
		["The Hunter's Way"] = 861,
		["Mazzranache"] = 766,
		["Grove of the Ancients"] = 952,
		["Un'Goro Soil"] = 	{
			["Arch Druid Fandral Staghelm"] = 3764,
			["Arch Druid Hamuul Runetotem"] = 3761
		},
		["Morrowgrain Research"] = 	{
			["Arch Druid Fandral Staghelm"] = 3781,
			["Mathrengyl Bearwalker"] = 3785,
			["Arch Druid Hamuul Runetotem"] = 3782,
			["Bashana Runetotem"] = 3786
		},
		["Veteran Uzzek"] = 	{
			["Krang Stonehoof"] = 1505,
			["Tarshaw Jaggedscar"] = 1505,
			["Sorek"] = 1505
		},
		["Heeding the Call"] = 	{
			["Gennia Runetotem"] = 5928,
			["Kal"] = 5925,
			["Denatharion"] = 5923,
			["Theridran"] = 5924,
			["Innkeeper Pala"] = 5926,
			["Innkeeper Gryshka"] = 5927
		},
		["Call of Fire"] = 	{
			["Narm Skychaser"] = 2984,
			["Swart"] = 2983,
			["Searn Firewarder"] = 1522,
			["Telf Joolam"] = 		{
				["But you did not come here for a history lesson, did you? You came for Blade. You can find them in a cave above the ravines northeast of Razor Hill."] = 1525,
				["The fire sapta is finished. The time has come for you to face the flame. Once he is defeated, place his glowing embers within the brazier and light the torch."] = 1526
			},
			["Xanis Flameweaver"] = 1523,
			["Kranal Fiss"] = 1524,
			["Brazier of the Dormant Flame"] = 		{
				["Torch firmly in hand, you turn away from the brazier and look out over Durotar. violently. You start off down the path back to the Barrens in search of Kranal Fiss."] = 1527,
				["Torch firmly in hand, you turn away from the brazier and look out over Loch You start off down the path back to Dun Morogh in search of Bruegs Kindleborn."] = 94468
			},
			["Eldrun Stormbreaker"] = 94449,
			["Braldir Ashmantle"] = 		{
				["The fire sapta's ready, $N. Now ye face the flame. Use it at the shrine, embers and place 'em in the brazier. Light the torch and earn the fire's favor."] = 94467,
				["Bah, ye didn't trek all this way for tales, did ye, $N? Ye seek the a Stonesplinter Seer lurkin' in the southern hills. Dangerous work, but worthy of the flame."] = 94466
			},
			["Bruegs Kindleborn"] = 94465,
			["Olariaan Swiftburn"] = 		{
				["The residents of the Shen'dar Highlands speak of an ancient forest sprite called Kuramaa. They to much of your magic. Only the touch of flame will lay low the spirit."] = 97245,
				["There is an Al'Aketh Skypriest called Faladiel. He was once a caller of the flame is a gruesome task, but it is needed for the ritual we are to perform."] = 97244,
				["Now we will perform the ritual. I will place the materials onto the altar and so quickly, for the flames of the Firelands are quick to dissipate here in Skywall."] = 97257
			},
			["Sessaria Skystride"] = 97243,
			["Torch of the Dormant Flame"] = 98517,
			["Ingrid Dunwald"] = 94449
		},
		["Call of Water"] = 	{
			["Narm Skychaser"] = 2986,
			["Swart"] = 2985,
			["Searn Firewarder"] = 1528,
			["Brine"] = 		{
				["Islen will have one more task for you before rewarding you with your next totem. for whatever that task is. Go now and find her. We shall meet again some day."] = 220,
				["Take this waterskin and head deep into the lush forest the night elves call Ashenvale. It will be the final component you'll need before I send you back to Islen."] = 1534,
				["To find understanding and gain the sapta from me, you must seek out only the a pond of the precious liquid. Fill this skin with it and return to me."] = 1535,
				["Long ago I followed some companions into the Hillsbrad Foothills. We defended ourselves from some holy vestige in an unhallowed sea. Bring me a sample of that water in this waterskin."] = 1536
			},
			["Islen Waterseer"] = 		{
				["Along the coast of Silverpine, west of the Sepulcher, you will find a shrine that with. Bring me proof the task is done, and I will reward you with your totem."] = 63,
				["If there is one lesson you must learn of water, it is this: water means find Brine deep in Southern Barrens. Her home is continually molested by the quilboar there."] = 1530
			},
			["Xanis Flameweaver"] = 1529,
			["Tiev Mordune"] = 1103,
			["Brazier of Everfount"] = 100,
			["Minor Manifestation of Water"] = 		{
				["Take shard. Take shard and give life. Give life and understand. Understand water is life... corruption understand. Understand water is life... corruption stops life. You protect and give life with water's power."] = 96,
				["Take shard. Take shard and give life. Give life and understand. Understand water is life... Understand water is life... corruption stops life. You protect and give life with water's power."] = 94505
			},
			["Eldrun Stormbreaker"] = 94494,
			["Hervdana Saegrund"] = 		{
				["Aye, Redridge drinks deep from Lake Everstill, but by the time the waters tumble down if it's magic, venom, or somethin' worse that's taintin' the waters near that old fort."] = 94499,
				["Norric will have one more task for ye before rewarding ye with the water totem whatever that task is. Go now and find him. We shall meet again some day."] = 94501,
				["Take this waterskin and journey deep into the emerald shade o' Ashenvale. Astranaar rests cradled on the way over. And mind yerself... the forest's got eyes, and they don't blink."] = 94500,
				["Ah, so ye've come seekin' the sapta, have ye? Well then, listen close, love. To the falls, where the fresh meets the brackish. Go on now, and mind the marsh."] = 94497
			},
			["Norric Lochthane"] = 		{
				["In Westfall, outside o' Moonbrook lies Stendel's Pond. Once a pure spring, now touched by what ye can. Bring me proof the deed's done, and I'll grant ye the totem."] = 94502,
				["If there's one truth ye need to learn about water, it's this: water means rebirth. a cave beneath the southern falls. Go on then, don't let the river outrun ye."] = 94495
			},
			["Forgotten Shrine"] = 94503
		},
		["Vanquish the Betrayers"] = 784,
		["From The Wreckage...."] = 825,
		["The Admiral's Orders"] = 	{
			["Gar'Thok"] = 831,
			["Aged Envelope"] = 830
		},
		["Encroachment"] = 837,
		["Thwarting Kolkar Aggression"] = 786,
		["Dark Storms"] = 806,
		["Margoz"] = 828,
		["Cutting Teeth"] = 788,
		["Sting of the Scorpid"] = 789,
		["Simple Parchment"] = 2383,
		["Simple Tablet"] = 3065,
		["Etched Tablet"] = 3082,
		["Encrypted Tablet"] = 3083,
		["Rune-Inscribed Tablet"] = 3084,
		["Hallowed Tablet"] = 3085,
		["Glyphic Tablet"] = 3086,
		["Etched Parchment"] = 3087,
		["Encrypted Parchment"] = 3088,
		["Rune-Inscribed Parchment"] = 3089,
		["Tainted Parchment"] = 3090,
		["The New Horde"] = 787,
		["Vile Familiars"] = 	{
			["Zureetha Fargaze"] = 792,
			["Ruzan"] = 		{
				["Those warlocks who came before us have earned the distrust of the Horde, and while summoning, bring me six heads of the vile familiars from the cave to the northeast."] = 1485,
				["Zureetha has been sending novices like yourself to help cull the numbers of the creatures her that you assisted with the imp problem, she'll probably have a reward for you."] = 1499
			}
		},
		["Burning Blade Medallion"] = 794,
		["Report to Sen'jin Village"] = 805,
		["Carry Your Weight"] = 791,
		["Therzok"] = 1859,
		["To Orgrimmar!"] = 2380,
		["Minshina's Skull"] = 808,
		["Report to Orgnil"] = 823,
		["Zalazane"] = 826,
		["The Spider God"] = 2936,
		["Summoning Shadra"] = 2937,
		["Finding the Antidote"] = 813,
		["Need for a Cure"] = 812,
		["Break a Few Eggs"] = 815,
		["Lost But Not Forgotten"] = 816,
		["Practical Prey"] = 817,
		["Skull Rock"] = 827,
		["Neeru Fireblade"] = 829,
		["Break Sharptusk!"] = 3376,
		["Ak'Zeloth"] = 809,
		["Return to Witch Doctor Uzer'i"] = 3122,
		["Slaying the Beast"] = 5761,
		["A Sacred Burial"] = 833,
		["Sarkoth"] = 	{
			["Hana'zua"] = 		{
				["$C! I thought I would die out here with none to know of it. While My honor must be upheld! I fought it up on the plateau to the south."] = 790,
				["Seeing the deed you have done for me steels my heart. I cannot fall so return to the Den and tell Gornek of my situation. Perhaps he can help me."] = 804
			}
		},
		["Chen's Empty Keg"] = 	{
			["Brewmaster Drohn"] = 		{
				["Would you like a taste of Chen's namesake? Ahh, the stormstout is a mighty brew. thunder lizard. That should do the trick nicely. You can find these ingredients throughout the Barrens."] = 821,
				["Good stuff, that stormstout, huh? I have another recipe that I learned from Chen. Would you said, this stuff has kick; it's the trogg brew that I mentioned to you before."] = 822
			},
			["Chen's Empty Keg"] = 819
		},
		["Winds in the Desert"] = 834,
		["Securing the Lines"] = 835,
		["Gan'rul's Summons"] = 1506,
		["A Solvent Spirit"] = 818,
		["Return to the Crossroads."] = 6386,
		["You Too Good."] = 6608,
		["Conscript of the Horde"] = 840,
		["Crossroads Conscription"] = 842,
		["Plainstrider Menace"] = 844,
		["The Zhevra"] = 845,
		["Echeyakee"] = 881,
		["Prowlers of the Barrens"] = 903,
		["The Angry Scytheclaws"] = 905,
		["Jorn Skyseer"] = 3261,
		["Gann's Reclamation"] = 843,
		["Revenge of Gann"] = 	{
			["Gann Stonespire"] = 		{
				["It is clear the prospector depended on explosives and those noisy vehicles to rip the and bring them to me. I will fashion a charge that the dwarves won't forget!"] = 846,
				["Following Khazgorm's plans it should be no problem to fashion an explosive charge Ah, there we of my tribe. Make me proud by completing this heroic task and you shall be rewarded."] = 849
			}
		},
		["A Troubled Spirit"] = 	{
			["Sorek"] = 8417,
			["Christoph Walker"] = 8417,
			["Kelv Sternhammer"] = 8417,
			["Wu Shen"] = 8417,
			["Darnath Bladesinger"] = 8417
		},
		["Horde Trauma"] = 6623,
		["Mahren Skyseer"] = 874,
		["Ishamuhale"] = 882,
		["Enraged Thunder Lizards"] = 907,
		["Cry of the Thunderhawk"] = 913,
		["Melor Sends Word"] = 1130,
		["The Ashenvale Hunt"] = 	{
			["Jorn Skyseer"] = 6382,
			["Warcaller Gorlach"] = 235,
			["Bluff Runner Windstrider"] = 742
		},
		["Isha Awak"] = 873,
		["Kolkar Leaders"] = 850,
		["Verog the Dervish"] = 851,
		["Hezrul Bloodmark"] = 852,
		["Centaur Bracers"] = 855,
		["The Kolkar of Desolace"] = 1362,
		["Counterattack!"] = 4021,
		["Fungal Spores"] = 848,
		["Apothecary Zamah"] = 853,
		["Wharfmaster Dizzywig"] = 	{
			["Apothecary Helbrim"] = 1492,
			["Kravel Koalbeard"] = 1111
		},
		["Southsea Freebooters"] = 887,
		["Stolen Booty"] = 888,
		["The Missing Shipment"] = 	{
			["Gazlowe"] = 890,
			["Wharfmaster Dizzywig"] = 892
		},
		["To Gadgetzan You Go!"] = 6611,
		["Zando'zan"] = 2379,
		["Deep Cover"] = 2458,
		["The Shattered Salute"] = 2460,
		["Wrenix of Ratchet"] = 2382,
		["Rig Wars"] = 2841,
		["Nogg's Ring Redo"] = 2950,
		["Chief Engineer Scooty"] = 2842,
		["Journey to the Crossroads"] = 	{
			["Kirge Sternhorn"] = 854,
			["Thrall"] = 98024
		},
		["Serpentbloom"] = 962,
		["Journey to Tarren Mill"] = 1065,
		["The Flying Machine Airport"] = 1086,
		["The Tear of the Moons"] = 857,
		["Egg Hunt"] = 868,
		["The Swarm Grows"] = 	{
			["Korran"] = 1145,
			["Moktar Krin"] = 1147,
			["Belgrom Rockmaul"] = 1146
		},
		["Parts of the Swarm"] = 	{
			["Korran"] = 1184,
			["Cracked Silithid Carapace"] = 1148
		},
		["Disrupt the Attacks"] = 871,
		["The Disruption Ends"] = 872,
		["Supplies for the Crossroads"] = 5041,
		["Report to Kadrak"] = 	{
			["Thork"] = 6541,
			["Darn Talongrip"] = 6542
		},
		["Consumed by Hatred"] = 899,
		["Lost in Battle"] = 4921,
		["Weapons of Choice"] = 893,
		["A New Ore Sample"] = 1153,
		["Sergra Darkthorn"] = 860,
		["Steelsnap"] = 1131,
		["Frostmaw"] = 1136,
		["Deadmire"] = 1205,
		["Samophlange"] = 	{
			["Sputtervalve"] = 894,
			["Control Console"] = 		{
				["The three control valves are currently opened. The various readings on the control panel lead to presume that they must be shut off before the apparatus can be shut off."] = 900,
				["With the apparatus deactivated, the control panel can be opened up and the samophlange removed in place, all that is left is to acquire the key to unlock the console."] = 901,
				["Pulling open the face of the control console reveals a dense jumble of wires, tubing deeper into the console, you find the samophlange. A tug removes it from its housing."] = 902
			}
		},
		["Further Instructions"] = 	{
			["Sputtervalve"] = 1095,
			["Ziz Fizziks"] = 1094
		},
		["Ziz Fizziks"] = 1483,
		["Wenikee Boltbucket"] = 3921,
		["Dig Rat Stew"] = 862,
		["Raptor Horns"] = 865,
		["Root Samples"] = 866,
		["Deepmoss Spider Eggs"] = 1069,
		["Blueleaf Tubers"] = 1221,
		["Smart Drinks"] = 1491,
		["The Forgotten Pools"] = 870,
		["The Stagnant Oasis"] = 877,
		["Altered Beings"] = 880,
		["Hamuul Runetotem"] = 1489,
		["Mura Runetotem"] = 3301,
		["Gathering the Cure"] = 	{
			["Tonga Runetotem"] = 6128,
			["Alanndarian Nightsong"] = 6123
		},
		["Curing the Sick"] = 	{
			["Tonga Runetotem"] = 6129,
			["Alanndarian Nightsong"] = 6124
		},
		["Harpy Raiders"] = 867,
		["Harpy Lieutenants"] = 875,
		["Serena Bloodfeather"] = 876,
		["Letter to Jin'Zil"] = 1060,
		["Miner's Fortune"] = 896,
		["Passage to Booty Bay"] = 1040,
		["Parts for Kravel"] = 1112,
		["Raptor Thieves"] = 869,
		["News of Dogran"] = 	{
			["Gazrog"] = 1510,
			["Zankaja"] = 1509
		},
		["Stolen Silver"] = 3281,
		["A Bundle of Hides"] = 6361,
		["Meats to Orgrimmar"] = 6365,
		["Goblin Engineering"] = 	{
			["Tinkerwiz"] = 3633,
			["Graham Van Talen"] = 3526,
			["Springspindle Fizzlegear"] = 3629,
			["Lilliam Sparkspindle"] = 4181
		},
		["Gnome Engineering"] = 	{
			["Tinkerwiz"] = 		{
				["Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think prevents joining the other discipline, so make sure you are sure before finishing his task!"] = 3634,
				["Engineering at the expert level breaks into two disciplines: gnome and goblin. While I think prevents joining the other discipline, so make sure you are sure before finishing his task."] = 3637
			},
			["Graham Van Talen"] = 3635,
			["Springspindle Fizzlegear"] = 3632,
			["Lilliam Sparkspindle"] = 3630
		},
		["Crown of the Earth"] = 	{
			["Tenaron Stormgrip"] = 		{
				["It is time for you to set out to seek your destiny, $n. But before Go to the moonwell north of Aldrassil and return me a phial of its water."] = 921,
				["While there is more I could speak to you of the moonwells and of Teldrassil, stay on the road though, $n. There are dangerous beasts in the forests of late."] = 928
			},
			["Corithras Moonrage"] = 		{
				["First, let me tell you more of the task you must complete. The druids in When you have completed your task, I shall continue the story where Tenaron left off..."] = 929,
				["There is another moonwell southeast of the entrance to Darnassus, on the shores of the furbolgs. Be wary as you seek out the well, and keep your weapons close at hand."] = 933,
				["All was not well with Teldrassil, however. Staghelm's carefully made plans for the new World most powerful of our wells. Retrieve a phial of its water and return to me."] = 934,
				["Without the blessings of Alexstrasza the Life-Binder and Nozdormu the Timeless, Teldrassil's growth has not deliver to Darnassus. Bring it to Fandral Staghelm, you will find him in the druid grove."] = 935
			},
			["Lariia"] = 98065,
			["Arch Druid Fandral Staghelm"] = 98046
		},
		["Tumors"] = 923,
		["Return to Denalan"] = 2498,
		["The Enchanted Glade"] = 937,
		["Teldrassil"] = 940,
		["Good Luck Charm"] = 	{
			["Ol' Emma"] = 5050,
			["Jeremiah Payson"] = 5050
		},
		["The Demon Seed"] = 924,
		["Twisted Hatred"] = 	{
			["Tallonkai Swiftroot"] = 		{
				["I must warn you, $n, this matter must stay between us. The satyr are enough within his nearby cave just to the north of here, and bring me his head."] = 932,
				["Lord Melenas did not act alone; he was at the behest of another. The one brood, and bring me anything that may tell us more of the satyr's work here."] = 98403
			}
		},
		["The Emerald Dreamcatcher"] = 2438,
		["Ferocitas the Dream Eater"] = 2459,
		["Cave Mushrooms"] = 947,
		["Onu"] = 948,
		["In Favor of Elune"] = 5622,
		["The Apple Falls"] = 2241,
		["Erion Shadewhisper"] = 2259,
		["Garments of the Moon"] = 5621,
		["Ride to Thunder Bluff"] = 6362,
		["Ride to Orgrimmar"] = 6384,
		["The Fall of Ameth'Aran"] = 953,
		["For Love Eternal"] = 963,
		["Bashal'Aran"] = 	{
			["Thundris Windweaver"] = 954,
			["Asterion"] = 		{
				["If I were to relate the story of my life, I have no doubt it examining the earpieces of the sprites and grells, I may find a trace of it."] = 955,
				["If the grells have come into close contact with the seal that binds my eternal close to passing the bars of my prison that tears would come to my eyes."] = 956,
				["It was the craft of one of the most powerful of the Highborne that created in color. In this flame this seal could be destroyed. Be wary in the ruins, $n..."] = 957
			}
		},
		["Tools of the Highborne"] = 958,
		["Seeking the Kor Gem"] = 	{
			["Thundris Windweaver"] = 1442,
			["Ulric Frostveil"] = 95042
		},
		["The Cliffspring River"] = 4762,
		["The Blackwood Corrupted"] = 4763,
		["The Tower of Althalaxx"] = 	{
			["Sentinel Elissa Starbreeze"] = 965,
			["Balthule Shadowstrike"] = 		{
				["A group of warlocks has taken up residence around and inside the tower. I would you not to venture into the tower, however, the warlocks there are much more powerful!"] = 966,
				["My master, Delgren the Purifier, is a paladin who has graciously offered his assistance in Ashenvale Forest. Be swift, I fear the Dark Strand's threat grows with each passing hour."] = 967,
				["For all the work that you have done, you deserve to be well rewarded. Return stilled by your hand, and the Cult of the Dark Strand is beaten and scattered."] = 981,
				["I see. Well, if what you say is true, then now is the time to is surrounded by many powerful warlocks, much more deadly than the ones you faced before."] = 1143
			},
			["Delgren the Purifier"] = 		{
				["Balthule's letter is dire. This Cult of the Dark Strand is a thorn in my power. Bring it to me, and I will be able to decipher the secrets held within."] = 970,
				["Ilkrud Magthrull. Yes, I have knowledge of him. He is a powerful orc warlock that and I had not dealt with him, but it seems that his time has come."] = 973,
				["The writing of the orcs is little better than the scribblings of a child. Many the satyrs' blood-soaked temples can be unsettling even for a seasoned $c such as yourself."] = 1140,
				["Before confronting Athrikus, it would probably be wise for you to consult with Balthule. I vigilant in his watch of the Tower, and he may have information about recent developments."] = 1167
			}
		},
		["Trouble at the Docks"] = 959,
		["Buzzbox 827"] = 983,
		["Gaffer Jacks"] = 1579,
		["Electropellers"] = 1580,
		["Raene's Cleansing"] = 	{
			["Raene Wolfrunner"] = 		{
				["$N, a longtime friend of mine is also aiding the Sentinels here in Ashenvale, but west. The gem was being held there before it was overrun. Find my friend, $N, please."] = 991,
				["You'll have to do the research yourself, but from what notes Teronis has made, it the gem with you--Shael'dryn will need it if she's to help you recreate the rod."] = 1024,
				["Alas, I'm not completely certain what he had in mind next. If what he said was safe from the effects of Fel Moss. I would start your search southeast of Mystral Lake."] = 1030
			},
			["Teronis' Corpse"] = 1023,
			["Hidden Shrine"] = 1055,
			["Krolg"] = 		{
				["The night elves are as old as time, but their arrogance destroys their very world. but I do not wish ill upon their children, so we must police our own."] = 1045,
				["Return to your own tribe and let them know of your victory here. Show them your let them know of your victory here. Show them your trophy, and bask in the glory..."] = 1046
			},
			["Shael'dryn"] = 		{
				["I wish your tidings were better. Raene is correct, I know about Dartol's creation and the west of the road near the Felwood border... the chest should be hidden around there."] = 1026,
				["The final piece of the rod was given to the druids of Dor'danil for safekeeping. the final piece, bring it to me and I will help you reconstruct the rod."] = 1027,
				["Here is the completed rod, $N. Reconstructing it was simple... it's finding the shrine that surround this glade. Once there, place the rod within the shrine... the rest is magic. Hehe."] = 1028,
				["I suggest you find Raene and let her know the rod is finished. I'm sure rod is finished. I'm sure she'll know what your next course should be. Good luck, $N."] = 1029
			}
		},
		["An Aggressive Defense"] = 1025,
		["Culling the Threat"] = 1054,
		["Escape Through Force"] = 994,
		["Escape Through Stealth"] = 995,
		["How Big a Threat?"] = 	{
			["Terenthis"] = 		{
				["Some of my brethren were rescued from a corrupt furbolg in Teldrassil, and I've vowed one of their camps, and return to me if you see any signs of corruption?"] = 984,
				["You've already proven adept at scouting our enemy, $N. Do you have what it takes the Blackwood tribe there. Kill 8 pathfinders and 5 windtalkers, and return to me here."] = 985
			}
		},
		["A Lost Master"] = 	{
			["Terenthis"] = 		{
				["$N, your skills have already helped me in my endeavor. Could I impose on you can be found near Wildbend River to the south, or even farther south near Ashenvale."] = 986,
				["The cloak is complete, $N. The time has come to find Volcor. I can only him by waving when you see him, and he'll point the way towards his master."] = 993
			}
		},
		["Thundris Windweaver"] = 4761,
		["Trek to Ashenvale"] = 990,
		["Plagued Lands"] = 2118,
		["Cleansing of the Infected"] = 2138,
		["Tharnariun's Hope"] = 2139,
		["Easy Strider Living"] = 2178,
		["Garments of Spirituality"] = 5648,
		["In Favor of Spirituality"] = 5649,
		["Proof of Deed"] = 3182,
		["Flight to Auberdine"] = 6342,
		["The Zoram Strand"] = 1008,
		["Pridewings of Stonetalon"] = 1134,
		["Kayneth Stillwind"] = 4581,
		["The Ancient Statuette"] = 1007,
		["Ruuzel"] = 1009,
		["Bathran's Hair"] = 1010,
		["Orendil's Cure"] = 1020,
		["Forsaken Diseases"] = 1011,
		["Insane Druids"] = 1012,
		["The Howling Vale"] = 1022,
		["Velinde Starsong"] = 1037,
		["Elemental Bracers"] = 1016,
		["Mage Summoner"] = 1017,
		["Elune's Tear"] = 1033,
		["The Ruins of Stardust"] = 1034,
		["Fallen Sky Lake"] = 1035,
		["The Ruins of Solarsal "] = 2866,
		["Against the Hatecrest"] = 	{
			["Shandris Feathermoon"] = 3130,
			["Latronicus Moonspear"] = 2869
		},
		["Rise of the Silithid"] = 	{
			["Shandris Feathermoon"] = 4267,
			["Senior Surveyor Fizzledowser"] = 		{
				["Here's your report. I urge you to take it to someone who might have working can get. Zil lives in a house on the second tier of the Drag in Orgrimmar."] = 32,
				["I urge you to take this report to someone who has working knowledge in this help. Last I heard, she was residing in the Temple of the Moon, located in Darnassus."] = 162
			}
		},
		["The Caravan Road"] = 1041,
		["Compendium of the Fallen"] = 1049,
		["The Platinum Discs"] = 	{
			["Sage Truthseeker"] = 2440,
			["High Explorer Magellas"] = 2439,
			["The Discs of Norgannon"] = 		{
				["The centerpieces of this treasure chamber are four huge platinum discs, each adorned with numerous world in the Discs of Norgannon.' You have uncovered a wealth of previously undiscovered worldly lore!"] = 2278,
				["Touching the Discs of Norgannon once again makes your hand tingle. This time, however, a such a group, known throughout the Alliance; perhaps they can make good use of it."] = 2279,
				["Touching the Discs of Norgannon once again makes your hand tingle. This time, however, a are such historians, known throughout the Horde; perhaps they can make good use of it."] = 2280
			}
		},
		["Portents of Uldum"] = 	{
			["Sage Truthseeker"] = 2965,
			["High Explorer Magellas"] = 2963
		},
		["Mythology of the Titans"] = 1050,
		["In the Name of the Light"] = 1053,
		["Vorrel's Revenge"] = 1051,
		["Jin'Zil's Forest Magic"] = 1058,
		["Journey to Stonetalon Peak"] = 1056,
		["Forsaken Aid"] = 1064,
		["Magatha's Payment to Jediga"] = 3562,
		["Arikara"] = 5088,
		["The Spirits of Stonetalon"] = 1061,
		["The Crone of the Kraul"] = 1101,
		["Goblin Invaders"] = 1062,
		["The Elder Crone"] = 1063,
		["Shredding Machines"] = 1068,
		["A Gnome's Respite"] = 1071,
		["An Old Colleague"] = 1072,
		["A Scroll from Mauren"] = 1075,
		["Covert Ops - Alpha"] = 1079,
		["Covert Ops - Beta"] = 1080,
		["Kaela's Update"] = 1091,
		["Castpipe's Task"] = 2931,
		["Devils in Westfall"] = 1076,
		["Special Delivery for Gaxim"] = 1077,
		["Retrieval for Mauren"] = 1078,
		["On Guard in Stonetalon"] = 	{
			["Sentinel Thenysil"] = 1070,
			["Kaela Shadowspear"] = 1085
		},
		["Reception from Tyrande"] = 1081,
		["Update for Sentinel Thenysil"] = 1082,
		["Enraged Spirits"] = 1083,
		["Wounded Ancients"] = 1084,
		["Ineptitude + Chemicals = Fun"] = 	{
			["Lomac Gearstrip"] = 		{
				["Hahaha... you need Nitromirglyceronium to stop goblins from destroying a forest?! I don't care if you skill as an alchemist before I just give you a sample of my greatest creation."] = 1073,
				["Here you go, stranger. Take heed with it though... it's volatile stuff. If you're really a then tell him I say hello. If you're not, then have fun blowin' yerself up."] = 1074
			}
		},
		["Vorlus Vilehoof"] = 1683,
		["The Shade of Elura"] = 1686,
		["Smith Mathiel"] = 1692,
		["Destiny Calls"] = 2242,
		["Ken'zigla's Draught"] = 1511,
		["Return to Nessa"] = 6343,
		["Super Reaper 6000"] = 1093,
		["Gerenzo Wrenchwhistle"] = 1096,
		["Erion's Behest"] = 2260,
		["Rabine Saturna"] = 	{
			["Mathrengyl Bearwalker"] = 6762,
			["Arch Druid Hamuul Runetotem"] = 1123
		},
		["Nessa Shadowsong"] = 6344,
		["Gryth Thurden"] = 6388,
		["Gerenzo's Orders"] = 	{
			["Piznik"] = 		{
				["You know, I was once the second most important person here at this site. That to bring to Ziz, but you'll have to watch for patrols while I get it."] = 1090,
				["I guess I'd better think about getting out of here, also. It won't take long that he'd set up camp somewhere on the western side of Windshear Crag. Good luck."] = 1092
			}
		},
		["A Vengeful Fate"] = 1102,
		["Rocket Car Parts"] = 1110,
		["Delivery to the Gnomes"] = 1114,
		["The Rumormonger"] = 1115,
		["Back to Booty Bay"] = 1118,
		["Get the Gnomes Drunk"] = 1120,
		["Get the Goblins Drunk"] = 1121,
		["Report Back to Fizzlebub"] = 1122,
		["Hemet Nesingwary"] = 5762,
		["Hardened Shells"] = 1105,
		["Encrusted Tail Fins"] = 1107,
		["Gahz'rilla"] = 2770,
		["Salt Flat Venom"] = 1104,
		["Martek the Exiled"] = 1106,
		["Supplies to Auberdine"] = 976,
		["A Threat in Feralas"] = 2981,
		["Betrayed"] = 	{
			["Belgrom Rockmaul"] = 3504,
			["Ag'tor Bloodfist"] = 		{
				["I thought as much. We start our crusade against her workers along the southern bluffs on her would be wise. Perhaps there is something there we can use to provoke her."] = 3505,
				["Return to Belgrom in Orgrimmar. He will want to see her head for himself! We'll return there shortly. Ah, this is indeed a good day. Thank you for your help, $N."] = 3507
			},
			["Kaldorei Tome of Summoning"] = 3506
		},
		["To Steal From Thieves"] = 1164,
		["Final Passage"] = 1394,
		["The Burning of Spirits"] = 1435,
		["The Corrupter"] = 	{
			["Maurin Bonesplitter"] = 		{
				["I believe I can find this demon lord given the proper reagents. If he is indeed from a Hatefury shadowstalker. Search for them among the ancient ruins in the northeast of Desolace."] = 1481,
				["An oracle crystal would do nicely. They are crafted by the naga for their oracles careful and make haste. When you return, we shall see about finding this demon lord Azrethoc."] = 1482,
				["This creature is far more dangerous than I had anticipated. No doubt Takata questions my do not press too hard. It is better if he thinks it his own idea."] = 1484
			},
			["Takata Steelblade"] = 1488,
			["Flayed Demon Skin"] = 1480,
			["Flayed Demon Skin (old2)"] = 1480
		},
		["Willix the Importer"] = 1144,
		["Mortality Wanes"] = 1142,
		["A New Cloak's Sheen"] = 2973,
		["A Grim Discovery"] = 	{
			["Krueg Skullsplitter"] = 		{
				["What!? You came across tauren in the area? You're joking! What did they look like!? The back and slay them; let the rivers in Feralas run red with their dark blood."] = 2974,
				["What?! Ah, so I did mention a bounty, didn't I? Well, that'll teach me to open you for your hard work. Be well, $c, and thank you again for everything you've done."] = 2976
			}
		},
		["Return to Podrig"] = 6324,
		["Michael Garrett"] = 6322,
		["The Balnir Farmstead"] = 1882,
		["Speak with Deino"] = 1943,
		["Investigate the Alchemist Shop"] = 1960,
		["Gathering Materials"] = 	{
			["Anastasia Hartwell"] = 1961,
			["Jennea Cannon"] = 1921
		},
		["Indurium"] = 1108,
		["News for Fizzle"] = 1137,
		["A Bump in the Road"] = 1175,
		["Load Lightening"] = 1176,
		["The Eighteenth Pilot"] = 1186,
		["Keeping Pace"] = 1190,
		["Razzeric's Tweaking"] = 1187,
		["Safety First"] = 	{
			["Razzeric"] = 1188,
			["Shreev"] = 1189
		},
		["The Sacred Flame"] = 	{
			["Zangen Stonehoof"] = 		{
				["The Galak centaur in the Thousand Needles are protecting an artifact from the time of of the Falfarren River, south of the main road, where you can fill the phial."] = 1195,
				["Bring the filled phial to Rau Cliffrunner at the Freewind Post in southeastern Thousand Needles. southern edge of the Barrens. I wouldn't be surprised if you can help us out further."] = 1196
			},
			["Rau Cliffrunner"] = 1197
		},
		["Twilight Falls"] = 1199,
		["In Search of Thaelrid"] = 1198,
		["Blackfathom Villainy"] = 	{
			["Argent Guard Thaelrid"] = 		{
				["Strength has left me. Your help is needed! Long ago this site was a great temple to Aku'Mai for power. Slay Kelris and bring his head to Selgorm in Darnassus, $N, please."] = 1200,
				["Strength has left me. Your help is needed! Long ago this site was a great temple Aku'Mai for power. Slay Kelris and bring his head to Bashana in Thunder Bluff, $N, please."] = 6561
			}
		},
		["Theramore Spies"] = 1201,
		["The Theramore Docks"] = 1202,
		["The Troll Witchdoctor"] = 1240,
		["Report to Zor"] = 1262,
		["Jarl Needs a Blade"] = 	{
			["'Swamp Eye' Jarl"] = 		{
				["I have cutting to do. I can't tell you what I'm going to cut, but... and he'll make it special. But don't sleep on this. What I'm cutting won't keep forever..."] = 1203,
				["I have cutting to do. I can't tell you what I'm going to cut, but... he'll make it special. But don't sleep on this. What I'm cutting won't keep forever..."] = 81570
			}
		},
		["Jarl Needs Eyes"] = 1206,
		["Soothing Spices"] = 1218,
		["Mudrock Soup and Bugs"] = 1204,
		["... and Bugs"] = 1258,
		["Stinky's Escape"] = 	{
			["'Stinky' Ignatz"] = 		{
				["Great, finally something that doesn't want to eat me! I need help handling the critters around help me out of here, and watch my back as I look for the bogbean?"] = 1222,
				["Great, finally something that doesn't want to eat me!! I need help handling the critters around help me out of here, and watch my back as I look for Mebok's plant?"] = 1270
			}
		},
		["They Call Him Smiling Jim"] = 1282,
		["The Black Shield"] = 	{
			["Krog"] = 		{
				["Ah, I remember now! Mosarn is a well-respected blacksmith in Thunder Bluff. I knew I lead, but since we didn't get anything useful out of Reethe, it's all we have."] = 1276,
				["Hmm... I don't see anything out of the ordinary with this shield. We should have see if he can tell us more about it, but I wouldn't hold out hope..."] = 1321
			},
			["Caz Twosprocket"] = 1320,
			["Captain Garran Vimes"] = 1319,
			["Black Shield"] = 1253,
			["Do'gol"] = 		{
				["Hmmm, there's writing right here on the rim of the shield, but it's hard to would do good. Get me some of their sacs and I can clean this up."] = 1322,
				["Oh, I think I might have dropped too much acid onto the shield. Let me like the name Mosarn. Never heard of him. Maybe Krog knows. Krog knows many people."] = 1323
			}
		},
		["Lieutenant Paval Reethe"] = 	{
			["Captain Garran Vimes"] = 1259,
			["Theramore Guard Badge"] = 1252
		},
		["The Deserters"] = 	{
			["Captain Garran Vimes"] = 1286,
			["Balos Jacken"] = 1287
		},
		["Vimes's Report"] = 	{
			["Captain Garran Vimes"] = 1288,
			["Vimes's Report"] = 1288
		},
		["Captain Vimes"] = 1220,
		["Daelin's Men"] = 1285,
		["Kharan Mighthammer"] = 4341,
		["The Fate of the Kingdom"] = 4362,
		["Shadowshard Fragments"] = 	{
			["Archmage Tervosh"] = 7070,
			["Uthel'nay"] = 7068
		},
		["The Corruption Abroad"] = 3765,
		["James Hyal"] = 	{
			["Connor Rivers"] = 1301,
			["Vincent Hyal"] = 1302
		},
		["Assisting Arch Druid Staghelm"] = 	{
			["Innkeeper Firebrew"] = 3790,
			["Innkeeper Saelienne"] = 3763,
			["Innkeeper Allison"] = 3789
		},
		["Chicken Clucking for a Mint"] = 	{
			["Innkeeper Firebrew"] = 8353,
			["Innkeeper Norman"] = 8354
		},
		["Mage-tastic Gizmonitor"] = 1880,
		["High Sorcerer Andromath"] = 	{
			["Bink"] = 1939,
			["Jennea Cannon"] = 1939
		},
		["The Tome of Nobility"] = 	{
			["Brandur Ironhammer"] = 4486,
			["Arthur the Faithful"] = 4485,
			["Duthorian Rall"] = 1661
		},
		["Lord Grayson Shadowbreaker"] = 	{
			["Brandur Ironhammer"] = 7670,
			["Duthorian Rall"] = 7638
		},
		["Alliance Trauma"] = 6625,
		["I Know A Guy..."] = 6612,
		["I Got Nothin' Left!"] = 6609,
		["The Art of the Armorsmith"] = 	{
			["Grumnus Steelshaper"] = 5283,
			["Okothos Ironrager"] = 5301
		},
		["Simple Subterfugin'"] = 2238,
		["Kingly Shakedown"] = 2298,
		["Errand for Apothecary Zinge"] = 	{
			["Apothecary Zinge"] = 232,
			["Alessandro Luca"] = 238
		},
		["Into the Field"] = 243,
		["Sample for Helbrim"] = 1358,
		["Vivian Lagrave"] = 4133,
		["Vivian Lagrave and the Darkstone Tablet"] = 4769,
		["Zinge's Assessment"] = 8980,
		["In Search of The Temple"] = 1448,
		["To The Hinterlands"] = 1449,
		["Into The Temple of Atal'Hakkar"] = 1475,
		["Galen's Escape"] = 1393,
		["Coyote Thieves"] = 1419,
		["Report to Helgrum"] = 1420,
		["Khan Dez'hepah"] = 1365,
		["Centaur Bounty"] = 	{
			["Felgur Twocuts"] = 1366,
			["Corporal Melkins"] = 1387
		},
		["Strange Alliance"] = 1382,
		["Brutal Politics"] = 1385,
		["Fire Plume Forged"] = 	{
			["Krinkle Goodsteel"] = 		{
				["You need two bars of thorium and a powerfully hot heat source to forge the it on my end. To finish your key, you'll need to talk to Arbington again."] = 5801,
				["You need two bars of thorium and a powerfully hot heat source to forge the it on my end. To finish your key, you'll need to talk to Dithers again."] = 5802
			}
		},
		["Magram Alliance"] = 1367,
		["Gelkis Alliance"] = 1368,
		["Grimand Elmore"] = 1700,
		["Fire Hardened Mail"] = 1701,
		["Mathiel"] = 1703,
		["Klockmort Spannerspan"] = 1704,
		["Nothing But The Truth"] = 	{
			["Apothecary Faustin"] = 		{
				["I have just the right serum in mind. It will deal with the truth in Desolace. Very rarely the giants there become ill and a tumor forms. Now, off you go!"] = 1383,
				["Everything is proceeding according to plan, $n. I want you to give this truth serum this truth serum to Deathstalker Zraedus and he'll show you how to administer it.... properly. Haha!"] = 1388
			},
			["Deathstalker Zraedus"] = 		{
				["Our expeditionary force was sent at Varimathras's behest to survey lower Azeroth. While out scouting I a hand. Work with Faustin here to develop a... truth serum for our friend in Stonard."] = 1372,
				["We need to operate with a certain amount of discretion. After all, it's not like Stonard in the Swamp of Sorrows, $n. And keep our little mission nice and quiet..."] = 1391
			}
		},
		["Supplies for Nethergarde"] = 1395,
		["Encroaching Wildlife"] = 1396,
		["Driftwood"] = 1398,
		["The Lost Caravan"] = 1421,
		["Deliver the Shipment"] = 1425,
		["Yorus Barleybrew"] = 	{
			["Wu Shen"] = 1698,
			["Darnath Bladesinger"] = 1698
		},
		["Cenarion Aid"] = 	{
			["Brother Joshua"] = 8254,
			["Ur'kyo"] = 8254,
			["High Priest Rohan"] = 8254
		},
		["Mirror Lake"] = 1861,
		["Investigate the Blue Recluse"] = 1920,
		["Mor'zul Bloodbringer"] = 	{
			["Spackle Thornberry"] = 7562,
			["Martha Strain"] = 7562,
			["Kurgul"] = 7562,
			["Jubahl Corpseseeker"] = 7562
		},
		["Until Death Do Us Part"] = 264,
		["Jonespyre's Request"] = 	{
			["Tannysa"] = 3787,
			["Innkeeper Shyria"] = 3788
		},
		["Lack of Surplus"] = 	{
			["Dar"] = 698,
			["Tok'Kar"] = 699
		},
		["Fresh Meat"] = 1430,
		["Threat From the Sea"] = 	{
			["Tok'Kar"] = 1422,
			["Katar"] = 		{
				["I have no love for the sea, nor any creature I've seen come from its $c. How many can you slay? Would you test yourself against their most powerful kind?"] = 1426,
				["Before you take rest, speak to Tok'Kar again. While you were gone I believe he strength against the fish men when you are ready... but only to please me further."] = 1427
			}
		},
		["Continued Threat"] = 1428,
		["Insect Part Analysis"] = 	{
			["Alchemist Pestlezugg"] = 113,
			["Senior Surveyor Fizzledowser"] = 110
		},
		["Bungle in the Jungle"] = 4496,
		["Pawn Captures Queen"] = 4507,
		["Calm Before the Storm"] = 	{
			["Alchemist Pestlezugg"] = 4508,
			["Zilzibin Drumlore"] = 4511,
			["Gracina Spiritmight"] = 4510
		},
		["Return to Fel'Zerul"] = 1444,
		["Jammal'an the Prophet"] = 1446,
		["Rhapsody's Kalimdor Kocktail"] = 1452,
		["Rhapsody's Tale"] = 1469,
		["Gryphon Master Talonaxe"] = 1450,
		["Rhapsody Shindigger"] = 1451,
		["Witherbark Cages"] = 2988,
		["The Altar of Zul"] = 2989,
		["Thadius Grimshade"] = 2990,
		["Saving Sharpbeak"] = 2994,
		["Reclaimers' Business in Desolace"] = 1453,
		["The Karnitol Shipwreck"] = 	{
			["Kreldig Ungor"] = 		{
				["My first order of business is for the mage Karnitol--a noble of some sort in us to find the chest and its contents, and return it to him in Stormwind."] = 1454,
				["Intriguing. Well, we might not be without hope quite yet. Along that same coast, but to the find Karnitol's belongings, I'd start with the more powerful naga: the tidehunters or sea witches."] = 1456,
				["Take Karnitol's things back to Roetten in Ironforge and he'll pay you for a job too much time--Karnitol's not the most of patient of men, but he's very generous nonetheless."] = 1457
			},
			["Karnitol's Chest"] = 1455
		},
		["Reagents for Reclaimers Inc."] = 	{
			["Kreldig Ungor"] = 		{
				["One of my tasks out here involves picking up some reagents for Leftwitch, a gnome Bring 'em back to me and we'll get started on the rest of the list."] = 1458,
				["Next on Leftwitch's list is... let's see... hmm. Oh, here it is. Simple enough, but pretty or ancient ones. Mages, I tell ya, some of the stuff they want... it's just weird."] = 1459,
				["This is the last of the items, and I won't lie, it ain't pretty. I'm captain, or lord. Simple enough, huh? Sheesh... if you wanna pass on this one, I'd understand."] = 1466,
				["To get paid, you're gonna have to get back to Ironforge and speak to Roetten good word for you when I get back. I shouldn't be in Desolace much longer."] = 1467
			}
		},
		["Alliance Relations"] = 	{
			["Craven Drok"] = 1431,
			["Keldran"] = 1432,
			["Takata Steelblade"] = 		{
				["The Burning Blade have many agendas, but know that they are evil to their core, demonic threats here in Desolace. Speak to him, and he will guide you in his designs."] = 1433,
				["The fight goes well, $N. Perhaps the Warchief will allow us to return to our to him, and he will take pride in knowing that the Warchief respects his concerns."] = 1436
			}
		},
		["Befouled by Satyr"] = 1434,
		["Vahlarriel's Search"] = 	{
			["Vahlarriel Demonslayer"] = 		{
				["I am Vahlarriel, $N. I've come here to discover the whereabouts of two missing nobles Stonetalon Mountains a few weeks ago. If you find their wagon, please, come find me immediately."] = 1437,
				["Find both Dalinda and Tyranis if you can and come back to me with your found and brought back safely. Tyranis is to be... gauged before he is taken home."] = 1438
			},
			["Malem Chest"] = 1465
		},
		["Search for Tyranis"] = 1439,
		["Return to Vahlarriel"] = 1440,
		["Reclaimed Treasures"] = 	{
			["Patrick Garrett"] = 2342,
			["Krom Stoutarm"] = 1360
		},
		["Piercing the Veil"] = 1470,
		["The Binding"] = 	{
			["Carendin Halgar"] = 		{
				["Surely you have seen the circle of summoning below us? Only there will you be the spell of summoning, so that it may serve you to whatever end you wish."] = 1471,
				["Using these hearts, cast a spell at the summoning circle to open a doorway for void, and I will teach you the spell to summon it forth at your command."] = 1474,
				["The time has come at last. Bring the hearts to the summoning circle below. Place fully. Only then can I teach you the spell to bind it to your will."] = 65597
			},
			["Gan'rul Bloodeye"] = 		{
				["Now, observe the Tablet of Verga, for it contains the glyphs you will need for of summoning and I will demonstrate how you may bind the creature to your will."] = 1504,
				["Take this to the summoning circle in Neeru's tent, $n. Summon forth a foul succubus, it, return the pendant to me so that I might deliver the news to Zankaja."] = 1513,
				["Yes... I see. I feel the residual emotions bound within these threads. Love is woven defeated it, return the cloth to me. I will let Magar know what you found."] = 65604
			},
			["Gakin the Darkbinder"] = 		{
				["By retrieving my choker and besting Surena, you've proven that you're at least as capable have at your disposal. Use the magic of this choker at the summoning circle below."] = 1689,
				["Using the heartswood core, you will be able to cast a spell at the summoning void, return to me and I will show you how to call and control it."] = 1739,
				["The time has come. Take the figurine and descend into the crypts below. A summoning and I shall bind the creature to your will. Fail, and your soul is forfeit."] = 65603
			},
			["Strahad Farsan"] = 1795
		},
		["Devourer of Souls"] = 	{
			["Carendin Halgar"] = 1472,
			["Gan'rul Bloodeye"] = 1507,
			["Gakin the Darkbinder"] = 1716
		},
		["Creature of the Void"] = 	{
			["Carendin Halgar"] = 1473,
			["Gan'rul Bloodeye"] = 1501
		},
		["Seeking Strahad"] = 	{
			["Carendin Halgar"] = 3001,
			["Gan'rul Bloodeye"] = 2996,
			["Gakin the Darkbinder"] = 1798
		},
		["Hearts of the Pure"] = 1476,
		["Vital Supplies"] = 1477,
		["Ur's Treatise on Shadow Magic"] = 1938,
		["Pristine Spider Silk"] = 1940,
		["Halgar's Summons"] = 1478,
		["Deviate Hides"] = 1486,
		["Deviate Eradication"] = 1487,
		["The Barrens Oases"] = 886,
		["Nara Wildmane"] = 1490,
		["Leaders of the Fang"] = 914,
		["Path of Defense"] = 1498,
		["Thun'grim Firegaze"] = 1502,
		["Forged Steel"] = 1503,
		["Brutal Armor"] = 1838,
		["Ula'elek and the Brutal Gauntlets"] = 1839,
		["Orm Stonehoof and the Brutal Helm"] = 1840,
		["Velora Nitely and the Brutal Legguards"] = 1841,
		["Ju-Ju Heaps"] = 1884,
		["Waters of Xavian"] = 1944,
		["Laughing Sisters"] = 1945,
		["Call of Earth"] = 	{
			["Canaga Earthcaller"] = 		{
				["The time is now, young $c. You've grown strong and your spirit endures like the of their hooves. Return to me then, and we shall speak more of your future."] = 1516,
				["A sapta is a drink created to bind our spirits to the elements. Fused with the end of the Hidden Path. Drink your sapta there, and... well, you shall see."] = 1517
			},
			["Seer Ravenfeather"] = 		{
				["The time has come, young $c. Your body ages and grows strong, and your spirit in their rituals. Return to me only when you have enough for your own potion."] = 1519,
				["A sapta is a drink created to bind our spirits to the elements. Fused with else. Seek out the shaman shrine to the east of here and drink of the sapta."] = 1520
			},
			["Minor Manifestation of Earth"] = 		{
				["Take this rough quartz from me and bring it to Canaga Earthcaller as proof of the end, you shall become one with the earth--respect it as it shall respect you."] = 1518,
				["Take this rough quartz from me and bring it to Seer Ravenfeather as proof of the end, you shall become one with the earth--respect it as it shall respect you."] = 1521,
				["Take this Rough Quartz from me and bring it to the one you call Windshaper the end, you shall become one with the earth--respect it as it shall respect you."] = 92468,
				["Take this rough quartz from me and bring it to Teo Hammerstorm as proof o' the end, ye shall become one with the earth--respect it as it shall respect ye."] = 94375
			},
			["Teo Hammerstorm"] = 		{
				["Aye, the time's come, young $c. Ye've grown stout and sturdy, like the stone beneath their necklaces they wear--crafted from the Iceclaw bears. Then we'll speak more of yer future."] = 94373,
				["Aye, sapta's a brew forged with magic, bindin' our spirit to the elements. Only a path up the mountain. Drink it there... see what the earth has to show ye."] = 94374
			},
			["Windshaper Boro"] = 		{
				["A sapta is a drink created to bind our spirits to the elements. Fused with of here. Drink your sapta there, and... well, you will see what you need see."] = 92467,
				["While we owe much of our prosperity to the elements of wind, the path we the cultists there and bring me one of their signets as proof of your deeds."] = 92466
			},
			["Ingrid Dunwald"] = 96243,
			["Eldrun Stormbreaker"] = 96243
		},
		["Call of Air"] = 	{
			["Searn Firewarder"] = 1531,
			["Xanis Flameweaver"] = 1532,
			["Eldrun Stormbreaker"] = 94789
		},
		["Cleansed Water Returns to Felwood"] = 5159,
		["Love's Gift"] = 1512,
		["Blind Cazul"] = 1508,
		["Dogran's Captivity"] = 1515,
		["Ghost-o-plasm Round Up"] = 6134,
		["Supplying the Front"] = 1578,
		["Gearing Redridge"] = 1618,
		["Ironband's Compound"] = 1681,
		["Moonglow Vest"] = 1582,
		["Bartleby the Drunk"] = 1639,
		["Marshal Haggard"] = 1666,
		["Beat Bartleby"] = 1640,
		["Bartleby's Mug"] = 1665,
		["Vejrek"] = 1678,
		["Tormus Deepforge"] = 1680,
		["The Slaughtered Lamb"] = 1715,
		["Gakin's Summons"] = 	{
			["Lago Blackwrench"] = 1717,
			["Remen Marcot"] = 1685
		},
		["Surena Caledon"] = 1688,
		["Sunscorched Shells"] = 1710,
		["Klockmort's Essentials"] = 2925,
		["The Rethban Gauntlet"] = 1699,
		["The Shieldsmith"] = 1702,
		["Iron Coral"] = 1708,
		["Essential Artificials"] = 2924,
		["The Tome of Divinity"] = 	{
			["Duthorian Rall"] = 		{
				["Your task then, $N, is to find someone here in Stormwind that is in need more of your path and what it means to be a paladin of the Light."] = 1643,
				["Take this, $N. It is called the Symbol of Life. You've proven charitable and patient, and help him, then we will speak again soon. May you bask in the Light's glory."] = 1781
			},
			["Henze Faulk"] = 1787,
			["Gazin Tenorm"] = 		{
				["Henze and I had made it to Heroes' Vigil, an island in the middle of fool, going and being brave. He's out there now, Henze is. Can you help us, $N?"] = 1786,
				["I'll take the script to the King's advisors after Duthorian's taken a look at them, $N. I hope we meet again. You're surely an ally I'm proud to call friend."] = 1788
			},
			["Stephanie Turner"] = 		{
				["Bless their hearts, most of them have no families because of the Scourge attacks in so I can sew clothes for the kids, that would help me out so much."] = 1644,
				["I'll take these to the children this very day. Please be safe, good $c. It that the paladins here in Stormwind shall never turn their backs on those in need. Farewell."] = 1780
			},
			["John Turner"] = 		{
				["My wife and I run an orphanage in Stormwind, mostly for children who have lost linen for my wife to make some clothes, I could finally send a shipment home."] = 1648,
				["I'm going to see about making plans to return home soon. Hopefully, Stephanie is doing back in Stormwind. I can't wait to see her again. Till next we meet, $c."] = 1778
			},
			["Narm Faulk"] = 1784,
			["Muiredon Battleforge"] = 		{
				["We was spyin' on some of the Dark Iron dwarves that've bunkered down south of I am. Narm needs help, an' I'll not rest till he gets it. C'n ya help, $N?"] = 1783,
				["I c'n see me wife's o'er there beamin' wit pride already. Ya better get yer ya on the battlefield against the Scourge and dem Dark Irons when the time comes."] = 1785
			},
			["Tiza Battleforge"] = 		{
				["Your task then, $N, is to find someone here in Ironforge that is in need remain here in the temple for your return. Other paladins will need my guidance also."] = 1647,
				["I want you to take this, $N. It is called the Symbol of Life. You've proven can help him, then we will speak again soon. May the Light shine upon you."] = 1779
			},
			["Tome of Divinity"] = 1642
		},
		["The Tome of Valor"] = 	{
			["Duthorian Rall"] = 1650,
			["Daphne Stilwell"] = 		{
				["Now, they'll be coming again soon, I'd wager, so get yourself ready. I've got myself a because... did you hear that? I think they're coming. We make our stand near the house!"] = 1651,
				["Please, return to Duthorian and let him know that I'm safe for now. I have has nothing to fear. Oh, how I miss my husband. I can't wait till he returns."] = 1652
			},
			["Tome of Valor"] = 1649
		},
		["The Test of Righteousness"] = 	{
			["Duthorian Rall"] = 1653,
			["Jordan Stilwell"] = 		{
				["I'd like to reward you if you'd be willing to accept such a thing? Don't just requires someone brave and skilled enough to recover them. What do you say, $c?"] = 1654,
				["Why don't we go over to the forge and get started on this? I've been can contribute to your adventures in my own significant way does bring me some joy."] = 1806
			}
		},
		["Cyclonian"] = 1712,
		["The Summoning"] = 1713,
		["Mastering the Elements"] = 8411,
		["Spirit Totem"] = 8412,
		["Da Voodoo"] = 8413,
		["The Affray"] = 1719,
		["The Windwatcher"] = 1791,
		["Bailor's Ore Shipment"] = 1655,
		["Heartswood"] = 1738,
		["The Orb of Soran'ruk"] = 1740,
		["Tome of the Cabal"] = 	{
			["Strahad Farsan"] = 		{
				["It will take more than a simple summoning circle to bring forth a felhunter for days, he spends his days hoarding ancient texts and skulking about the library in Ironforge."] = 1758,
				["It will take more than a simple summoning circle to bring forth a felhunter for the Undercity these days, but still knows more of ancient texts than any I know."] = 1801
			},
			["Jorah Annison"] = 		{
				["Ah! I see that you are a warlock of similar tastes to mine. Indeed, acquiring be transferred to Ironforge, but was lost in transit on the coast west of Southshore."] = 1803,
				["This is one of the most interesting texts I have perused in the last few secret: You can find the rods on orcs of the Dragonmaw Clan in the Wetlands."] = 1805
			},
			["Krom Stoutarm"] = 		{
				["It was lost, but there's some idea as to where it might be found. There was all I ask is that if you find it, bring it to me to see."] = 1802,
				["Well, ah, it's hard to let it go. But you found it, and you have used by the orcs of the Dragonmaw clan in the Wetlands. I'd check their spellcasters!"] = 1804
			}
		},
		["Shard of an Infernal"] = 4963,
		["Shard of a Felhound"] = 4962,
		["Fragments of the Orb of Orahil"] = 1799,
		["The Completed Robe"] = 4786,
		["The Completed Orb of Dar'Orahil"] = 4964,
		["The Completed Orb of Noh'Orahil"] = 4975,
		["Recipe of the Kaldorei"] = 4161,
		["Deep Ocean, Vast Sea"] = 982,
		["Supplying the Sepulcher"] = 6321,
		["Trial at the Field of Giants"] = 1824,
		["Speak with Thun'grim"] = 1825,
		["Satyr Hooves"] = 1842,
		["Chimaeric Horn"] = 1844,
		["Dragonmaw Shinbones"] = 1846,
		["The Shattered Hand"] = 	{
			["Therzok"] = 		{
				["I'll leave it to you to get Tazan's satchel open, and return to me with likely find him at the tavern. Perhaps you could quietly relieve him of the key."] = 1858,
				["The Warchief is too subtle in his methods. He is cautious to unleash the might near Ratchet. He has information I must have. Kill him and bring me his satchel."] = 1963
			}
		},
		["The Deathstalkers"] = 	{
			["Mennet Carkad"] = 		{
				["If you wish to join the Deathstalkers, Lord Varimathras' elite guard, you will have to know less of the nature of this business. Succeed and I shall tell you more."] = 1886,
				["The letter of introduction should be enough to convince Andron that you are the messenger with Andron, and obtain this information. You'll find him at his shop near the Apothecarium."] = 1898,
				["The Syndicate? I would never have suspected. It seems the lords of Alterac have fallen the one to deliver it to him. Ah, and how could I forget? Welcome to the Deathstalkers."] = 1978
			},
			["Andron Gant"] = 1899
		},
		["Fenwick Thatros"] = 1998,
		["Tools of the Trade"] = 1999,
		["Find the Shattered Hand"] = 2378,
		["Andron's Payment to Jediga"] = 3564,
		["Items of Power"] = 1948,
		["Hidden Secrets"] = 1949,
		["Mage's Wand"] = 1952,
		["The Infernal Orb"] = 1954,
		["The Exorcism"] = 1955,
		["Power in Uldaman"] = 1956,
		["Mana Surges"] = 1957,
		["Tiara of the Deep"] = 2846,
		["Cleansing of the Orb of Orahil"] = 4961,
		["Returning the Cleansed Orb"] = 4976,
		["Get the Scoop"] = 1950,
		["Rituals of Power"] = 1951,
		["Find Bingles"] = 2039,
		["Speak with Shoni"] = 2041,
		["The Day After"] = 2927,
		["Bingles' Missing Supplies"] = 2038,
		["Underground Assault"] = 2040,
		["Gyrodrillmatic Excavationators"] = 2928,
		["Gyromast's Revenge"] = 2078,
		["Gyromast's Retrieval"] = 2098,
		["Dancing for Marzipan"] = 	{
			["Innkeeper Saelienne"] = 8357,
			["Innkeeper Pala"] = 8360
		},
		["Flexing for Nougat"] = 	{
			["Innkeeper Allison"] = 8356,
			["Innkeeper Gryshka"] = 8359
		},
		["Tracing the Source"] = 	{
			["Innkeeper Allison"] = 9027,
			["Innkeeper Norman"] = 8983,
			["Aristan Mottar"] = 9026,
			["Fenstad Argyle"] = 8982
		},
		["Assisting Arch Druid Runetotem"] = 	{
			["Innkeeper Norman"] = 3784,
			["Innkeeper Pala"] = 3762,
			["Innkeeper Gryshka"] = 936
		},
		["Sealed Azure Bag"] = 8234,
		["Rest and Relaxation"] = 2158,
		["A Task Unfinished"] = 1656,
		["Dolanaar Delivery"] = 2159,
		["Supplies to Tannok"] = 2160,
		["A Rogue's Deal"] = 	{
			["Calvin Montague"] = 		{
				["Hey, mate! Do a favor for a young man who's been fighting more than his the need arises. You should check it out... you do and I'll pay you well."] = 8,
				["What? What?! You want money? I don't owe you any money. Letter? What letter? Oh, you wanna fight Oh, you wanna fight then? All right, mate... let's do this! Owe you any money..."] = 590
			}
		},
		["A Peon's Burden"] = 2161,
		["Lore for a Price"] = 2199,
		["Back to Uldaman"] = 2200,
		["Restoring the Necklace"] = 	{
			["Talvash del Kissel"] = 2204,
			["Talvash's Scrying Bowl"] = 2204
		},
		["Gnome Improvement"] = 2948,
		["Replacement Phial"] = 3375,
		["Incoming Gumdrop"] = 	{
			["Talvash del Kissel"] = 8355,
			["Kali Remik"] = 8358
		},
		["Translating the Journal"] = 	{
			["Jarkal Mossmeld"] = 2338,
			["Remains of a Paladin"] = 2318
		},
		["Find the Gems and Power Source"] = 2339,
		["Deliver the Gems"] = 2340,
		["Onin's Report"] = 2239,
		["Find the Gems"] = 2201,
		["Doras the Wind Rider Master"] = 6385,
		["Redridge Rendezvous"] = 2281,
		["Alther's Mill"] = 	{
			["Lucius"] = 2282,
			["Foreman Oslow"] = 98386
		},
		["Ripple Recovery"] = 	{
			["Dran Droffers"] = 649,
			["Malton Droffers"] = 650
		},
		["Necklace Recovery"] = 2283,
		["Necklace Recovery, Take 2"] = 2284,
		["Necklace Recovery, Take 3"] = 2341,
		["Horns of Nez'ra"] = 2358,
		["March of the Silithid"] = 	{
			["Zilzibin Drumlore"] = 4494,
			["Gracina Spiritmight"] = 4493
		},
		["Klaven's Tower"] = 2359,
		["Plundering the Plunderers"] = 2381,
		["Mission: Possible But Not Probable"] = 2478,
		["Tears of the Moon"] = 2518,
		["Sathrah's Sacrifice"] = 2520,
		["The Temple of the Moon"] = 2519,
		["The Sleeping Druid"] = 2541,
		["Druid of the Claw"] = 2561,
		["The Pledge of Secrecy"] = 	{
			["Oglethorpe Obnoticus"] = 3642,
			["Tinkmaster Overspark"] = 3640,
			["Nixx Sprocketspring"] = 3638
		},
		["Show Your Work"] = 	{
			["Oglethorpe Obnoticus"] = 3643,
			["Tinkmaster Overspark"] = 3641,
			["Nixx Sprocketspring"] = 3639
		},
		["Slake That Thirst"] = 379,
		["Another Power Source?"] = 841,
		["Return to Apothecary Zinge"] = 864,
		["Wastewander Justice"] = 1690,
		["More Wastewander Justice"] = 1691,
		["Divino-matic Rod"] = 2768,
		["Water Pouch Bounty"] = 1707,
		["The Thirsty Goblin"] = 2605,
		["In Good Taste"] = 2606,
		["Noggenfogger Elixir"] = 2662,
		["The Disgraced One"] = 2621,
		["The Stones That Bind Us"] = 2681,
		["Heroes of Old"] = 	{
			["Fallen Hero of the Horde"] = 2702,
			["Corporal Thund Splithoof"] = 2701
		},
		["Kirith"] = 2721,
		["The Demon Hunter"] = 2744,
		["Fall From Grace"] = 2784,
		["A Tale of Sorrow"] = 2801,
		["Uniting the Shattered Amulet"] = 3627,
		["You Are Rakh'likh, Demon"] = 3628,
		["Warrior Kinship"] = 8423,
		["War on the Shadowsworn"] = 8424,
		["Voodoo Feathers"] = 8425,
		["Sprinkle's Secret Ingredient"] = 2641,
		["Delivery for Marin"] = 2661,
		["The Missing Orders"] = 2622,
		["The Swamp Talker"] = 2623,
		["The Scrimshank Redemption"] = 10,
		["Noxious Lair Investigation"] = 82,
		["Gadgetzan Water Survey"] = 992,
		["The Cover of Darkness"] = 2743,
		["The Super Snapper FX"] = 2944,
		["Handle With Care"] = 3022,
		["The Stave of Equinex"] = 2879,
		["In Search of Knowledge"] = 2939,
		["The Attack!"] = 434,
		["Items of Some Consequence"] = 2746,
		["Gahz'ridian"] = 3161,
		["The Stone Circle"] = 3444,
		["Into the Depths"] = 3446,
		["Secret of the Circle"] = 3447,
		["Wandering Shay"] = 2845,
		["Haze of Evil"] = 4143,
		["Dark Heart"] = 3062,
		["Vengeance on the Northspring"] = 3063,
		["The Strength of Corruption"] = 4120,
		["Lethtendris's Web"] = 	{
			["Talo Thornhoof"] = 7489,
			["Latronicus Moonspear"] = 7488
		},
		["The Ogres of Feralas"] = 	{
			["Rok Orhan"] = 		{
				["The effects of the Gordunni Ogre tribe can hardly go unnoticed in this area. Look Decrease their numbers, $N. We must show them that their kind is not wanted here."] = 2975,
				["Now that you have proven that you are a true fighter, I trust that you them back. These ogres are much stronger than the ones you faced previously, $N. Be aware."] = 2980
			}
		},
		["Dark Ceremony"] = 2979,
		["The Gordunni Orb"] = 3002,
		["Rin'ji is Trapped!"] = 2742,
		["Loramus"] = 3141,
		["Breaking the Ward"] = 3508,
		["The Name of the Beast"] = 	{
			["Loramus Thalipedes"] = 3509,
			["Lord Arkkoroc"] = 		{
				["She kills my children, mortal. She that calls herself the ruler of these oceans. A of equal importance. She roams the clutch... Hetaera she is called. <Lord Arkkoroc points to the southwest.> Go!"] = 3510,
				["As promised, I will reveal the name of the demon lord, Razelikh the Defiler. First, their blood.> Take the temper back to Loramus along with the name of the beast: Rakh'likh."] = 3511
			}
		},
		["Azsharite"] = 3602,
		["The Formation of Felbane"] = 3621,
		["Barbaric Battlements"] = 2751,
		["On Iron Pauldrons"] = 2752,
		["Trampled Under Foot"] = 2753,
		["Horns of Frenzy"] = 2754,
		["Joys of Omosh"] = 2755,
		["The Old Ways"] = 2756,
		["Booty Bay or Bust!"] = 2757,
		["The Mithril Order"] = 2760,
		["The Origins of Smithing"] = 2758,
		["In Search of Galvan"] = 2759,
		["Smelt On, Smelt Off"] = 2761,
		["The Great Silver Deceiver"] = 2762,
		["The Art of the Imbue"] = 2763,
		["Galvan's Finest Pupil"] = 2764,
		["Expert Blacksmith!"] = 2765,
		["Enchanted Azsharite Fel Weaponry"] = 3625,
		["Return to the Blasted Lands"] = 3626,
		["A Good Head On Your Shoulders"] = 2771,
		["The World At Your Feet"] = 2772,
		["The Mithril Kid"] = 2773,
		["Troll Temper"] = 3042,
		["Did You Lose This?"] = 3321,
		["Lines of Communication"] = 2995,
		["A Fine Mess"] = 2904,
		["The Mark of Quality"] = 	{
			["Pratt McGrubben"] = 2821,
			["Jangdor Swiftstrider"] = 2822
		},
		["Wild Leather Armor"] = 	{
			["Pratt McGrubben"] = 2847,
			["Jangdor Swiftstrider"] = 2854
		},
		["Wild Leather Shoulders"] = 	{
			["Pratt McGrubben"] = 2848,
			["Jangdor Swiftstrider"] = 2855
		},
		["Wild Leather Vest"] = 	{
			["Pratt McGrubben"] = 2849,
			["Jangdor Swiftstrider"] = 2856
		},
		["Wild Leather Helmet"] = 	{
			["Pratt McGrubben"] = 2850,
			["Jangdor Swiftstrider"] = 2857
		},
		["Wild Leather Boots"] = 	{
			["Pratt McGrubben"] = 2851,
			["Jangdor Swiftstrider"] = 2858
		},
		["Wild Leather Leggings"] = 	{
			["Pratt McGrubben"] = 2852,
			["Jangdor Swiftstrider"] = 2859
		},
		["Master of the Wild Leather"] = 	{
			["Pratt McGrubben"] = 2853,
			["Jangdor Swiftstrider"] = 2860
		},
		["Improved Quality"] = 	{
			["Pratt McGrubben"] = 7733,
			["Jangdor Swiftstrider"] = 7734
		},
		["Gnomer-gooooone!"] = 2843,
		["Dragonscale Leatherworking"] = 	{
			["Peter Galen"] = 5141,
			["Thorkaf Dragoneye"] = 5145
		},
		["Elemental Leatherworking"] = 	{
			["Sarah Tanner"] = 5144,
			["Brumn Winterhoof"] = 5146
		},
		["Tribal Leatherworking"] = 	{
			["Caryssia Moonhunter"] = 5143,
			["Se'Jib"] = 5148
		},
		["War on the Woodpaw"] = 2862,
		["Alpha Strike"] = 2863,
		["Woodpaw Investigation"] = 2902,
		["Zukk'ash Infestation"] = 7730,
		["Stinglasher"] = 7731,
		["Zukk'ash Report"] = 7732,
		["Scarab Shells"] = 2865,
		["Thistleshrub Valley"] = 3362,
		["Super Sticky"] = 4504,
		["Against Lord Shalzaru"] = 2870,
		["Delivering the Relic"] = 2871,
		["The Missing Courier"] = 	{
			["Latronicus Moonspear"] = 4124,
			["Ginro Hearthkindle"] = 4125
		},
		["The Mystery of Morrowgrain"] = 3791,
		["Psychometric Reading"] = 4130,
		["The Knife Revealed"] = 4129,
		["The Woodpaw Gnolls"] = 4131,
		["A Hero's Welcome"] = 4266,
		["Stoley's Shipment"] = 2873,
		["Deliver to MacKinley"] = 2874,
		["Southsea Shakedown"] = 8366,
		["Skulk Rock Clean-up"] = 2877,
		["Troll Necklace Bounty"] = 2880,
		["The High Wilderness"] = 2982,
		["The Sunken Temple"] = 	{
			["Angelas Moonbreeze"] = 3445,
			["Witch Doctor Uzer'i"] = 3380
		},
		["The Borrower"] = 2941,
		["Return to Troyas"] = 2943,
		["Starfall"] = 5250,
		["Moontouched Wildkin"] = 978,
		["Find Ranshalla"] = 979,
		["Favored of Elune?"] = 3661,
		["Wildkin of Elune"] = 4902,
		["Tinkmaster Overspark"] = 2923,
		["The Grand Betrayal"] = 2929,
		["Save Techbot's Brain!"] = 2922,
		["Data Rescue"] = 2930,
		["Freedom for All Creatures"] = 2969,
		["An Orphan Looking For a Home"] = 3841,
		["Doling Justice"] = 	{
			["Jer'kai Moonweaver"] = 		{
				["As she's already told you, Kindal and I will now take the fight to the meet back here after they've felt the sting of Kindal's arrows and your own weapons."] = 2970,
				["Out here in the wilderness, Kindal and I have meager means to reward your help, know that we are well and give credit to your story. We both thank you, $N."] = 2972
			}
		},
		["Gordunni Cobalt"] = 2987,
		["Nekrum's Medallion"] = 2991,
		["The Divination"] = 2992,
		["Return to the Hinterlands"] = 2993,
		["Velinde's Effects"] = 1038,
		["The Barrens Port"] = 1039,
		["A Strange Request"] = 3121,
		["Testing the Vessel"] = 3123,
		["Hippogryph Muisek"] = 3124,
		["Faerie Dragon Muisek"] = 3125,
		["Treant Muisek"] = 3126,
		["Mountain Giant Muisek"] = 3127,
		["Natural Materials"] = 3128,
		["Weapons of Spirit"] = 3129,
		["Clamlette Surprise"] = 6610,
		["The Isle of Dread!"] = 8585,
		["Dirge's Kickin' Chimaerok Chops"] = 8586,
		["Return to Narain"] = 8587,
		["At Last!"] = 3201,
		["Dwarven Justice"] = 3371,
		["Suntara Stones"] = 	{
			["Dorius Stonetender"] = 3367,
			["Singed Letter"] = 3368
		},
		["Tal the Wind Rider Master"] = 6363,
		["Xylem's Payment to Jediga"] = 3565,
		["Encoded Fragments"] = 8235,
		["The Azure Key"] = 8236,
		["Magic Dust"] = 8251,
		["The Siren's Coral"] = 8252,
		["Destroy Morphaz"] = 8253,
		["Warlord Krellian"] = 9362,
		["Fragmented Magic"] = 9364,
		["A Crew Under Fire"] = 3382,
		["Seeping Corruption"] = 	{
			["Chemist Cuely"] = 		{
				["See that tauren behind me--the one who looks like she's going to be ill at it are some empty vials I labeled. Fill each at different pools and come back."] = 3568,
				["Give this to Thersa. Perhaps it will cure her... perhaps not. We really won't know it will cure her... perhaps not. We really won't know until after she drinks it."] = 3569
			}
		},
		["Return to Tymor"] = 3461,
		["A Refugee's Quandary"] = 3361,
		["Release Them"] = 3372,
		["Rise, Obsidion!"] = 3566,
		["In Nightmares"] = 	{
			["Falla Sagewind"] = 		{
				["This shard holds great secrets; it is the pure essence of the Emerald Dream. However, Rise is who you need to find. Head to Thunder Bluff. I cannot say more."] = 3369,
				["This shard holds great secrets; it is the pure essence of the Emerald Dream. However, Cenarion Circle is who you need to find. Head to Darnassus. I cannot say more."] = 3370
			}
		},
		["Kim'jael Indeed!"] = 3601,
		["Kim'jael's 'Missing' Equipment"] = 5534,
		["Prayer to Elune"] = 	{
			["Zamael Lunthistle"] = 		{
				["Will you assist me, mortal? Hear my tale. Will you assist me, mortal? Hear my tale."] = 3377,
				["Will you assist me, mortal? Will you find the prayer to Elune? As I stated, the its inhabitants, but my prayer must be heard. Absolution is the last thing I expect."] = 3378
			}
		},
		["Shadoweaver"] = 3379,
		["The Undermarket"] = 	{
			["Nilith Lokrav"] = 		{
				["They call themselves the Undermarket: Cutthroat traders that will sell, move, trade and do just his minion Clunk. Bring back his trader's satchel when the job is done. To the Cauldron!"] = 3385,
				["I want you to personally deliver the news of Kovic's defeat to Vizzklick in Gadgetzan. to hear that Kovic is dead that I'm certain he'll give you some grand reward."] = 3402
			}
		},
		["Divine Retribution"] = 3441,
		["The Flawless Flame"] = 3442,
		["Forging the Shaft"] = 3443,
		["The Flame's Casing"] = 3452,
		["The Torch of Retribution"] = 	{
			["Kalaran Windblade"] = 		{
				["Give me a moment to combine the pieces and apply the necessary enchantments. Give me a moment to combine the pieces and apply the necessary enchantments."] = 3453,
				["The torch must now be bound to its owner. Pick up the torch, $N. The torch must now be bound to its owner. Pick up the torch, $N."] = 3454
			}
		},
		["Squire Maltrake"] = 3462,
		["Zapper Fuel"] = 4146,
		["Volcanic Activity"] = 4502,
		["Arcane Runes"] = 	{
			["Mage Tymor"] = 3449,
			["Tymor"] = 3449
		},
		["An Easy Pickup"] = 	{
			["Mage Tymor"] = 3450,
			["Tymor"] = 3450
		},
		["Set Them Ablaze!"] = 3463,
		["Scourge of the Downs"] = 3523,
		["Extinguishing the Idol"] = 	{
			["Belnistrasz"] = 3525,
			["Belnistrasz's Brazier"] = 3525
		},
		["Signal for Pickup"] = 3451,
		["Screecher Spirits"] = 3520,
		["The Prophecy of Mosh'aru"] = 3527,
		["The God Hakkar"] = 3528,
		["The Ancient Egg"] = 4787,
		["Horde Presence"] = 3514,
		["The Warsong Reports"] = 6543,
		["Iverron's Antidote"] = 	{
			["Dirania Silvershine"] = 		{
				["We may be able to help Iverron, as I know of an antidote that should may prove the most difficult. From the very spiders that poisoned Iverron, collect Webwood ichor."] = 3521,
				["The antidote is ready, $N. Please see that Iverron drinks it. There is something that you for 5 minutes. You must get it to him in time. Speed be with you, $N."] = 3522
			}
		},
		["A Good Friend"] = 4495,
		["A Friend in Need"] = 3519,
		["Stealing Knowledge"] = 3517,
		["Delivery to Magatha"] = 3518,
		["Delivery to Jes'rimon"] = 3541,
		["Delivery to Andron Gant"] = 3542,
		["Delivery to Archmage Xylem"] = 3561,
		["Jes'rimon's Payment to Jediga"] = 3563,
		["Bone-Bladed Weapons"] = 4300,
		["It's a Secret to Everybody"] = 	{
			["Linken"] = 3908,
			["A Wrecked Raft"] = 3844,
			["A Small Pack"] = 3845
		},
		["A Gnome's Assistance"] = 3941,
		["It's Dangerous to Go Alone"] = 3962,
		["Membership Card Renewal"] = 3646,
		["The Smoldering Ruins of Thaurissan"] = 	{
			["Royal Historian Archesonus"] = 		{
				["Venture to the smoldering ruins of Thaurissan in the Burning Steppes and gather as much guardians: Assassins that guard the ruins, keeping whatever secrets may still be buried there protected."] = 3701,
				["Would you like to hear a brief history of the Dark Iron dwarves? Would you like to hear a brief history of the Dark Iron dwarves?"] = 3702
			}
		},
		["Dark Iron Legacy"] = 	{
			["Franclorn Forgewright"] = 		{
				["Greetings, $N. I am Franclorn Forgewright. Yes, the Franclorn Forgewright responsible for the stonewrought method your assistance, I shall grant you the key to the depths of my accursed city."] = 3801,
				["You will find Fineous Darkvire beyond the Ring of Law, in the Hall of Crafting. an attempt to remove the hammer; both the statue and hammer will shatter, lost forever."] = 3802
			}
		},
		["The Princess Saved?"] = 4004,
		["The Princess's Surprise"] = 4363,
		["Researching the Corruption"] = 1275,
		["What Is Going On?"] = 	{
			["Commander Gor'shak"] = 		{
				["I was sent here under the auspices of Thrall. Do you actually think these buffoons stopped when he heard that news. <Gor'shak laughs.> Shhh! Do you hear that? Guards coming! DEFEND YOURSELF!"] = 3982,
				["So far, my communication with the dwarf, Kharan, in the cell across the hall, has which includes her being safely returned to Ironforge. Kharan already knows all of this... Go!"] = 4001
			}
		},
		["Kharan's Tale"] = 4342,
		["The Bearer of Bad News"] = 4361,
		["Abandoned Hope"] = 4242,
		["A Shred of Hope"] = 4282,
		["Jail Break!"] = 4322,
		["Operation: Death to Angerforge"] = 4132,
		["Eitrigg's Wisdom"] = 4941,
		["Lost Thunderbrew Recipe"] = 4134,
		["The Darkstone Tablet"] = 4768,
		["The Last Element"] = 7201,
		["Grark Lorkrub"] = 4122,
		["Operative Bijou"] = 4981,
		["Commander Gor'shak"] = 3981,
		["The Pack Mistress"] = 4724,
		["Dreadmaul Rock"] = 3821,
		["Disharmony of Flame"] = 3906,
		["Disharmony of Fire"] = 3907,
		["Aquementas"] = 4005,
		["Silver Heart"] = 4084,
		["The Corruption of the Jadefire"] = 4421,
		["Felbound Ancients"] = 4441,
		["Purified!"] = 4442,
		["Further Corruption"] = 4906,
		["Linken's Memory"] = 3942,
		["Linken's Adventure"] = 3961,
		["Crystals of Power"] = 4284,
		["The Northern Pylon"] = 4285,
		["The Eastern Pylon"] = 4287,
		["The Western Pylon"] = 4288,
		["Making Sense of It"] = 4321,
		["Larion and Muigin"] = 4145,
		["Marvon's Workshop"] = 4147,
		["Muigin and Larion"] = 4141,
		["A Visit to Gregan"] = 4142,
		["Krom'Grul"] = 3822,
		["Extinguish the Firegut"] = 3823,
		["Gor'tesh the Brute Lord"] = 3824,
		["Ogre Head On A Stick = Party"] = 3825,
		["FIFTY! YEP!"] = 4283,
		["The Good Stuff"] = 4286,
		["A Short Incubation"] = 3842,
		["The Newest Member of the Family"] = 3843,
		["Expedition Salvation"] = 3881,
		["Alien Ecology"] = 3883,
		["Roll the Bones"] = 3882,
		["Milly's Harvest"] = 3904,
		["Grape Manifest"] = 3905,
		["The Videre Elixir"] = 3909,
		["Meet at the Grave"] = 3912,
		["Strange Sources"] = 4842,
		["Threat of the Winterfall"] = 5082,
		["Falling to Corruption"] = 5084,
		["Toxic Horrors"] = 5086,
		["Winterfall Runners"] = 5087,
		["High Chief Winterfall"] = 5121,
		["Words of the High Chief"] = 5128,
		["A Grave Situation"] = 3913,
		["Nugget Slugs"] = 3922,
		["Rilli Greasygob"] = 3923,
		["Samophlange Manual"] = 3924,
		["Precarious Predicament"] = 4121,
		["Cleansing Felwood"] = 	{
			["Arathandris Silversky"] = 4101,
			["Maybess Riverbreeze"] = 4102
		},
		["The Heart of the Mountain"] = 4123,
		["Tablet of the Seven"] = 4296,
		["Ragnar Thunderbrew"] = 4128,
		["Ribbly Screwspigot"] = 4136,
		["The Reason for the Season"] = 	{
			["Furmund"] = 6964,
			["Goli Krumn"] = 7062
		},
		["Marshal Windsor"] = 4241,
		["Maxwell's Mission"] = 5081,
		["General Drakkisath's Demise"] = 5102,
		["Stormwind Rendezvous"] = 6402,
		["Overmaster Pyron"] = 4262,
		["Incendius!"] = 4263,
		["Dragonkin Menace"] = 4182,
		["Put Her Down"] = 4701,
		["Mother's Milk"] = 4866,
		["Doomrigger's Clasp"] = 4764,
		["Delivery to Ridgewell"] = 4765,
		["A Little Slime Goes a Long Way"] = 	{
			["Laris Geardawdle"] = 		{
				["But the thing I've studied most is ooze. I know it sounds odd, but they're I'll give you containers, you use them to collect a sample from the deceased creatures."] = 4512,
				["I'm going to need more samples, $N. But--and I don't know how to put this--they where? Where?! Bah! $N, take these containers just in case you find any on your own."] = 4513
			}
		},
		["Chasing A-Me 01"] = 	{
			["Karna Remtravel"] = 4243,
			["A-Me 01"] = 		{
				["A little further investigation shows a panel that slides open. Clearly written above some wiring 01 and get her back to Karna Remtravel near Marshall's Refuge. Only trying it will tell."] = 4244,
				["Checking to see if your prepared to lead A-Me 01 back to Karna Remtravel, you position. This is your last chance... are you sure this is what you want to do?"] = 4245
			}
		},
		["The Apes of Un'Goro"] = 4289,
		["The Fare of Lar'korwi"] = 4290,
		["The Scent of Lar'korwi"] = 4291,
		["The Bait for Lar'korwi"] = 4292,
		["The Mighty U'cha"] = 4301,
		["Toxic Test"] = 9051,
		["Bloodpetal Poison"] = 9052,
		["A Better Ingredient"] = 9053,
		["A Husband's Last Battle"] = 6162,
		["Food for Baby"] = 4297,
		["Becoming a Parent"] = 4298,
		["Yuka Screwspigot"] = 4324,
		["Galgar's Cactus Apple Surprise"] = 4402,
		["Well of Corruption"] = 4505,
		["Corrupted Sabers"] = 4506,
		["Lost!"] = 4492,
		["Shizzle's Flyer"] = 4503,
		["A Little Help From My Friends"] = 4491,
		["Message to Freewind Post"] = 4542,
		["The Bounty of Teldrassil"] = 6341,
		["A Sample of Slime..."] = 4293,
		["... and a Batch of Ooze"] = 4294,
		["Melding of Influences"] = 4642,
		["Your Place In The World"] = 4641,
		["The First and the Last"] = 6182,
		["Order Must Be Restored"] = 6187,
		["The Dragon's Eye"] = 6501,
		["Celebrating Good Times"] = 7496,
		["The Testament of Rexxar"] = 6568,
		["Blood of the Black Dragon Champion"] = 6602,
		["Fruit of the Sea"] = 1138,
		["The Family and the Fishing Pole"] = 1141,
		["Washed Ashore"] = 	{
			["Gwennyth Bly'Leggonde"] = 		{
				["Majestic sea creatures are known to launch themselves at the Darkshore coastline, beached there until Greymist murlocs. Could you go there and retrieve bones from the creature for our study?"] = 3524,
				["That beached creature is not an isolated incident here in Darkshore. There are more along By all means, if you should discover anything then please bring it to our attention!"] = 4681
			}
		},
		["Bijou's Belongings"] = 	{
			["Bijou"] = 		{
				["At night when this place is lightly guarded, I sneak around the city, taking notes All that information is lost. Get my belongings back and I'll return to the K.E.F. peacefully."] = 4982,
				["Ordinarily I don't deal with $rs but it seems that I'm stuck between a troll and I'll help you out with some information that could prove useful to your kind. Deal?"] = 5001
			}
		},
		["Bijou's Reconnaissance Report"] = 4983,
		["Message to Maxwell"] = 5002,
		["Kibler's Exotic Pets"] = 4729,
		["En-Ay-Es-Tee-Why"] = 4862,
		["Broodling Essence"] = 4726,
		["Egg Freezing"] = 4734,
		["Egg Collection"] = 4735,
		["Felnok Steelspring"] = 4808,
		["Leonid Barthalomew"] = 5522,
		["Seal of Ascension"] = 	{
			["Vaelan"] = 		{
				["As you can see, the unadorned seal has three empty sockets. Each of those sockets at any given time is rare. You must be vigilant in your quest. Remain determined!"] = 4742,
				["Few of the black dragonkin, outside of those in the upper citadel, have the ability scant seconds to control his mind and fan the flames that will forge the seal."] = 4743
			}
		},
		["Guardians of the Altar"] = 4901,
		["Enraged Wildkin"] = 	{
			["Jaron Stoneshaper"] = 4861,
			["Harlo Wigglesworth"] = 6604,
			["Damaged Crate"] = 4863,
			["Jaron's Wagon"] = 4864
		},
		["Troubled Spirits of Kel'Theril"] = 5245,
		["Finding the Source"] = 974,
		["The New Springs"] = 980,
		["Ursius of the Shardtooth"] = 	{
			["Storm Shadowhoof"] = 		{
				["In the snowy mountains of Winterspring, a skilled hunter stalks his prey... I speak of quickly found themselves to be the prey, and he, the hunter. Stay on your guard."] = 5054,
				["In the snowy mountains of Winterspring, to the northwest, a skilled hunter stalks his prey... quickly found themselves to be the prey, and he, the hunter. Stay on your guard."] = 5054
			}
		},
		["Brumeran of the Chillwind"] = 5055,
		["Shy-Rotam"] = 5056,
		["Past Endeavors"] = 5057,
		["Are We There, Yeti?"] = 	{
			["Umi Rumplesnicker"] = 		{
				["Now that I have what I need to cover the mechanical moving parts, I only I only want the best looking ones -- no beat up or broken horns, please!"] = 977,
				["My friends are always coming up with great ideas. I've never felt like I could ice thistle yeti to start with. Will you help? You'll find them to the southeast."] = 3783,
				["It's all ready, $N! Now, I sent some mail to my friends already, telling them that come back and tell me what happened! Please bring my yeti back to me then, too."] = 5163
			}
		},
		["Wild Guardians"] = 	{
			["Trull Failbane"] = 		{
				["Winterspring lies just beyond Timbermaw, northeast of Felwood. Have you been there? I have heard that found in the center of Winterspring. Clear them out, and gain access to the land."] = 4521,
				["Runners have returned from Winterspring with reports that there is a series of small caves to have gone mad from exposure to the very thing that they strive to protect."] = 4721,
				["In the northern areas of Winterspring, the Wildkin grow even more ferocious. We must continue to handle the challenge. Return to me after you have slain 13 of the wildkin."] = 4741
			}
		},
		["Guarding Secrets"] = 	{
			["Trull Failbane"] = 4883,
			["Blue-feathered Necklace"] = 4882
		},
		["Luck Be With You"] = 969,
		["Cache of Mau'ari"] = 975,
		["Wind Rider"] = 4767,
		["Homeward Bound"] = 4770,
		["Sacred Fire"] = 5062,
		["The Everlook Report"] = 	{
			["Gregor Greystone"] = 		{
				["I am looking for a responsible individual to aid me in a small but nonetheless perfect means to introduce yourself to my superior and perhaps earn some work from her!"] = 6028,
				["I'm looking for a responsible individual to aid me in a small but nonetheless important perfect means to introduce yourself to my superior and perhaps earn some work from him!"] = 6029
			}
		},
		["Duke Nicholas Zverenhoff"] = 6030,
		["The Final Tablets"] = 4788,
		["The Lost Tablets of Mosh'aru"] = 5065,
		["Confront Yeh'kinya"] = 8181,
		["The Hand of Rastakhan"] = 8182,
		["Chillwind Horns"] = 4809,
		["Return to Tinkee"] = 4810,
		["Tinkee Steamboil"] = 4907,
		["Pacify the Centaur"] = 4841,
		["Grimtotem Spying"] = 5064,
		["Family Tree"] = 5361,
		["Alien Egg"] = 4821,
		["Serpent Wild"] = 4865,
		["A Bundle of Trouble"] = 5545,
		["Frostsaber Provisions"] = 4970,
		["Winterfall Intrusion"] = 5201,
		["Rampaging Giants"] = 5981,
		["Protect Kanati Greycloud"] = 4966,
		["Free at Last"] = 4904,
		["Doom Weed"] = 5482,
		["A Matter of Time"] = 4971,
		["Counting Out Time"] = 	{
			["Chromie"] = 		{
				["I need you to reach into the world beyond this room, $N. Allow me to them in lockboxes found in the ruined buildings that make up this once proud city."] = 4972,
				["If you are willing to help once more, I can certainly use your assistance. I'll you another item that, in the future, I suspect you'll find quite the use for."] = 4973
			}
		},
		["The Annals of Darrowshire"] = 5154,
		["Brother Carlin"] = 5210,
		["The Battle of Darrowshire"] = 5721,
		["The Wildlife Suffers Too"] = 	{
			["Mulgris Deepriver"] = 		{
				["While there was little I could do alone to thwart the Scourge, I nevertheless came put them down. Please $N, end their misery - doing so will surely soothe mine."] = 4984,
				["To the east of where we are, near where the Eastern Plaguelands begin, once proud for their suffering is a swift death, one that must be ministered by your hand."] = 4985
			}
		},
		["Glyphed Oaken Branch"] = 4986,
		["Finkle Einhorn, At Your Service!"] = 5047,
		["Better Late Than Never"] = 	{
			["Janice Felstone"] = 5021,
			["Janice's Parcel"] = 		{
				["You pick up the package, wiping off a small layer of dust and grime that populace of the city. This is handled through the Royal Factors of the Stormwind Census."] = 5022,
				["You pick up the package, wiping off a small layer of dust and grime that populace of the city. This is handled through the Royal Overseers of the Undercity Census."] = 5023
			}
		},
		["Two Halves Become One"] = 5051,
		["The Jeremiah Blues"] = 5049,
		["Good Natured Emma"] = 5048,
		["Alas, Andorhal"] = 	{
			["High Executor Derrington"] = 		{
				["Alas, the time to attack Andorhal and drive out the lich that controls it is the city. Destroy the lich, $N, and bring me a shard from its phylactery as proof!"] = 105,
				["Alas, the time to attack Andorhal and drive out the lich that controls it is facing him successfully. Destroy Araj, $N, and bring me a shard from his phylactery as proof!"] = 105
			},
			["Commander Ashlam Valorfist"] = 		{
				["Alas, the time to attack Andorhal and drive out the lich that controls it is the city. Destroy the lich, $N, and bring me a shard from its phylactery as proof!"] = 211,
				["Alas, the time to attack Andorhal and drive out the lich that controls it is facing him successfully. Destroy Araj, $N, and bring me a shard from his phylactery as proof!"] = 211
			}
		},
		["Scholomance"] = 	{
			["High Executor Derrington"] = 838,
			["Commander Ashlam Valorfist"] = 5533
		},
		["Scarlet Diversions"] = 5096,
		["All Along the Watchtowers"] = 	{
			["High Executor Derrington"] = 5098,
			["Commander Ashlam Valorfist"] = 5097
		},
		["The Scourge Cauldrons"] = 	{
			["High Executor Derrington"] = 5228,
			["Commander Ashlam Valorfist"] = 5215
		},
		["Clear the Way"] = 5092,
		["Dispelling Evil"] = 8414,
		["Forging the Mightstone"] = 8418,
		["Mantles of the Dawn"] = 	{
			["Argent Quartermaster Hasana"] = 5504,
			["Argent Quartermaster Lightspark"] = 5507,
			["Quartermaster Miranda Breechlock"] = 5513
		},
		["Chromatic Mantle of the Dawn"] = 	{
			["Argent Quartermaster Hasana"] = 5524,
			["Argent Quartermaster Lightspark"] = 5521,
			["Quartermaster Miranda Breechlock"] = 5517
		},
		["Camp Mojache"] = 	{
			["Harbinger Balthazad"] = 7492,
			["Warcaller Gorlach"] = 7492,
			["Bluff Runner Windstrider"] = 7492
		},
		["Verifying the Corruption"] = 5156,
		["Forces of Jaedenar"] = 5155,
		["Collection of the Corrupt Water"] = 5157,
		["Seeking Spiritual Aid"] = 5158,
		["Dousing the Flames of Protection"] = 5165,
		["A Final Blow"] = 5242,
		["To Winterspring!"] = 5249,
		["Little Pamela"] = 5142,
		["A Strange Historian"] = 5153,
		["Hypercapacitor Gizmo"] = 5151,
		["Rescue From Jaedenar"] = 5203,
		["Retribution of the Light"] = 5204,
		["The Remains of Trey Lightforge"] = 5385,
		["Barov Family Fortune"] = 	{
			["Alexi Barov"] = 5341,
			["Weldon Barov"] = 5343
		},
		["The Last Barov"] = 	{
			["Alexi Barov"] = 5342,
			["Weldon Barov"] = 5344
		},
		["The Great Fras Siabi"] = 5214,
		["That's Asking A Lot"] = 6026,
		["When Smokey Sings, I Get Violent"] = 6041,
		["The Argent Hold"] = 5265,
		["Dawn's Gambit"] = 4771,
		["The Flesh Does Not Lie"] = 5212,
		["The Active Agent"] = 5213,
		["Plagued Hatchlings"] = 5529,
		["Houses of the Holy"] = 5243,
		["Menethil's Gift"] = 	{
			["Leonid Barthalomew the Revered"] = 5463,
			["Menethil's Gift"] = 5464
		},
		["Soulbound Keepsake"] = 5465,
		["Betina Bigglezink"] = 5531,
		["The Restless Souls"] = 	{
			["Caretaker Alen"] = 5281,
			["Egan"] = 5282
		},
		["Zaeldarr the Outcast"] = 6021,
		["The Archivist"] = 5251,
		["Above and Beyond"] = 5263,
		["Lord Maxwell Tyrosus"] = 5264,
		["Target: Felstone Field"] = 	{
			["High Priestess MacDonnell"] = 5216,
			["Shadow Priestess Vandis"] = 5229
		},
		["Target: Dalson's Tears"] = 	{
			["High Priestess MacDonnell"] = 5219,
			["Shadow Priestess Vandis"] = 5231
		},
		["Target: Writhing Haunt"] = 	{
			["High Priestess MacDonnell"] = 5222,
			["Shadow Priestess Vandis"] = 5233
		},
		["Target: Gahrron's Withering"] = 	{
			["High Priestess MacDonnell"] = 5225,
			["Shadow Priestess Vandis"] = 5235
		},
		["Skeletal Fragments"] = 	{
			["Alchemist Arbington"] = 5537,
			["Apothecary Dithers"] = 964
		},
		["Mold Rhymes With..."] = 	{
			["Alchemist Arbington"] = 5538,
			["Apothecary Dithers"] = 5514
		},
		["Araj's Scarab"] = 	{
			["Alchemist Arbington"] = 		{
				["Araj the Summoner lords over Andorhal from an obfuscated vantage. We know that he was city, drawing him into the open. Once destroyed, seize his scarab from his fallen phylactery!"] = 5803,
				["Araj the Summoner lords over Andorhal from the ruined city's heart. We know that he open. Once destroyed, seize his scarab from his fallen phylactery! The Key to Scholomance awaits, $N!"] = 5803
			},
			["Apothecary Dithers"] = 		{
				["Araj the Summoner lords over Andorhal from an obfuscated vantage. We know that he was city, drawing him into the open. Once destroyed, seize his scarab from his fallen phylactery!"] = 5804,
				["Araj the Summoner lords over Andorhal from the ruined city's heart. We know that he open. Once destroyed, seize his scarab from his fallen phylactery! The Key to Scholomance awaits, $N!"] = 5804
			}
		},
		["Heroes of Darrowshire"] = 5168,
		["Villains of Darrowshire"] = 5181,
		["Marauders of Darrowshire"] = 5206,
		["Defenders of Darrowshire"] = 5211,
		["Return to Chromie"] = 5941,
		["The Ruins of Kel'Theril"] = 5244,
		["The Crystal of Zin-Malor"] = 5253,
		["The Way of the Weaponsmith"] = 	{
			["Ironus Coldsteel"] = 5284,
			["Borgosh Corebender"] = 5302
		},
		["Sweet Serenity"] = 5305,
		["Snakestone of the Shadow Huntress"] = 5306,
		["Corruption"] = 5307,
		["Doctor Theolen Krastinov, the Butcher"] = 5382,
		["Kirtonos the Herald"] = 5384,
		["Krastinov's Bag of Horrors"] = 5515,
		["The Sleeper Has Awakened"] = 5321,
		["Catch of the Day"] = 5386,
		["The Human, Ras Frostwhisper"] = 5461,
		["The Dying, Ras Frostwhisper"] = 5462,
		["The Lich, Ras Frostwhisper"] = 5466,
		["Lazy Peons"] = 5441,
		["Thazz'ril's Pick"] = 6394,
		["Arcane Feedback"] = 	{
			["Priestess Alathea"] = 5678,
			["High Priest Rohan"] = 5677
		},
		["To Show Due Judgment"] = 7639,
		["Bone Collector"] = 5501,
		["Superior Armaments of Battle - Friend of the Dawn"] = 9221,
		["Epic Armaments of Battle - Friend of the Dawn"] = 9222,
		["Superior Armaments of Battle - Honored Amongst the Dawn"] = 9223,
		["Epic Armaments of Battle - Honored Amongst the Dawn"] = 9224,
		["Epic Armaments of Battle - Revered Amongst the Dawn"] = 9225,
		["Superior Armaments of Battle - Revered Amongst the Dawn"] = 9226,
		["Superior Armaments of Battle - Exalted Amongst the Dawn"] = 9227,
		["Epic Armaments of Battle - Exalted Amongst the Dawn"] = 9228,
		["Spiritual Unrest"] = 5535,
		["A Land Filled with Hatred"] = 5536,
		["Kodo Roundup"] = 5561,
		["Unfinished Business"] = 	{
			["Kirsta Deepshadow"] = 		{
				["I was sent as a scout to do some damage and gauge the strength of If you prove strong enough, maybe I could get your help with my main goal."] = 6004,
				["My real mission was to weaken the Scarlet Crusade's outlying forces and then infiltrate Hearthglen them, and we're making progress. They should be along Hearthglen Pass outside the town proper."] = 6023,
				["What? Really? You want to know more? But you've already done so much for me, there you can gauge their numbers and report them back to me. But be careful...."] = 6025
			}
		},
		["Hand of Iruxos"] = 5381,
		["Portals of the Legion"] = 5581,
		["Bodyguard for Hire "] = 5821,
		["Gizelton Caravan"] = 5943,
		["Sister Pamela"] = 5601,
		["One Shot.  One Kill."] = 5713,
		["Vyletongue Corruption"] = 	{
			["Talendria"] = 7041,
			["Vark Battlescar"] = 7029
		},
		["Trouble in Winterspring!"] = 6603,
		["A Strange One"] = 6605,
		["A Little Luck"] = 	{
			["Harlo Wigglesworth"] = 		{
				["We can always use a little luck, eh? A small advantage is all it takes one of your own? See Witch Doctor Mau'ari in Orgrimmar. I'm not giving mine up!"] = 6606,
				["We can always use a little luck, eh? A small advantage is all it takes one of your own? Find Witch Doctor Mau'ari in Everlook. I'm not giving mine up!"] = 6606
			}
		},
		["The Dunemaul Compound"] = 5863,
		["Trial of the Sea Lion"] = 30,
		["Wasteland"] = 1124,
		["Shards of the Felvine"] = 5526,
		["A Reliquary of Purity"] = 5527,
		["Trial of the Lake"] = 28,
		["Aquatic Form"] = 31,
		["Great Bear Spirit"] = 5929,
		["Back to Darnassus"] = 5931,
		["Back to Thunder Bluff"] = 5932,
		["The Principal Source"] = 	{
			["Dendrite Starblaze"] = 		{
				["The Cliffspring Falls in Darkshore serves as the principal source of drinking water for the one that requested our aid, and you will work with her to address this malady."] = 6122,
				["Dreadmist Peak to the northwest of the Crossroads is most likely a primary candidate as one that requested our aid, and you will work with him to address this malady."] = 6127
			}
		},
		["Power over Poison"] = 6125,
		["Stewvul, Ex-B.F.F."] = 8577,
		["Never Ask Me About My Business"] = 8584,
		["Draconic for Dummies"] = 8597,
		["Decoy!"] = 8606,
		["The Only Prescription"] = 8620,
		["The Good News and The Bad News"] = 8728,
		["The Wrath of Neptulon"] = 8729,
		["Warsong Supplies"] = 6571,
		["Searching for the Lost Satchel"] = 5722,
		["Testing an Enemy's Strength"] = 5723,
		["Returning the Lost Satchel"] = 5724,
		["Protect Kaya"] = 6523,
		["Kaya's Alive"] = 6401,
		["Avenge My Village"] = 6548,
		["Kill Grundig Darkcloud"] = 6629,
		["Calling in the Reserves"] = 5881,
		["Harpies Threaten"] = 6282,
		["Bloodfury Bloodline"] = 6283,
		["Boulderslide Ravine"] = 	{
			["Mor'rogal"] = 		{
				["Something is amiss here in Stonetalon. Can you feel the tension in the air, $N? South of that cave. Go young $c, it's imperative I know what evil lurks under these mountains."] = 6421,
				["Something is amiss here in Stonetalon. Can you feel the tension in the air, $N? Southeast of that cave. Go young $c, it's imperative I know what evil lurks under these mountains."] = 6421
			}
		},
		["Earthen Arise"] = 6481,
		["Sceptre of Light"] = 5741,
		["Book of the Ancients"] = 6027,
		["Cycle of Rebirth"] = 6301,
		["New Life"] = 6381,
		["Scarlet Subterfuge"] = 5862,
		["Oculus Illusions"] = 6569,
		["Emberstrife"] = 6570,
		["Hunting in Stranglethorn"] = 5763,
		["To Kill With Purpose"] = 6022,
		["Un-Life's Little Annoyances"] = 6042,
		["The Ranger Lord's Behest"] = 6133,
		["Duskwing, Oh How I Hate Thee..."] = 6135,
		["The Corpulent One"] = 6136,
		["The Call to Command"] = 6144,
		["Nathanos' Ruse"] = 6146,
		["The Scarlet Oracle, Demetria"] = 6148,
		["Ramstein"] = 6163,
		["Return to Nathanos"] = 6147,
		["Uncovering Past Secrets"] = 6845,
		["Clam Bait"] = 6142,
		["Irondeep Supplies"] = 	{
			["Stormpike Quartermaster"] = 5892,
			["Frostwolf Quartermaster"] = 6985
		},
		["Coldtooth Supplies"] = 	{
			["Stormpike Quartermaster"] = 6982,
			["Frostwolf Quartermaster"] = 5893
		},
		["Get Me Out of Here!"] = 6132,
		["Brother Anton"] = 6141,
		["Other Fish to Fry "] = 6143,
		["Augustus' Receipt Book"] = 6164,
		["The Eastern Plagues"] = 6185,
		["The Blightcaller Cometh"] = 6186,
		["The Great Masquerade"] = 6403,
		["Vorsha the Lasher"] = 6641,
		["The Lost Pages"] = 6504,
		["Naga at the Zoram Strand"] = 6442,
		["Troll Charm"] = 6462,
		["Satyr Horns"] = 6441,
		["The Essence of Aku'Mai"] = 6563,
		["Allegiance to the Old Gods"] = 	{
			["Je'neu Sancrea"] = 6565,
			["Damp Note"] = 6564
		},
		["Amongst the Ruins"] = 6921,
		["Stonetalon Standstill"] = 25,
		["Je'neu of the Earthen Ring"] = 824,
		["Scalding Mornbrew Delivery"] = 3364,
		["Between a Rock and a Thistlefur"] = 216,
		["King of the Foulweald"] = 6621,
		["Blood Feeders"] = 6461,
		["Freedom to Ruul"] = 6482,
		["Torek's Assault"] = 6544,
		["A Host of Evil"] = 6626,
		["Ashenvale Outrunners"] = 6503,
		["Nat Pagle, Angler Extreme"] = 6607,
		["Triage"] = 	{
			["Doctor Gregory Victor"] = 6622,
			["Doctor Gustaf VanHowzen"] = 6624
		},
		["Deeprun Rat Roundup"] = 	{
			["Monty"] = 6661,
			["Squirrel Token"] = 6661
		},
		["Me Brother, Nipsy"] = 	{
			["Monty"] = 6662,
			["Squirrel Token"] = 6662
		},
		["Master Ryson's All Seeing Eye"] = 6847,
		["Fallen Sky Lords"] = 	{
			["Commander Mulfort"] = 7302,
			["Commander Duffy"] = 7301
		},
		["Brotherly Love"] = 	{
			["Commander Louis Philips"] = 7281,
			["Commander Karl Philips"] = 7282
		},
		["The Human Condition"] = 7363,
		["Enemy Booty"] = 7224,
		["The Spirits of Southwind"] = 1125,
		["Hive in the Tower"] = 1126,
		["Umber, Archivist"] = 6844,
		["Armor Scraps"] = 7223,
		["The Archbishop's Mercy"] = 7366,
		["Zinfizzlex's Portable Shredder Unit"] = 	{
			["Master Engineer Zinfizzlex"] = 		{
				["I'm as anxious as you are to try out my portable shredder unit, $r, but here (before my capture) I noticed a pile of steamsaws at the Stormpike lumber camp."] = 6861,
				["I'm as anxious as you are to try out my portable shredder unit, $r, but here (before my capture) I noticed a pile of steamsaws at the Frostwolf lumber camp."] = 6862
			}
		},
		["Material Assistance"] = 7667,
		["The Darkreaver Menace"] = 	{
			["Sagorne Creststrider"] = 		{
				["Death Knight Darkreaver lords over the Great Ossuary in the Scholomance. He threatens to twist me his head! Only his demise will reverse the damage dome to the spirit realm!"] = 7668,
				["Death Knight Darkreaver lords over the Great Ossuary in the Scholomance. He threatens to twist me his head! Only his demise will reverse the damage done to the spirit realm!"] = 8258
			}
		},
		["Great-father Winter is Here!"] = 	{
			["Kaymard Copperpinch"] = 6961,
			["Nardstrum Copperpinch"] = 7024,
			["Whulwert Copperpinch"] = 7021
		},
		["Stolen Winter Veil Treats"] = 	{
			["Kaymard Copperpinch"] = 		{
				["Listen... not to shatter the magic of the season here, but Smokywood Pastures could use our man went to look for it. See if both are out there, safe and sound!"] = 6963,
				["Listen... not to shatter the magic of the season here, but Smokywood Pastures could use man went to look for it. See if both are out there, safe and sound!"] = 79483
			},
			["Wulmort Jinglepocket"] = 		{
				["Listen... not to shatter the magic of the season here, but Smokywood Pastures could use our man went to look for it. See if both are out there, safe and sound!"] = 7042,
				["Listen... not to shatter the magic of the season here, but Smokywood Pastures could use man went to look for it. See if both are out there, safe and sound!"] = 79482
			}
		},
		["A Smokywood Pastures' Thank You!"] = 	{
			["Kaymard Copperpinch"] = 6984,
			["Wulmort Jinglepocket"] = 7045
		},
		["Metzen the Reindeer"] = 	{
			["Kaymard Copperpinch"] = 		{
				["DISASTER has struck! Metzen the Reindeer has been kidnapped! Metzen is one of Great-father Winter's eight reindeer dust on him - it will free him from any of his bonds! Please, hurry!"] = 8746,
				["DISASTER has struck! Metzen the Reindeer has been kidnapped! Metzen is one of Great-father Winter's dust on him - it will free him from any of his bonds! Please, hurry!"] = 79495
			},
			["Wulmort Jinglepocket"] = 		{
				["DISASTER has struck! Metzen the Reindeer has been kidnapped! Metzen is one of Greatfather Winter's eight reindeer dust on him - it will free him from any of his bonds! Please, hurry!"] = 8762,
				["DISASTER has struck! Metzen the Reindeer has been kidnapped! Metzen is one of Greatfather Winter's dust on him - it will free him from any of his bonds! Please, hurry!"] = 79492
			}
		},
		["The Hero of the Day"] = 	{
			["Kaymard Copperpinch"] = 8799,
			["Wulmort Jinglepocket"] = 8763
		},
		["Greatfather Winter is Here!"] = 	{
			["Wulmort Jinglepocket"] = 7022,
			["Khole Jinglepocket"] = 7023
		},
		["Treats for Greatfather Winter"] = 7025,
		["Treats for Great-father Winter"] = 6962,
		["Defusing the Threat"] = 	{
			["Frostwolf Explosives Expert"] = 7368,
			["Stormpike Explosives Expert"] = 7367
		},
		["Empty Stables"] = 	{
			["Frostwolf Stable Master"] = 7001,
			["Stormpike Stable Master"] = 7027
		},
		["The Graveyards of Alterac"] = 7082,
		["Towers and Bunkers"] = 	{
			["Corporal Teeka Bloodsnarl"] = 7101,
			["Sergeant Durgen Stormpike"] = 7102
		},
		["Capture a Mine"] = 	{
			["Corporal Teeka Bloodsnarl"] = 7124,
			["Sergeant Durgen Stormpike"] = 7122
		},
		["Alterac Valley Graveyards"] = 7081,
		["The Quartermaster"] = 7121,
		["Speak with our Quartermaster"] = 7123,
		["The Battle of Alterac"] = 7141,
		["The Battle for Alterac"] = 7142,
		["Proving Grounds"] = 	{
			["Warmaster Laggrond"] = 7161,
			["Lieutenant Haggerdin"] = 7162
		},
		["The Legend of Korrak"] = 7181,
		["The Return of Korrak"] = 7381,
		["Korrak the Bloodrager"] = 7202,
		["Korrak the Everliving"] = 7382,
		["In Defense of Frostwolf"] = 7241,
		["The Sovereign Imperative"] = 7261,
		["Favor Amongst the Darkspear"] = 7361,
		["Ally of the Tauren"] = 7362,
		["Gnomeregan Bounty"] = 7364,
		["The Gordok Ogre Suit"] = 5518,
		["Thunderaan the Windseeker"] = 7786,
		["Pusillin and the Elder Azj'Tordin"] = 7441,
		["The Madness Within"] = 7461,
		["The Treasure of the Shen'dralar"] = 7877,
		["Arcane Refreshment"] = 7463,
		["Libram of Rapidity"] = 7478,
		["Libram of Focus"] = 7479,
		["Libram of Protection"] = 7480,
		["The Forging of Quel'Serrar"] = 	{
			["Lorekeeper Lydros"] = 7509,
			["A Dull and Flat Elven Blade"] = 7508
		},
		["Elven Legends"] = 	{
			["Sage Korolusk"] = 7481,
			["Scholar Runethorn"] = 7482
		},
		["Rage of Blood"] = 7563,
		["Wildeyes"] = 7564,
		["Bell of Dethmoora"] = 7626,
		["Wheel of the Black March"] = 7627,
		["Doomsday Candle"] = 7628,
		["Dreadsteed of Xoroth"] = 7631,
		["Lord Banehollow"] = 7623,
		["Imp Delivery"] = 7629,
		["Arcanite"] = 7630,
		["The Prison's Bindings"] = 7581,
		["The Prison's Casing"] = 7582,
		["Suppression"] = 7583,
		["What Niby Commands"] = 7601,
		["The Balance of Light and Shadow"] = 7622,
		["What the Flux?"] = 7722,
		["Curse These Fat Fingers"] = 7723,
		["Fiery Menace!"] = 7724,
		["Incendosaurs? Whateverosaur is More Like It"] = 7727,
		["Zapped Giants"] = 7003,
		["Fuel for the Zapping"] = 7721,
		["Again With the Zapped Giants"] = 7725,
		["Refuel for the Zapping"] = 7726,
		["A Donation of Runecloth"] = 	{
			["Clavicus Knavingham"] = 7795,
			["Mistina Steelshield"] = 7805,
			["Bubulo Acerbus"] = 7811,
			["Raedon Duskstriker"] = 7800,
			["Rashona Straglash"] = 7824,
			["Vehena"] = 7836,
			["Rumstag Proudstrider"] = 7823,
			["Ralston Farnsley"] = 7818
		},
		["Vanquish the Invaders!"] = 	{
			["Sentinel Farsong"] = 		{
				["Beyond this tunnel you will find a field of strife and turmoil, young $c. The a talisman of merit. Bring me such a talisman, $N, and I shall reward you."] = 7788,
				["Beyond this tunnel you will find a field of strife and turmoil, young $c. The earn a Mark of Honor. Bring it to me, $N, and I shall reward you."] = 7788
			}
		},
		["Talismans of Merit"] = 7886,
		["Ribbons of Sacrifice"] = 	{
			["Sentinel Farsong"] = 8269,
			["Captain Shatterskull"] = 8267
		},
		["Kidnapped Elder Torntusk!"] = 7845,
		["Dark Vessels"] = 7850,
		["Vilebranch Hooligans"] = 7839,
		["Message to the Wildhammer"] = 7841,
		["Another Message to the Wildhammer"] = 7842,
		["The Final Message to the Wildhammer"] = 7843,
		["Cannibalistic Cousins"] = 7844,
		["Snapjaws, Mon!"] = 7815,
		["Gammerita, Mon!"] = 7816,
		["Stalking the Stalkers"] = 7828,
		["Hunt the Savages"] = 7829,
		["Avenging the Fallen"] = 7830,
		["Separation Anxiety"] = 7849,
		["Recover the Key!"] = 7846,
		["Return to Primal Torntusk"] = 7847,
		["Quell the Silverwing Usurpers"] = 	{
			["Captain Shatterskull"] = 		{
				["The wilds of the Ashenvale forest will succumb to the might of the Horde, $r. of honor. Return to me with such a mark, $N, and you will be rewarded. "] = 7789,
				["The wilds of the Ashenvale forest will succumb to the might of the Horde, $r. of Honor. Return to me with such a Mark, $N, and you will be rewarded."] = 7789,
				["The wilds of the Ashenvale forest will succumb to the might of the Horde, $r. of honor. Return to me with such a mark, $N, and you will be rewarded."] = 8294
			}
		},
		["Mark of Honor"] = 7922,
		["The Darkmoon Faire"] = 	{
			["Melnan Darkstone"] = 7905,
			["Kruban Darkblade"] = 7926
		},
		["Paragons of Power: The Demoniac's Wraps"] = 8059,
		["Paragons of Power: The Illusionist's Wraps"] = 8060,
		["Paragons of Power: The Confessor's Wraps"] = 8061,
		["Paragons of Power: The Illusionist's Mantle"] = 8068,
		["Paragons of Power: The Illusionist's Robes"] = 8069,
		["Paragons of Power: The Confessor's Bindings"] = 8070,
		["Paragons of Power: The Confessor's Mantle"] = 8071,
		["Paragons of Power: The Demoniac's Mantle"] = 8076,
		["Paragons of Power: The Demoniac's Robes"] = 8077,
		["Paragons of Power: The Augur's Bracers"] = 8056,
		["Paragons of Power: The Haruspex's Bracers"] = 8057,
		["Paragons of Power: The Haruspex's Belt"] = 8064,
		["Paragons of Power: The Haruspex's Tunic"] = 8065,
		["Paragons of Power: The Augur's Belt"] = 8074,
		["Paragons of Power: The Augur's Hauberk"] = 8075,
		["Paragons of Power: The Predator's Bracers"] = 8062,
		["Paragons of Power: The Madcap's Bracers"] = 8063,
		["Paragons of Power: The Predator's Belt"] = 8066,
		["Paragons of Power: The Predator's Mantle"] = 8067,
		["Paragons of Power: The Madcap's Mantle"] = 8072,
		["Paragons of Power: The Madcap's Tunic"] = 8073,
		["A Collection of Heads"] = 	{
			["Exzhal"] = 		{
				["It is true. Hakkar now dwells in Zul'Gurub, bathing in the power of our gods. the head of their leader, Jin'do the Hexxer. When you have done this, return to me."] = 8201,
				["It is true. Hakkar now dwells in Zul'Gurub, bathing in the power of our gods. high priests responsible for channeling our gods' energy. When you have done this, return to me."] = 8201
			}
		},
		["The Battle for Arathi Basin!"] = 	{
			["Field Marshal Oslight"] = 8105,
			["Deathmaster Dwire"] = 8120
		},
		["Control Four Bases"] = 8114,
		["Control Five Bases"] = 8115,
		["Arathi Basin Resources!"] = 8080,
		["Arathi Basin Mark of Honor!"] = 8080,
		["More Resource Crates"] = 	{
			["Sergeant Maclear"] = 8081,
			["Deathstalker Mortis"] = 8124
		},
		["Honoring a Hero"] = 	{
			["Wagner Hammerstrike"] = 8149,
			["Javnir Nashak"] = 8150
		},
		["Take Four Bases"] = 8121,
		["Take Five Bases"] = 8122,
		["Cut Arathor Supply Lines"] = 	{
			["Deathstalker Mortis"] = 		{
				["The League of Arathor is sparing no expense in their move to retake Arathi. They, base you can, win the battle, and return to me with the resources you gain."] = 8123,
				["The League of Arathor is sparing no expense in their move to retake Arathi. They, can, win the battle, and return to me with the Mark of Honor you gain."] = 8123
			}
		},
		["The Savage Guard - Arcanum of Protection"] = 9208,
		["The Savage Guard - Arcanum of Rapidity"] = 9209,
		["The Savage Guard - Arcanum of Focus"] = 9210,
		["A Bijou for Zanza"] = 8240,
		["Pirate Hats Ahoy!"] = 8365,
		["Glyph Chasing"] = 8309,
		["Unraveling the Mystery"] = 8314,
		["Breaking the Code"] = 8310,
		["Desert Recipe"] = 8307,
		["Kitchen Assistance"] = 8317,
		["Volunteer's Battlegear"] = 8548,
		["Veteran's Battlegear"] = 8572,
		["Champion's Battlegear"] = 8573,
		["Stalwart's Battlegear"] = 8574,
		["What Tomorrow Brings"] = 8286,
		["Only One May Rise"] = 8288,
		["The Path of the Righteous"] = 8301,
		["The Hand of the Righteous"] = 8302,
		["Anachronos"] = 8303,
		["Dearest Natalia"] = 8304,
		["Into The Maw of Madness"] = 8306,
		["The Twilight Mystery"] = 8284,
		["The Deserter"] = 8285,
		["The Calling"] = 8315,
		["Taking Back Silithus"] = 	{
			["Cenarion Emissary Jademoon"] = 8275,
			["Cenarion Emissary Blackhoof"] = 8276
		},
		["Deadly Desert Venom"] = 8277,
		["Noggle's Last Hope"] = 8278,
		["Noggle's Lost Satchel"] = 8282,
		["Securing the Supply Lines"] = 8280,
		["Stepping Up Security"] = 8281,
		["The Twilight Lexicon"] = 8279,
		["A Terrible Purpose"] = 8287,
		["True Believers"] = 8323,
		["Stinking Up Southshore"] = 1657,
		["Rotten Eggs"] = 8322,
		["Crashing the Wickerman Festival"] = 1658,
		["The Power of Pine"] = 8373,
		["Twilight Geolords"] = 8320,
		["Vyral the Vile"] = 8321,
		["Aurel Goldleaf"] = 8331,
		["Goldleaf's Discovery"] = 8343,
		["Dukes of the Council"] = 8332,
		["Lords of the Council"] = 8341,
		["Bor Wildmane"] = 8349,
		["Bor Wishes to Speak"] = 8351,
		["A Humble Offering"] = 9248,
		["Secret Communication"] = 8318,
		["Signet of the Dukes"] = 8348,
		["Scepter of the Council"] = 8352,
		["Abyssal Contacts"] = 8361,
		["For Great Honor"] = 8367,
		["Battle of Warsong Gulch"] = 8368,
		["Invaders of Alterac Valley"] = 8369,
		["Conquering Arathi Basin"] = 8370,
		["Concerted Efforts"] = 8371,
		["Fight for Warsong Gulch"] = 	{
			["Alliance Brigadier General"] = 		{
				["The Silverwing Sentinels are at war with the Warsong Outriders due to the destruction the annexed to the Barrens. Do your part in fighting the Warsong Outriders, $N! For the Alliance!"] = 8372,
				["The Silverwing Sentinels are at war with the Warsong Outriders due to the destruction the annexed to the Barrens. Do your part in fighting the Warsong Outriders! For the Alliance!"] = 8401
			}
		},
		["Claiming Arathi Basin"] = 8374,
		["Remember Alterac Valley!"] = 8375,
		["Eranikus, Tyrant of the Dream"] = 8733,
		["Imperial Qiraji Regalia"] = 8790,
		["The Savior of Kalimdor"] = 8802,
		["Imperial Qiraji Armaments"] = 8789,
		["Conqueror's Spaulders"] = 8544,
		["Conqueror's Crown"] = 8561,
		["Tiara of the Oracle"] = 8592,
		["Mantle of the Oracle"] = 8594,
		["Stormcaller's Pauldrons"] = 8602,
		["Stormcaller's Diadem"] = 8623,
		["Enigma Shoulderpads"] = 8625,
		["Avenger's Crown"] = 8628,
		["Avenger's Pauldrons"] = 8630,
		["Enigma Circlet"] = 8632,
		["Deathdealer's Helm"] = 8639,
		["Deathdealer's Spaulders"] = 8641,
		["Striker's Diadem"] = 8657,
		["Striker's Pauldrons"] = 8659,
		["Doomcaller's Circlet"] = 8662,
		["Doomcaller's Mantle"] = 8664,
		["Genesis Helm"] = 8667,
		["Genesis Shoulderpads"] = 8669,
		["Conqueror's Greaves"] = 8559,
		["Conqueror's Legguards"] = 8560,
		["Trousers of the Oracle"] = 8593,
		["Footwraps of the Oracle"] = 8596,
		["Stormcaller's Footguards"] = 8621,
		["Stormcaller's Leggings"] = 8624,
		["Striker's Footguards"] = 8626,
		["Avenger's Legguards"] = 8629,
		["Enigma Leggings"] = 8631,
		["Enigma Boots"] = 8634,
		["Deathdealer's Boots"] = 8637,
		["Deathdealer's Leggings"] = 8640,
		["Avenger's Greaves"] = 8655,
		["Striker's Leggings"] = 8658,
		["Doomcaller's Footwraps"] = 8660,
		["Doomcaller's Trousers"] = 8663,
		["Genesis Boots"] = 8665,
		["Genesis Trousers"] = 8668,
		["Conqueror's Breastplate"] = 8562,
		["Vestments of the Oracle"] = 8603,
		["Stormcaller's Hauberk"] = 8622,
		["Avenger's Breastplate"] = 8627,
		["Enigma Robes"] = 8633,
		["Deathdealer's Vest"] = 8638,
		["Striker's Hauberk"] = 8656,
		["Doomcaller's Robes"] = 8661,
		["Genesis Vest"] = 8666,
		["Robe of Faith"] = 9111,
		["Leggings of Faith"] = 9112,
		["Circlet of Faith"] = 9113,
		["Shoulderpads of Faith"] = 9114,
		["Sandals of Faith"] = 9115,
		["Gloves of Faith"] = 9116,
		["Belt of Faith"] = 9117,
		["Bindings of Faith"] = 9118,
		["Dreadnaught Breastplate"] = 9034,
		["Dreadnaught Legplates"] = 9036,
		["Dreadnaught Helmet"] = 9037,
		["Dreadnaught Pauldrons"] = 9038,
		["Dreadnaught Sabatons"] = 9039,
		["Dreadnaught Gauntlets"] = 9040,
		["Dreadnaught Waistguard"] = 9041,
		["Dreadnaught Bracers"] = 9042,
		["Binding the Dreadnaught"] = 9131,
		["The Fate of Ramaladni"] = 9229,
		["Ramaladni's Icy Grasp"] = 9230,
		["Echoes of War"] = 9033,
		["Redemption Tunic"] = 9043,
		["Redemption Legguards"] = 9044,
		["Redemption Headpiece"] = 9045,
		["Redemption Spaulders"] = 9046,
		["Redemption Boots"] = 9047,
		["Redemption Handguards"] = 9048,
		["Redemption Girdle"] = 9049,
		["Redemption Wristguards"] = 9050,
		["Frostfire Robe"] = 9095,
		["Frostfire Leggings"] = 9096,
		["Frostfire Circlet"] = 9097,
		["Frostfire Shoulderpads"] = 9098,
		["Frostfire Sandals"] = 9099,
		["Frostfire Gloves"] = 9100,
		["Frostfire Belt"] = 9101,
		["Frostfire Bindings"] = 9102,
		["The Dread Citadel - Naxxramas"] = 	{
			["Archmage Angela Dosantos"] = 		{
				["In the thick of Plaguewood lies the entrance to the dread citadel of Naxxramas. Previously, may decline and choose to return when you are revered or exalted for a discount."] = 9121,
				["In the thick of Plaguewood lies the entrance to the dread citadel of Naxxramas. Previously, cause of the Dawn is admirable, we are willing to incur some of those costs."] = 9122,
				["In the thick of Plaguewood lies the entrance to the dread citadel of Naxxramas. Previously, dedication to the cause of the Dawn is unwavering! We will waive all cost associations."] = 9123
			}
		},
		["The Elemental Equation"] = 9128,
		["Bonescythe Breastplate"] = 9077,
		["Bonescythe Legplates"] = 9078,
		["Bonescythe Helmet"] = 9079,
		["Bonescythe Pauldrons"] = 9080,
		["Bonescythe Sabatons"] = 9081,
		["Bonescythe Gauntlets"] = 9082,
		["Bonescythe Waistguard"] = 9083,
		["Bonescythe Bracers"] = 9084,
		["Bonescythe Digs"] = 9126,
		["Cryptstalker Tunic"] = 9054,
		["Cryptstalker Legguards"] = 9055,
		["Cryptstalker Headpiece"] = 9056,
		["Cryptstalker Spaulders"] = 9057,
		["Cryptstalker Boots"] = 9058,
		["Cryptstalker Handguards"] = 9059,
		["Cryptstalker Girdle"] = 9060,
		["Cryptstalker Wristguards"] = 9061,
		["Cryptstalker Armor Doesn't Make Itself..."] = 9124,
		["Plagueheart Robe"] = 9103,
		["Plagueheart Leggings"] = 9104,
		["Plagueheart Circlet"] = 9105,
		["Plagueheart Shoulderpads"] = 9106,
		["Plagueheart Sandals"] = 9107,
		["Plagueheart Gloves"] = 9108,
		["Plagueheart Belt"] = 9109,
		["Plagueheart Bindings"] = 9110,
		["The Ice Guard"] = 9211,
		["The Shadow Guard"] = 9213,
		["Earthshatter Tunic"] = 9068,
		["Earthshatter Legguards"] = 9069,
		["Earthshatter Headpiece"] = 9070,
		["Earthshatter Spaulders"] = 9071,
		["Earthshatter Boots"] = 9072,
		["Earthshatter Handguards"] = 9073,
		["Earthshatter Girdle"] = 9074,
		["Earthshatter Wristguards"] = 9075,
		["Dreamwalker Tunic"] = 9086,
		["Dreamwalker Legguards"] = 9087,
		["Dreamwalker Headpiece"] = 9088,
		["Dreamwalker Spaulders"] = 9089,
		["Dreamwalker Boots"] = 9090,
		["Dreamwalker Handguards"] = 9091,
		["Dreamwalker Girdle"] = 9092,
		["Dreamwalker Wristguards"] = 9093,
		["Savage Flora"] = 9136,
		["An Earnest Proposition"] = 	{
			["Mokvar"] = 8913,
			["Deliana"] = 8905
		},
		["A Supernatural Device"] = 	{
			["Mokvar"] = 8923,
			["Deliana"] = 8922
		},
		["Just Compensation"] = 	{
			["Mokvar"] = 8927,
			["Deliana"] = 		{
				["You kept your word and brought the device built by Mux. I believe a reward to upgrade. I promise the ones I give you in return will be far superior."] = 8926,
				["You kept your word and brought the device built by Mux. I believe a reward Bring me an ordinary belt and a set of gloves that you wish to upgrade."] = 8931
			}
		},
		["In Search of Anthion"] = 	{
			["Mokvar"] = 8930,
			["Deliana"] = 8929
		},
		["Saving the Best for Last"] = 	{
			["Mokvar"] = 9007,
			["Deliana"] = 8999
		},
		["Bodley's Unfortunate Fate"] = 	{
			["Mokvar"] = 9032,
			["Deliana"] = 8960
		},
		["The Ectoplasmic Distiller"] = 8921,
		["Hunting for Ectoplasm"] = 8924,
		["A Portable Power Source"] = 8925,
		["A Shifty Merchant"] = 8928,
		["Return to Deliana"] = 8977,
		["Return to Mokvar"] = 8978,
		["Dead Man's Plea"] = 8945,
		["Anthion's Strange Request"] = 8947,
		["Anthion's Old Friend"] = 8948,
		["Anthion's Parting Words"] = 8951,
		["Proof of Life"] = 8946,
		["Falrin's Vendetta"] = 8949,
		["The Instigator's Enchantment"] = 8950,
		["The Challenge"] = 9015,
		["Three Kings of Flame"] = 8961,
		["Components of Importance"] = 	{
			["Bodley"] = 		{
				["$C, listen closely. Now that we have the brazier, and the means to light it, some Druidical Remains from the silithid that inhabit the environs of Hive'Regal in southeastern Silithus."] = 8962,
				["$C, listen closely. Now that we have the brazier, and the means to light it, in southern Winterspring, who are known for raiding to the north from time to time."] = 8963,
				["$C, listen closely. Now that we have the brazier, and the means to light it, Hand in Eastern Plaguelands and retrieve a Brilliant Sword of Zealotry from the praetorians there."] = 8964,
				["$C, listen closely. Now that we have the brazier, and the means to light it, Hillsbrad Foothills. Go there and retrieve some Soul Ashes of the Banished from their remains."] = 8965
			}
		},
		["The Left Piece of Lord Valthalak's Amulet"] = 	{
			["Bodley"] = 		{
				["My friend, Mor Grayhoof, was the first to fall victim to possession of a piece Voone. A few spectral assassins snuck in and slew him right in front of Voone."] = 8966,
				["It became known to us in later days, as we were doing what we could she was ambushed at the Shrine of Eldretharr by Alzzin the Wildshaper and his forces."] = 8967,
				["The siblings, Jarien and Sothos, decided to join the Scarlet Crusade upon the disbanding of we... meaning you, are still going to need to retrieve that piece of the amulet."] = 8968,
				["Now we have what we need, so it's time to discuss who it is that from the spectral assassins. They slew him right in front of his master, Ras Frostwhisper."] = 8969
			}
		},
		["I See Alcaz Island In Your Future..."] = 8970,
		["More Components of Importance"] = 	{
			["Bodley"] = 		{
				["$C, listen closely. Now that we have the location of the last amulet piece, we in southern Winterspring, who are known for raiding to the north from time to time."] = 8985,
				["$C, listen closely. Now that we have the location of the last amulet piece, we some Druidical Remains from the silithid that inhabit the environs of Hive'Regal in southeastern Silithus."] = 8986,
				["$C, listen closely. Now that we have the location of the last amulet piece, we Hand in Eastern Plaguelands and retrieve a Brilliant Sword of Zealotry from the praetorians there."] = 8987,
				["$C, listen closely. Now that we have the location of the last amulet piece, we Hillsbrad Foothills. Go there and retrieve some Soul Ashes of the Banished from their remains."] = 8988
			}
		},
		["The Right Piece of Lord Valthalak's Amulet"] = 	{
			["Bodley"] = 		{
				["My friend, Mor Grayhoof, was the first to fall victim to possession of a piece Voone. A few spectral assassins snuck in and slew him right in front of Voone."] = 8989,
				["It became known to us in later days, as we were doing what we could she was ambushed at the Shrine of Eldretharr by Alzzin the Wildshaper and his forces."] = 8990,
				["The siblings, Jarien and Sothos, decided to join the Scarlet Crusade upon the disbanding of we... meaning you, are still going to need to retrieve that piece of the amulet."] = 8991,
				["Now we have what we need, so it's time to discuss who it is that from the spectral assassins. They slew him right in front of his master, Ras Frostwhisper."] = 8992
			}
		},
		["Final Preparations"] = 8994,
		["Mea Culpa, Lord Valthalak"] = 8995,
		["Back to the Beginning"] = 	{
			["Bodley"] = 		{
				["I suppose that this is goodbye then, my friend. But, I'll always be here if I start to cry. Go back to Deliana in Ironforge and tell her what's happened."] = 8997,
				["I suppose that this is goodbye then, my friend. But, I'll always be here if I start to cry. Go back to Mokvar in Orgrimmar and tell him what's happened."] = 8998
			}
		},
		["The Only Song I Know..."] = 9232,
		["Icebane Gauntlets"] = 9234,
		["Icebane Bracers"] = 9235,
		["Icebane Breastplate"] = 9236,
		["Glacial Cloak"] = 9237,
		["Glacial Wrists"] = 9238,
		["Glacial Gloves"] = 9239,
		["Glacial Vest"] = 9240,
		["Polar Bracers"] = 9241,
		["Polar Gloves"] = 9242,
		["Polar Tunic"] = 9243,
		["Icy Scale Bracers"] = 9244,
		["Icy Scale Gauntlets"] = 9245,
		["Icy Scale Breastplate"] = 9246,
		["Scouring the Desert"] = 	{
			["General Kirika"] = 9422,
			["Marshal Bluewall"] = 9419
		},
		["Field Duty"] = 	{
			["Windcaller Kaldon"] = 		{
				["Greetings, $N. Before I assign you to more involved tasks in the war, you'll need forced to keep the two forces well apart from one another due to mutual animosity."] = 8507,
				["Greetings, $N. Before I assign you to more involved tasks in the war, you'll need stay away from the Ironforge Brigade. Tensions are high among our Alliance and Horde volunteers."] = 8731
			}
		},
		["Cenarion Battlegear"] = 8800,
		["The Horde Needs Your Help!"] = 	{
			["Senior Sergeant Taiga"] = 8792,
			["Senior Sergeant Kai'jin"] = 8792,
			["Senior Sergeant Grimsford"] = 8792
		},
		["Signet of Unyielding Strength"] = 8556,
		["Ring of Infinite Wisdom"] = 8697,
		["Ring of the Gathering Storm"] = 8698,
		["Band of Vaulted Secrets"] = 8699,
		["Band of Unending Life"] = 8700,
		["Band of Veiled Shadows"] = 8701,
		["Ring of Unspoken Names"] = 8702,
		["Ring of Eternal Justice"] = 8703,
		["Signet of the Unseen Path"] = 8704,
		["Sickle of Unyielding Strength"] = 8558,
		["Gavel of Infinite Wisdom"] = 8705,
		["Hammer of the Gathering Storm"] = 8706,
		["Blade of Vaulted Secrets"] = 8707,
		["Mace of Unending Life"] = 8708,
		["Dagger of Veiled Shadows"] = 8709,
		["Kris of Unspoken Names"] = 8710,
		["Blade of Eternal Justice"] = 8711,
		["Scythe of the Unseen Path"] = 8712,
		["Drape of Unyielding Strength"] = 8557,
		["Shroud of Infinite Wisdom"] = 8689,
		["Cloak of the Gathering Storm"] = 8690,
		["Drape of Vaulted Secrets"] = 8691,
		["Cloak of Unending Life"] = 8692,
		["Cloak of Veiled Shadows"] = 8693,
		["Shroud of Unspoken Names"] = 8694,
		["Cape of Eternal Justice"] = 8695,
		["Cloak of the Unseen Path"] = 8696,
		["The Perfect Poison"] = 9023,
		["Shadows of Doom"] = 9085,
		["Under the Shadow"] = 9153,
		["Investigate the Scourge of Stormwind"] = 9260,
		["Investigate the Scourge of the Undercity"] = 9265,
		["The Hidden Chamber"] = 2240,
		["Amulet of Secrets"] = 722,
		["They Call Me 'The Rooster'"] = 9141,
		["The Alliance Needs Your Help!"] = 	{
			["Master Sergeant Maclure"] = 8795,
			["Master Sergeant Fizzlebolt"] = 8795,
			["Master Sergeant Moonshadow"] = 8795
		},
		["Winter's Presents"] = 	{
			["Wonderform Operator"] = 		{
				["I hear Greatfather Winter - with the generous support of Smokeywood Pastures - has put check it out. I'm sure Greatfather Winter has some presents with your name on them."] = 8827,
				["I hear Great-father Winter - with the generous support of Smokeywood Pastures - has put check it out. I'm sure Great-father Winter has some presents with your name on them."] = 8828
			}
		},
		["New Year Celebrations!"] = 	{
			["Wonderform Operator"] = 		{
				["Stormwind is holding a celebration for the new year! All day long today you can it! Thanks, $N! Innkeeper Allison is in the Gilded Rose, in the Trade District of Stormwind."] = 8860,
				["Thunder Bluff is holding a celebration for the new year! All day you'll find free deliver it! Thanks, $N! Innkeeper Pala is in the inn near the bridge to Hunter's Rise."] = 8861
			}
		},
		["The Lunar Festival"] = 	{
			["Lunar Festival Herald"] = 8873,
			["Lunar Festival Emissary"] = 8870
		},
		["Lunar Fireworks"] = 8867,
		["Valadar Starsong"] = 8883,
		["The Festival of Fire"] = 	{
			["Festival Loremaster"] = 9367,
			["Festival Talespinner"] = 9368
		},
		["Flickering Flames in Kalimdor"] = 	{
			["Festival Loremaster"] = 9388,
			["Festival Talespinner"] = 9388
		},
		["Flickering Flames in the Eastern Kingdoms"] = 	{
			["Festival Loremaster"] = 9389,
			["Festival Talespinner"] = 9389
		},
		["Establishing New Outposts"] = 9664,
		["Bolstering Our Defenses"] = 9665,
		["Elune's Blessing"] = 8868,
		["Dearest Colara,"] = 	{
			["Aldris Fourclouds"] = 8899,
			["Lieutenant Jocryn Heldric"] = 8897,
			["Tormek Stoneriver"] = 8898
		},
		["Dearest Elenia,"] = 	{
			["Deathguard Tor"] = 8902,
			["Orok Deathbane"] = 8900,
			["Temma of the Wells"] = 8901
		},
		["Dangerous Love"] = 	{
			["Aristan Mottar"] = 8903,
			["Fenstad Argyle"] = 8904
		},
		["Aristan's Hunch"] = 9024,
		["The Source Revealed"] = 	{
			["Evert Sorisam"] = 9028,
			["Mara Rennick"] = 8984
		},
		["Fenstad's Hunch"] = 8979,
		["Report to General Kirika"] = 9416,
		["Report to Marshal Bluewall"] = 9415,
		["The Horde Needs Peacebloom!"] = 8549,
		["The Horde Needs Firebloom!"] = 8580,
		["The Horde Needs Heavy Leather!"] = 8588,
		["The Horde Needs Wool Bandages!"] = 8604,
		["Writ of Safe Passage"] = 9165,
		["Light's Hope Chapel"] = 	{
			["Argent Recruiter"] = 9154,
			["Argent Scout"] = 9154
		},
		["Investigate the Scourge of Ironforge"] = 9261,
		["Investigate the Scourge of Thunder Bluff"] = 9264,
		["Investigate the Scourge of Orgrimmar"] = 9263,
		["Investigate the Scourge of Darnassus"] = 9262,
		["The Alliance Needs Copper Bars!"] = 8492,
		["The Alliance Needs More Copper Bars!"] = 8493,
		["The Alliance Needs Iron Bars!"] = 8494,
		["The Alliance Needs More Iron Bars!"] = 8495,
		["The Alliance Needs Thorium Bars!"] = 8499,
		["The Alliance Needs More Thorium Bars!"] = 8500,
		["The Alliance Needs Stranglekelp!"] = 8503,
		["The Alliance Needs More Stranglekelp!"] = 8504,
		["The Alliance Needs Purple Lotus!"] = 8505,
		["The Alliance Needs More Purple Lotus!"] = 8506,
		["The Alliance Needs Arthas' Tears!"] = 8509,
		["The Alliance Needs More Arthas' Tears!"] = 8510,
		["The Alliance Needs Light Leather!"] = 8511,
		["The Alliance Needs More Light Leather!"] = 8512,
		["The Alliance Needs Medium Leather!"] = 8513,
		["The Alliance Needs Thick Leather!"] = 8515,
		["The Alliance Needs Linen Bandages!"] = 8517,
		["The Alliance Needs More Linen Bandages!"] = 8518,
		["The Alliance Needs Silk Bandages!"] = 8520,
		["The Alliance Needs Runecloth Bandages!"] = 8522,
		["The Alliance Needs More Runecloth Bandages!"] = 8523,
		["The Alliance Needs Rainbow Fin Albacore!"] = 8524,
		["The Alliance Needs More Rainbow Fin Albacore!"] = 8525,
		["The Alliance Needs Roast Raptor!"] = 8526,
		["The Alliance Needs More Roast Raptor!"] = 8527,
		["The Alliance Needs Spotted Yellowtail!"] = 8528,
		["The Alliance Needs More Spotted Yellowtail!"] = 8529,
		["The Horde Needs Copper Bars!"] = 8532,
		["The Horde Needs More Copper Bars!"] = 8533,
		["The Horde Needs Tin Bars!"] = 8542,
		["The Horde Needs More Tin Bars!"] = 8543,
		["The Horde Needs Mithril Bars!"] = 8545,
		["The Horde Needs Purple Lotus!"] = 8582,
		["The Horde Needs Thick Leather!"] = 8590,
		["The Horde Needs Rugged Leather!"] = 8600,
		["The Horde Needs Mageweave Bandages!"] = 8607,
		["The Horde Needs Runecloth Bandages!"] = 8609,
		["The Horde Needs Lean Wolf Steaks!"] = 8611,
		["The Horde Needs Spotted Yellowtail!"] = 8613,
		["The Horde Needs Baked Salmon!"] = 8615,
		["Secrets of the Colossus - Zora"] = 8859,
		["Secrets of the Colossus - Ashi"] = 8857,
		["Secrets of the Colossus - Regal"] = 8858,
		["A Light in Dark Places"] = 	{
			["Festival Flamekeeper"] = 		{
				["We are not the only ones who celebrate this holiday, $n. All creatures, all cultures, of Dire Maul, and the halls of Blackrock Spire itself; I will await your return."] = 9319,
				["An eager one, aren't you? If you're willing to enter the depths once more, I'll Maul, and the halls of Blackrock Spire itself; I look forward to your return, $n."] = 9386
			}
		},
		["Wild Fires in Kalimdor"] = 9322,
		["Wild Fires in the Eastern Kingdoms"] = 9323,
		["Fiery Plate Gauntlets"] = 5124,
		["Twisted Evils"] = 7028,
		["Staghelm's Requiem"] = 7365,
		["Discover Rolf's Fate"] = 45,
		["Report to Thomas"] = 71,
		["Captain Sander's Hidden Treasure"] = 	{
			["Captain's Footlocker"] = 138,
			["Broken Barrel"] = 139,
			["Old Jug"] = 140,
			["Captain Sander's Treasure Map"] = 136
		},
		["Wanted: Gath'Ilzogg"] = 169,
		["Wanted:  'Hogger'"] = 176,
		["Wanted: Lieutenant Fangore"] = 180,
		["The Weathered Grave"] = 225,
		["Sven's Camp"] = 230,
		["Looking Further"] = 248,
		["WANTED: Chok'sul"] = 256,
		["The Search Continues"] = 284,
		["Search More Hovels"] = 285,
		["Return the Statuette"] = 	{
			["Half-buried Barrel"] = 286,
			["Karl Boran"] = 98189
		},
		["The Eye of Paleth"] = 292,
		["Return to Marleth"] = 	{
			["Unguarded Thunderbrew ale barrel"] = 311,
			["Unguarded Thunder Ale Barrel"] = 311
		},
		["The Lost Ingots"] = 324,
		["The Hidden Key"] = 328,
		["The Spy Revealed!"] = 329,
		["Wanted: Maggot Eye"] = 398,
		["A Pilot's Revenge"] = 417,
		["Rot Hide Clues"] = 439,
		["The Hidden Niche"] = 461,
		["Defeat Nek'rosh"] = 474,
		["Maps and Runes"] = 478,
		["Wand to Bethor"] = 491,
		["Foreboding Plans"] = 510,
		["WANTED: Syndicate Personnel"] = 549,
		["WANTED: Baron Vardus"] = 566,
		["Dangerous!"] = 567,
		["Speaking with Nezzliok"] = 585,
		["Speaking with Gan'zulah"] = 586,
		["The Fate of Yenniku"] = 588,
		["Cortello's Riddle"] = 	{
			["A Soggy Scroll"] = 625,
			["Musty Scroll"] = 626,
			["Cortello's Riddle"] = 624
		},
		["The Princess Trapped"] = 642,
		["Stones of Binding"] = 651,
		["Breaking the Keystone"] = 652,
		["Myzrael's Allies"] = 	{
			["Keystone"] = 		{
				["<Myzrael speaks.> Free! I AM FREE! I am free to gather strength, hidden from my captors. Ironforge, in a shop of the Forlorn Cavern. He knows how I can be summoned."] = 653,
				["<Myzrael speaks.> Free! I AM FREE! I am free to gather strength, hidden from my captors. me to the surface Speak with Zaruk in Hammerfall. He knows how I can be summoned."] = 688
			}
		},
		["Wanted!  Marez Cowl"] = 684,
		["Wanted!  Otto and Falconcrest"] = 685,
		["Murdaloc"] = 739,
		["WANTED: Baron Longshore"] = 895,
		["The Glowing Fruit"] = 930,
		["The Shimmering Frond"] = 931,
		["The Twilight Camp"] = 949,
		["Return to Onu"] = 950,
		["Buzzbox 411"] = 1001,
		["Buzzbox 323"] = 1002,
		["Buzzbox 525"] = 1003,
		["Rizzle's Schematics"] = 1194,
		["The Orc Report"] = 1219,
		["The Lost Report"] = 1238,
		["The Severed Head"] = 1239,
		["The Black Shield "] = 1251,
		["Marg Speaks"] = 1261,
		["Suspicious Hoofprints"] = 1268,
		["WANTED: Caliph Scorpidsting"] = 	{
			["WANTED: Caliph Scorpidsting"] = 2781,
			["Wanted Poster"] = 2781
		},
		["Rin'ji's Secret"] = 2782,
		["Return to Feathermoon Stronghold"] = 2867,
		["WANTED: Andre Firebeard"] = 	{
			["WANTED: Caliph Scorpidsting"] = 2875,
			["Wanted Poster"] = 2875
		},
		["The Battle Plans"] = 2903,
		["Venom Bottles"] = 2933,
		["Feralas: A History"] = 2940,
		["The Morrow Stone"] = 2942,
		["Return of the Ring"] = 	{
			["The Sparklematic 5200"] = 		{
				["Opening the box produced by the Sparklematic 5200 reveals what you had suspected - a of the ring's crafter. Keep the ring... or return it to this person. Decisions, decisions..."] = 2947,
				["Opening the box produced by the Sparklematic 5200 reveals a shiny ring! Donning the ring, the initials of the ring's crafter. Keep the ring... or find 'NOG' - decisions, decisions..."] = 2949
			}
		},
		["The Sparklematic 5200!"] = 2951,
		["Return to Ironforge"] = 2977,
		["Trinkets..."] = 3481,
		["Linken's Sword"] = 3914,
		["KILL ON SIGHT: Dark Iron Dwarves"] = 4081,
		["KILL ON SIGHT: High Ranking Dark Iron Officials"] = 4082,
		["Boat Wreckage"] = 4127,
		["The Writhing Deep"] = 4135,
		["Escaping the Hive"] = 4265,
		["Caught!"] = 4449,
		["Ledger from Tanaris"] = 4450,
		["Beware of Pterrordax"] = 4501,
		["Beached Sea Turtle"] = 	{
			["Beached Sea Turtle"] = 		{
				["You find a corpse of a sea turtle that had beached itself on the coast the creature's remains that Gwennyth Bly'Leggonde in Auberdine might be able to make use of."] = 4722,
				["More sea turtle remains lie beached along the coastline. This particular set has an abandoned with strange markings on it; perhaps Gwennyth Bly'Leggonde in Auberdine can make sense of it."] = 4725,
				["The skeletal remains of a sea turtle lie in the sand of the northern Darkshore sample back to Gwennyth Bly'Leggonde in Auberdine for the Temple of the Moon to study."] = 4727,
				["Another set of sea turtle remains lie beached on the coastline. This set of remains with strange markings on it; perhaps Gwennyth Bly'Leggonde in Auberdine can make sense of it."] = 4731
			}
		},
		["Beached Sea Creature"] = 	{
			["Beached Sea Creature"] = 		{
				["The remains of a giant thresher - much larger than one you'd expect to find enough of it remains to take a sample for Gwennyth Bly'Leggonde in Auberdine to study."] = 4723,
				["The corpse of what appears to be some sort of giant sea mammal lies partially beast, enough of it remains to gather a suitable sample for Gwennyth Bly'Leggonde in Auberdine."] = 4728,
				["The half-devoured corpse of what might have been a giant sea mammal lies on the that a suitable sample of its bones could be delivered to Gwennyth Bly'Leggonde in Auberdine."] = 4730,
				["The remains of what appear to be a giant thresher have washed ashore on the places, enough of it remains to gather a suitable sample for Gwennyth Bly'Leggonde in Auberdine."] = 4733
			}
		},
		["WANTED: Murkdeep!"] = 4740,
		["The Fragments Within"] = 4813,
		["Cap of the Scarlet Savant"] = 5063,
		["Leggings of Arcana"] = 5067,
		["Breastplate of Bloodthirst"] = 5068,
		["Mystery Goo"] = 5085,
		["Hot Fiery Death"] = 5103,
		["Wanted - Arnak Grimtotem"] = 5147,
		["Breastplate of the Chromatic Flight"] = 5166,
		["Legplates of the Chromatic Defier"] = 5167,
		["Return to Chillwind Camp"] = 	{
			["Scourge Cauldron"] = 		{
				["You fill the bottle with enough of the cauldron's poisonous concoction for a suitable sample is time to return to High Priestess MacDonnell at Chillwind Camp to complete the mission."] = 5217,
				["You carefully fill the bottle with enough of the cauldron's ichors for what you consider is time to return to High Priestess MacDonnell at Chillwind Camp to complete the mission."] = 5220,
				["You delicately top off the empty bottle; a sample of the foul substance that churns is time to return to High Priestess MacDonnell at Chillwind Camp to complete the mission."] = 5223,
				["You carefully close the spigot in the control panel, watching the cauldron's putrid ichors drip is time to return to High Priestess MacDonnell at Chillwind Camp to complete the mission."] = 5226
			}
		},
		["Return to the Bulwark"] = 	{
			["Scourge Cauldron"] = 		{
				["You fill the bottle with enough of the cauldron's poisonous concoction for a suitable sample is time to return to Shadow Priestess Vandis at the Bulwark to complete the mission."] = 5230,
				["You carefully fill the bottle with enough of the cauldron's ichors for what you consider is time to return to Shadow Priestess Vandis at the Bulwark to complete the mission."] = 5232,
				["You delicately top off the empty bottle; a sample of the foul substance that churns is time to return to Shadow Priestess Vandis at the Bulwark to complete the mission."] = 5234,
				["You carefully close the spigot in the control panel, watching the cauldron's putrid ichors drip is time to return to Shadow Priestess Vandis at the Bulwark to complete the mission."] = 5236
			}
		},
		["Hameya's Plea"] = 6024,
		["Claim Rackmore's Treasure!"] = 6161,
		["Arachnophobia"] = 6284,
		["Wanted: DWARVES!"] = 7401,
		["Wanted: ORCS!"] = 7402,
		["WANTED: Overseer Maltorius"] = 7701,
		["STOLEN: Smithing Tuyere and Lookout's Spyglass"] = 7728,
		["JOB OPPORTUNITY: Culling the Competition"] = 7729,
		["Wanted: Vile Priestess Hexx and Her Minions"] = 7861,
		["Job Opening: Guard Captain of Revantusk Village"] = 7862,
		["Nat's Measuring Tape"] = 	{
			["Battered Tackle Box"] = 8227,
			["Nat's Measuring Tape"] = 8227
		},
		["Wanted - Deathclasp, Terror of the Sands"] = 8283,
		["Sharing the Knowledge"] = 8313,
		["Ruined Kegs"] = 	{
			["Beer Keg"] = 8409,
			["Doodad_BeerKeg101"] = 8409,
			["Keg"] = 8409
		},
		["A Pawn on the Eternal Board"] = 8519,
		["Scrying Goggles? No Problem!"] = 8578,
		["rAnS0m"] = 8598,
		["Freed from the Hive"] = 4265,
		["The Collector"] = 123,
		["Theocritus' Retrieval"] = 178,
		["Furlbrow's Deed"] = 184,
		["An Old History Book"] = 337,
		["A Letter Undelivered"] = 361,
		["The Unsent Letter"] = 373,
		["Resting in Pieces"] = 460,
		["Assassin's Contract"] = 522,
		["The Ensorcelled Parchment"] = 551,
		["The Monogrammed Sash"] = 620,
		["Sully Balloo's Letter"] = 637,
		["Crystal in the Mountains"] = 635,
		["Attack on Camp Narache"] = 781,
		["The Demon Scarred Cloak"] = 770,
		["Burning Shadows"] = 832,
		["Lakota'mani"] = 883,
		["Owatanka"] = 884,
		["Washte Pawne"] = 885,
		["The Harvester"] = 897,
		["The Moss-twined Heart"] = 927,
		["The Powers Below"] = 968,
		["Lonebrow's Journal"] = 1100,
		["The Lost Supplies"] = 1423,
		["Noboru the Cudgel"] = 1392,
		["The Shattered Necklace"] = 2198,
		["Tanaris Field Sampling"] = 654,
		["Find OOX-17/TN!"] = 351,
		["Find OOX-09/HL!"] = 485,
		["Find OOX-22/FE!"] = 2766,
		["Ship Schedules"] = 2876,
		["Cuergo's Gold"] = 2882,
		["Grime-Encrusted Ring"] = 2945,
		["The Gordunni Scroll"] = 2978,
		["The Horn of the Beast"] = 3181,
		["The Glowing Shard"] = 6981,
		["The Essence of Eranikus"] = 	{
			["Essence of Eranikus"] = 3373,
			["Oathstone of Ysera's Dragonflight"] = 3374
		},
		["<NYI> <TXT> The Pocked Black Box"] = 3482,
		["The Runed Scroll"] = 3513,
		["Williden's Journal"] = 3884,
		["A Crumpled Up Note"] = 4264,
		["Thalanaar Delivery"] = 4281,
		["Flute of Xavaric"] = 939,
		["The Key to Freedom"] = 4451,
		["Warlord's Command"] = 4903,
		["Assassination Plot"] = 4881,
		["Winterfall Firewater"] = 5083,
		["General Drakkisath's Command"] = 5089,
		["The Final Piece"] = 5123,
		["A Strange Red Key"] = 5202,
		["The Truth Comes Crashing Down"] = 5262,
		["Healthy Dragon Scale"] = 5582,
		["Welcome!"] = 	{
			["Northshire Gift Voucher"] = 5805,
			["Coldridge Valley Gift Voucher"] = 5841,
			["Shadowglen Gift Voucher"] = 5842,
			["Valley of Trials Gift Voucher"] = 5843,
			["Camp Narache Gift Voucher"] = 5844,
			["Deathknell Gift Voucher"] = 5847,
			["Thendal Grove Gift Voucher"] = 92454
		},
		["Ursangous's Paw"] = 23,
		["Shadumbra's Head"] = 24,
		["Sharptalon's Claw"] = 2,
		["The Befouled Element"] = 1918,
		["Baron Aquanis"] = 	{
			["Strange Water Globe"] = 6922,
			["Davius Voidstar"] = 79099
		},
		["An Unholy Alliance"] = 	{
			["Small Scroll"] = 6522,
			["Varimathras"] = 6521
		},
		["The Manor, Ravenholdt"] = 6681,
		["Garona: A Study on Stealth and Treachery"] = 7498,
		["Codex of Defense"] = 7499,
		["The Arcanist's Cookbook"] = 7500,
		["The Light and How To Swing It"] = 7501,
		["Harnessing Shadows"] = 7502,
		["The Greatest Race of Hunters"] = 7503,
		["Holy Bologna: What the Light Won't Tell You"] = 7504,
		["Frost Shock and You"] = 7505,
		["The Emerald Dream..."] = 7506,
		["Foror's Compendium"] = 7507,
		["Victory for the Horde"] = 7490,
		["Victory for the Alliance"] = 7495,
		["A Binding Contract"] = 7604,
		["The Ancient Leaf"] = 7632,
		["Arena Master"] = 7810,
		["Enchanted Thorium Platemail: Volume I"] = 7649,
		["Enchanted Thorium Platemail: Volume II"] = 7650,
		["Enchanted Thorium Platemail: Volume III"] = 7651,
		["Pristine Yeti Hide"] = 7735,
		["Perfect Yeti Hide"] = 7738,
		["Blackhand's Command"] = 7761,
		["Examine the Vessel"] = 7785,
		["Rise, Thunderfury!"] = 7787,
		["Darkmoon Beast Deck"] = 7907,
		["Darkmoon Warlords Deck"] = 7928,
		["Darkmoon Elementals Deck"] = 7929,
		["Darkmoon Portals Deck"] = 7927,
		["Your Fortune Awaits You..."] = 	{
			["Sayge's Fortune #23"] = 7937,
			["Sayge's Fortune #24"] = 7938,
			["Sayge's Fortune #25"] = 7944,
			["Sayge's Fortune #27"] = 7945
		},
		["The Heart of Hakkar"] = 8183,
		["Brann Bronzebeard's Lost Letter"] = 8308,
		["Shrouded in Nightmare"] = 8446,
		["Deadwood Ritual Totem"] = 8470,
		["Winterfall Ritual Totem"] = 8471,
		["Bandages for the Field"] = 8496,
		["Desert Survival Kits"] = 8497,
		["Boots for the Guard"] = 8540,
		["Grinding Stones for the Guard"] = 8541,
		["Target: Hive'Ashi Stingers"] = 8501,
		["Target: Hive'Ashi Workers"] = 8502,
		["Twilight Battle Orders"] = 8498,
		["Twilight Marauders"] = 8740,
		["Crimson Templar"] = 8537,
		["Hoary Templar"] = 8535,
		["The Four Dukes"] = 8538,
		["Azuregos's Magical Ledger"] = 8575,
		["Hive'Zora Scout Report"] = 8534,
		["Hive'Regal Scout Report"] = 8738,
		["Hive'Ashi Scout Report"] = 8739,
		["The Fall of Ossirian"] = 8791,
		["C'Thun's Legacy"] = 8801,
		["Secrets of the Qiraji"] = 8784,
		["Azure Templar"] = 8737,
		["Target: Hive'Zora Reavers"] = 8773,
		["Target: Hive'Zora Hive Sisters"] = 8539,
		["Target: Hive'Zora Waywatchers"] = 8772,
		["Target: Hive'Zora Tunnelers"] = 8687,
		["Target: Hive'Regal Ambushers"] = 8774,
		["Target: Hive'Regal Spitfires"] = 8775,
		["Target: Hive'Regal Slavemakers"] = 8776,
		["Target: Hive'Regal Burrowers"] = 8777,
		["The Ironforge Brigade Needs Explosives!"] = 8778,
		["The Orgrimmar Legion Needs Mojo!"] = 8785,
		["Scrying Materials"] = 8779,
		["Arms for the Field"] = 	{
			["Logistics Task Briefing VI"] = 		{
				["The Ironforge Brigade has been a worthy ally in our fight in Silithus. Unfortunately, many way here. Procure a batch of weapons and deliver them to Janela Stouthammer near Hive'Zora."] = 8781,
				["The Orgrimmar Legion has put in a request for additional weapons that we haven't been moment. Obtain the weapons they've requested and bring them to Merok Longstride outside of Hive'Regal."] = 8786
			}
		},
		["Uniform Supplies"] = 8782,
		["Armor Kits for the Field"] = 	{
			["Logistics Task Briefing VII"] = 		{
				["The Ironforge Brigade's supply of armor kits in the battlefield is running dangerously low. Obtain a batch and deliver them to Janela Stouthammer at the Ironforge Brigade's outpost outside Hive'Zora."] = 8780,
				["The brave volunteers of the Orgrimmar Legion have arrived to Silithus to aid us in kits and deliver them to Merok Longstride at the location of the Orgrimmar Legion camp."] = 8787
			}
		},
		["Extraordinary Materials"] = 8783,
		["The Ultimate Deception"] = 8829,
		["Target: Hive'Ashi Defenders"] = 8770,
		["Target: Hive'Ashi Sandstalkers"] = 8771,
		["Earthen Templar"] = 8536,
		["Craftsman's Writ - Dense Weightstone"] = 9178,
		["Craftsman's Writ - Imperial Plate Chest"] = 9179,
		["Craftsman's Writ - Volcanic Hammer"] = 9181,
		["Craftsman's Writ - Huge Thorium Battleaxe"] = 9182,
		["Craftsman's Writ - Radiant Circlet"] = 9183,
		["Craftsman's Writ - Wicked Leather Headband"] = 9184,
		["Craftsman's Writ - Rugged Armor Kit"] = 9185,
		["Craftsman's Writ - Wicked Leather Belt"] = 9186,
		["Craftsman's Writ - Runic Leather Pants"] = 9187,
		["Craftsman's Writ - Brightcloth Pants"] = 9188,
		["Craftsman's Writ - Runecloth Boots"] = 9190,
		["Craftsman's Writ - Runecloth Bag"] = 9191,
		["Craftsman's Writ - Runecloth Robe"] = 9194,
		["Craftsman's Writ - Goblin Sapper Charge"] = 9195,
		["Craftsman's Writ - Thorium Grenade"] = 9196,
		["Craftsman's Writ - Gnomish Battle Chicken"] = 9197,
		["Craftsman's Writ - Thorium Tube"] = 9198,
		["Craftsman's Writ - Major Mana Potion"] = 9200,
		["Craftsman's Writ - Major Healing Potion"] = 9202,
		["Craftsman's Writ - Greater Arcane Protection Potion"] = 9201,
		["Craftsman's Writ - Flask of Petrification"] = 9203,
		["Craftsman's Writ - Stonescale Eel"] = 9204,
		["Craftsman's Writ - Plated Armorfish"] = 9205,
		["Craftsman's Writ - Lightning Eel"] = 9206,
		["Omarion's Handbook"] = 9233,
		["The Keeper's Call"] = 9247,
		["Frame of Atiesh"] = 9250,
		["Envelope from the Front"] = 9301,
		["Note from the Front"] = 9299,
		["Missive from the Front"] = 9302,
		["Page from the Front"] = 9300,
		["Document from the Front"] = 9304,
		["Letter from the Front"] = 9295,
		["Stealing Orgrimmar's Flame"] = 9324,
		["Stealing Thunder Bluff's Flame"] = 9325,
		["Stealing the Undercity's Flame"] = 9326,
		["Stealing Stormwind's Flame"] = 9330,
		["Stealing Ironforge's Flame"] = 9331,
		["Stealing Darnassus's Flame"] = 9332,
		["The Fall of Kel'Thuzad"] = 9120,
		["The Black Box"] = 708,
		["Glyphic Rune"] = 3111,
		["<NYI> <TXT> bug crystal side quest"] = 1155,
		["Look at the Size of It!"] = 7704,
		["Pie for Billy"] = 86,
		["Goldtooth"] = 87,
		["Return the Comb"] = 154,
		["Keeper of the Flame"] = 103,
		["The Coastal Menace"] = 104,
		["The Coast Isn't Clear"] = 152,
		["CLUCK!"] = 3861,
		["Blisters on The Land"] = 275,
		["Tramping Paws"] = 276,
		["Fire Taboo"] = 277,
		["Draenethyst Crystals"] = 1389,
		["Zenn's Bidding"] = 488,
		["The Crown of Will"] = 	{
			["Sharlindra"] = 495,
			["Melisara"] = 		{
				["Mug'Thol and his Crushridge ogres have overrun the ruins of Alterac. It will be hard him without thinning out the ogres' numbers. After softening them up, we'll proceed. Understood? Good. Now go."] = 518,
				["Targ, Muckrake, and Glommus are Mug'Thol's lieutenants. They are loyal to him, though who can $n, and then all that will remain is to remove Mug'Thol's head, crown and all."] = 519,
				["With Mug'Thol's lieutenants dead, all that remains is to kill Mug'Thol and retrieve the Crown his head and the Crown to me. The Crushridge resistance will be at an end."] = 520,
				["All that remains is to deliver the Crown of Will to Sharlindra in the Undercity. thinking to use it for your own purposes, $n, Mug'Thol's fate should be illustration enough."] = 521
			}
		},
		["Into The Scarlet Monastery"] = 1048,
		["The Power to Destroy..."] = 5725,
		["The Crimson Courier"] = 6145,
		["The Captain's Chest"] = 614,
		["The Captain's Cutlass"] = 615,
		["Avast Ye, Admiral!"] = 4621,
		["Death From Below"] = 667,
		["Land Ho!"] = 663,
		["Tremors of the Earth"] = 	{
			["Garek"] = 		{
				["It has become obvious that we cannot ensure that Blacklash and Hematus will remain imprisoned be used to break the seal which imprisons them. $n... assure that their dreams are eternal."] = 717,
				["I heard from Sigrun that you have been a great help to him. Perhaps I Earth; I must have it. Bring it to me, and I will tell you more."] = 732
			}
		},
		["Tribes at War"] = 878,
		["Betrayal from Within"] = 	{
			["Mangletooth"] = 		{
				["Three of my tribe came out of the Kraul to lead the raids against the the one called Orcbane, <snort> a warrior. Kill them, $r, like they have killed me."] = 879,
				["Take Lok's head to Thork in the Crossroads, $r. <snort> He should know what has Agamaggan's power for as long as I remain in this cage, $r. Until then, farewell."] = 906
			}
		},
		["Blood Shards of Agamaggan"] = 5052,
		["Ignition"] = 858,
		["Free From the Hold"] = 898,
		["Mist"] = 938,
		["Therylune's Escape"] = 945,
		["The Master's Glaive"] = 944,
		["Mathystra Relics"] = 951,
		["Vile Satyr! Dryads in Danger!"] = 1021,
		["Satyr Slaying!"] = 1032,
		["The Branch of Cenarius"] = 1031,
		["Reclaiming the Charred Vale"] = 	{
			["Keeper Albagorm"] = 		{
				["As a protector of the forest spirits you can undoubtedly guess why I am alarmed. You on the land refuse us passage in to begin regrowth. Drive the wretched harpies out, $n!"] = 1057,
				["The Bloodfuries have been subdued. But they will regroup soon enough if action is not the reclamation of the Charred Vale. Send word of our need! Seek him out at once!"] = 1059
			}
		},
		["Cenarius' Legacy"] = 1087,
		["Ordanus"] = 1088,
		["The Den"] = 1089,
		["Fiora Longears"] = 1132,
		["Journey to Astranaar"] = 1133,
		["Highperch Venom"] = 1135,
		["Overlord Mok'Morokk's Concern"] = 1166,
		["The Brood of Onyxia"] = 	{
			["Overlord Mok'Morokk"] = 1171,
			["Draz'Zilb"] = 		{
				["Stonemaul Village was invaded by the brood of Onyxia. But why would the daughter of laying siege to a small band of ogres. Notify Mok'Morokk at once! Action must be taken."] = 1170,
				["Onyxia's brood has been scattered across the Dragonmurk. It is imperative that no more whelps surrounding area remains a breeding ground. As for Mok'Morokk... I have other plans for the sod."] = 1172
			}
		},
		["Challenge Overlord Mok'Morokk"] = 1173,
		["Identifying the Brood"] = 1169,
		["Army of the Black Dragon"] = 1168,
		["Hungry!"] = 1177,
		["Questioning Reethe"] = 1273,
		["In Eranikus' Own Words"] = 3512,
		["Stealing Supplies"] = 1370,
		["Ongeku"] = 1373,
		["Khan Jehn"] = 1374,
		["Khan Hratha"] = 	{
			["Uthek the Wise"] = 1380,
			["Warug"] = 1381
		},
		["Raid on the Kolkar"] = 1384,
		["Broken Tears"] = 1369,
		["Gizmo for Warug"] = 1371,
		["Khan Shaka"] = 1375,
		["Assault on the Kolkar"] = 1386,
		["Tooga's Quest"] = 1560,
		["Ulathek the Traitor"] = 7624,
		["Xorothian Stardust"] = 7625,
		["To Serve Kum'isha"] = 2521,
		["Kum'isha's Endeavors"] = 2522,
		["Everything Counts In Large Amounts"] = 3501,
		["One Draenei's Junk..."] = 3502,
		["Snickerfang Jowls"] = 2581,
		["Rage of Ages"] = 2582,
		["A Boar's Vitality"] = 2583,
		["Spirit of the Boar"] = 2584,
		["The Decisive Striker"] = 2585,
		["Salt of the Scorpok"] = 2586,
		["The Basilisk's Bite"] = 2601,
		["Infallible Mind"] = 2602,
		["Vulture's Vigor"] = 2603,
		["Spiritual Domination"] = 2604,
		["The Giant Guardian"] = 2844,
		["Rescue OOX-17/TN!"] = 648,
		["A Sticky Situation"] = 77,
		["Ripple Delivery"] = 81,
		["Rescue OOX-09/HL!"] = 836,
		["Rescue OOX-22/FE!"] = 2767,
		["The Stone Watcher"] = 2954,
		["A Meeting with the Master"] = 3381,
		["Courser Antlers"] = 8153,
		["Wavethrashing"] = 8231,
		["The Green Drake"] = 8232,
		["Of Coursers We Know"] = 8255,
		["The Ichor of Undeath"] = 8256,
		["Blood of Morphaz"] = 8257,
		["Hilary's Necklace"] = 3741,
		["A Taste of Flame"] = 	{
			["Cyrus Therepentous"] = 		{
				["The flight is aware of your work in the Searing Gorge. Show it to me, $r. aware of your work in the Searing Gorge. Show it to me, $r. The molt, imbecile."] = 4022,
				["You seek out the Flight? Present to me proof of your worth, mortal. You seek out the Flight? Present to me proof of your worth, mortal."] = 4023,
				["I wish to taste the searing flames of the mountain of fire. To let the fire. Use the molt on his remains to safely extract the inner flame. Succeed and be rewarded."] = 4024
			}
		},
		["The Love Potion"] = 4201,
		["Ancient Spirit"] = 4261,
		["Fragments of the Past"] = 	{
			["Aurora Skycaller"] = 		{
				["I did not realize... Forgive my callous words, $c. The mistakes of my ancestors are not Temple of Zin-Malor in Azshara - I can only hope the book is still there."] = 5246,
				["I will be able to help you, if recreating the artifact is truly what you from these pages the knowledge I need to repair the damage done to the relic."] = 5247
			}
		},
		["Tormented By the Past"] = 5248,
		["The Test of Skulls, Scryer"] = 6582,
		["The Test of Skulls, Somnus"] = 6583,
		["The Test of Skulls, Chronalis"] = 6584,
		["The Test of Skulls, Axtroz"] = 6585,
		["Ascension..."] = 6601,
		["Gordo's Task"] = 5481,
		["Remorseful Highborne"] = 5252,
		["The Matron Protectorate"] = 5160,
		["Urok Doomhowl"] = 4867,
		["Lorax's Tale"] = 5126,
		["The Demon Forge"] = 5127,
		["Pamela's Doll"] = 5149,
		["Auntie Marlene"] = 5152,
		["Uncle Carlin"] = 5241,
		["Hidden Treasures"] = 5942,
		["Wrath of the Blue Flight"] = 	{
			["Haleh"] = 		{
				["We understand what the cursed brood of Deathwing attempts to do and we know that our help. Ponder this and speak with me again when a decision has been made."] = 5161,
				["It is the arcane that I control and the arcane which will send you to wise as the ancients and as patient as the immovable earth. Find him in Andorhal."] = 5162
			}
		},
		["Drakefire Amulet"] = 6502,
		["Catalogue of the Wayward"] = 5164,
		["Timbermaw Ally"] = 	{
			["Grazle"] = 		{
				["The Timbermaw are the only furbolg tribe to escape the corruption. However, many other races consider you an ally. You'll find the Deadwood warriors, pathfinders and gardeners to the south."] = 6131,
				["The Timbermaw are the only furbolg tribe to escape the corruption. However, many other races You'll find the first Deadwood tribe - warriors, pathfinders and gardeners - to my west."] = 6131
			}
		},
		["Deadwood of the North"] = 	{
			["Grazle"] = 		{
				["Directly southwest of here, there is a camp of Deadwood furbolgs. I am not sure must be done, and do not mention the details; they upset me far too much."] = 6221,
				["There is a camp of Deadwood furbolgs directly to our southwest. Corruption permeates the camp, must be done, and do not mention the details; they upset me far too much."] = 6221
			},
			["Nafien"] = 8461
		},
		["Speak to Nafien"] = 8462,
		["The Root of All Evil"] = 8481,
		["The Brokering of Peace"] = 	{
			["Gorn One Eye"] = 		{
				["Your deeds go beyond the tale of a simple hero, $N. If you are a only fitting to acknowledge you as the key in your Alliance's efforts in brokering peace."] = 8484,
				["Your deeds go beyond the tale of a simple hero, $N. If you are a only fitting to acknowledge you as the key in your Horde's efforts in brokering peace."] = 8485
			}
		},
		["Winterfall Activity"] = 	{
			["Salfa"] = 		{
				["The Timbermaw tend to stay to themselves, $N. While we do allow safe passage to they do not understand. If you could reduce their numbers this would help us greatly, $N."] = 6241,
				["The Timbermaw tend to stay to themselves, $N. While we do allow safe passage to threat against us. Seek them out in Winterfall Village, far to the east of here."] = 8464
			}
		},
		["Runecloth"] = 6031,
		["Sacred Cloth"] = 6032,
		["Waking Legends"] = 8447,
		["The Nightmare's Corruption"] = 8735,
		["The Nightmare Manifests"] = 8736,
		["The Champion Returns"] = 8741,
		["Elemental War"] = 6393,
		["Trouble in the Deeps"] = 6562,
		["Seed of Life"] = 7066,
		["Nefarius's Corruption"] = 8730,
		["Poisoned Water"] = 6804,
		["Stormers and Rumblers"] = 6805,
		["Eye of the Emberseer"] = 6821,
		["The Molten Core"] = 6822,
		["Agent of Hydraxis"] = 6823,
		["Hands of the Enemy"] = 6824,
		["A Hero's Reward"] = 7486,
		["You're a Mean One..."] = 	{
			["Strange Snowman"] = 		{
				["A c-c-creature called 'The Abominable Greench' is the one w-w-who stole our shipment of t-t-treats, them b-b-back to Smokywood Pastures in Orgrimmar, and t-t-tell them I n-n-need to be unfrozen!"] = 6983,
				["A c-c-creature called 'The Abominable Greench' is the one w-w-who stole our shipment of t-t-treats, them b-b-back to Smokywood Pastures in Ironforge, and t-t-tell them I n-n-need to be unfrozen!"] = 7043
			}
		},
		["Corruption of Earth and Seed"] = 	{
			["Keeper Marandis"] = 7065,
			["Selendra"] = 7064
		},
		["The Scepter of Celebras"] = 7046,
		["The Pariah's Instructions"] = 7067,
		["Jaina's Autograph"] = 558,
		["The Bough of the Eternals"] = 1479,
		["The Stonewrought Dam"] = 1558,
		["Spooky Lighthouse"] = 1687,
		["You Scream, I Scream..."] = 	{
			["Human Orphan"] = 4822,
			["Orcish Orphan"] = 915
		},
		["Unfinished Gordok Business"] = 7703,
		["Down at the Docks"] = 910,
		["Gateway to the Frontier"] = 911,
		["Cairne's Hoofprint"] = 925,
		["Lordaeron Throne Room"] = 1800,
		["A Warden of the Horde"] = 5502,
		["Flawless Fel Essence"] = 7602,
		["Kroshius' Infernal Core"] = 7603,
		["Hot and Itchy"] = 8420,
		["The Wrong Stuff"] = 8421,
		["Trolls of a Feather"] = 8422,
		["Stave of the Ancients"] = 7636,
		["A Proper String"] = 7635,
		["Ancient Sinew Wrapped Lamina"] = 7634,
		["Blessed Arcanite Barding"] = 7644,
		["Lard Lost His Lunch"] = 7840,
		["Paragons of Power: The Freethinker's Armguards"] = 8053,
		["Paragons of Power: The Freethinker's Belt"] = 8054,
		["Paragons of Power: The Freethinker's Breastplate"] = 8055,
		["Paragons of Power: The Vindicator's Armguards"] = 8058,
		["Paragons of Power: The Vindicator's Belt"] = 8078,
		["Paragons of Power: The Vindicator's Breastplate"] = 8079,
		["Long Forgotten Memories"] = 8305,
		["Atiesh, the Befouled Greatstaff"] = 9251,
		["Atiesh, Greatstaff of the Guardian"] = 9257,
		["Hallow's End Treats for Spoops!"] = 8312,
		["Hallow's End Treats for Jesper!"] = 8311,
		["Return to Bodley"] = 8996,
		["Cracked Necrotic Crystal"] = 9292,
		["Faint Necrotic Crystal"] = 9310,
		["Speak to Salfa"] = 8465,
		["Love Song for Narain"] = 8599,
		["Tyrande and Remulos"] = 8734,
		["Legends of Maraudon"] = 7044,
		["Harmony in Balance"] = 92461,
		["The Adventurer"] = 	{
			["Aetheen of the Gales"] = 96638,
			["Executor Arren"] = 96656,
			["Marshal McBride"] = 96627,
			["Mountaineer Thalos"] = 96628,
			["Chief Hawkwind"] = 96659,
			["Lost Journal"] = 96630,
			["Diario perdido"] = 96652
		},
		["The Next Step"] = 92472,
		["Aggressive Encroachment"] = 92473,
		["Foul Matriarch"] = 92470,
		["Aetheen of the Gales"] = 92471,
		["Al'Aketh Thugs"] = 92544,
		["Coming of Age"] = 92460,
		["WANTED: Vulgara the Insatiable"] = 93318,
		["Hippogryph Harrassment"] = 92516,
		["Pilfered Windstones"] = 93319,
		["The Criminal Element"] = 92517,
		["Camping 101: First Aid"] = 	{
			["Raan Wildwind"] = 97965,
			["Сэм Сарсапарилла"] = 97919,
			["Eric Brighthammer"] = 96047,
			["Eleanor Shackleton"] = 97955,
			["Kaga Wildhoof"] = 97931,
			["Lyreena Duskblade"] = 97942,
			["Brakk"] = 97903
		},
		["Meddlesome Mages"] = 94411,
		["The Windshapers"] = 92595,
		["Welcome to Shen'dar Village"] = 	{
			["Constable Aonda"] = 		{
				["You've got that 'Windshaper' air about you. Something about how I can feel a tiny she runs the local inn and can provide lodging and supplies, should you need them."] = 92514,
				["You've got that 'High Order' look to you. Those with Highborne ancestry always seem to she runs the local inn and can provide lodging and supplies, should you need them."] = 93461
			}
		},
		["Camping 101: Alchemy"] = 	{
			["Raan Wildwind"] = 97963,
			["Eleanor Shackleton"] = 97951,
			["Kaga Wildhoof"] = 97927,
			["Сэм Сарсапарилла"] = 97915,
			["Vosur Brakthel"] = 96045,
			["Lyreena Duskblade"] = 97938,
			["Brakk"] = 97899
		},
		["Camping 101: Herbalism"] = 	{
			["Raan Wildwind"] = 97968,
			["Сэм Сарсапарилла"] = 97921,
			["Eleanor Shackleton"] = 97957,
			["Kaga Wildhoof"] = 97933,
			["Eric Brighthammer"] = 96055,
			["Brakk"] = 97905,
			["Lyreena Duskblade"] = 97944
		},
		["Camping 101: Cooking"] = 	{
			["npc 263664"] = 96646,
			["Сэм Сарсапарилла"] = 96626,
			["Eric Brighthammer"] = 96629,
			["Kaga Wildhoof"] = 96661,
			["Eleanor Shackleton"] = 96658,
			["Lyreena Duskblade"] = 96634,
			["Brakk"] = 96655
		},
		["The Great Outdoors"] = 	{
			["Raan Wildwind"] = 96101,
			["Сэм Сарсапарилла"] = 95998,
			["Eric Brighthammer"] = 96608,
			["Eleanor Shackleton"] = 96607,
			["Kaga Wildhoof"] = 96605,
			["Lyreena Duskblade"] = 96606,
			["Brakk"] = 96604
		},
		["Return to Rorian"] = 92469,
		["Agitators"] = 92465,
		["Restocking the Larders"] = 92553,
		["That Shadowvale Green Elixir"] = 95314,
		["Discipline"] = 99134,
		["The Goddess Provides"] = 97979,
		["Baited for Success"] = 99131,
		["Book Return"] = 91775,
		["Wayward Weapons"] = 97279,
		["Patience"] = 99141,
		["Stormy Potential"] = 97282,
		["Sticks and Bones"] = 86784,
		["A Missing Hand"] = 99048,
		["Grace of An'she and Mu'sha"] = 95805,
		["Shelf Picked"] = 97237,
		["Bottles and Baubles"] = 99143,
		["The Sisterhood of Elune"] = 98391,
		["WANTED: Jai'vhanel"] = 98025,
		["Secure the Mountain"] = 	{
			["Senir Whitebeard"] = 98322,
			["Mountaineer Gretchen"] = 		{
				["It's bad enough havin' a troll problem, but the mountains are filled tae the brim he is. And feel free to take out some the beasts while yer at it."] = 98319,
				["Hopefully ye put down a fair number of the mongrels while you were in there. tae pass along the message, $N. I'm not leavin' this spot till the mountain's secure."] = 98323
			}
		},
		["Detonation at a Distance"] = 	{
			["Jasper Fel"] = 92751,
			["Sprite Jumpsprocket"] = 92750
		},
		["Legging It"] = 96821,
		["Archaic Rune"] = 98581,
		["Follow That Kobold!"] = 91758,
		["Mining Consultant"] = 91745,
		["Bloodtalon Matriarch"] = 97223,
		["An Enchanting Lesson"] = 91753,
		["Easing Suffering"] = 99073,
		["Our Ancient Enemy"] = 99101,
		["Watching the Roads"] = 95981,
		["The New Plague"] = 95216,
		["Unrequited Love"] = 98461,
		["Hides for the Forsaken"] = 97558,
		["Book Inventory"] = 92124,
		["Threat from Below"] = 	{
			["Orgnil Soulscar"] = 		{
				["It wouldn't be the first time those snakes bothered us. They need to be taught back their fins as proof. We need to act fast to make sure they understand."] = 99051,
				["One of my scouts has reported a sea giant followed those naga down here. Not I need him gone. But I'd suggest you find some help to deal with it."] = 99052
			},
			["Heglan Shadeeye"] = 99049
		},
		["Longwalker Malah"] = 99079,
		["Beasts of Thunder Ridge"] = 96875,
		["A Difficult Path"] = 98601,
		["Expanding Horizons"] = 97914,
		["Stop the Spread"] = 98299,
		["Prompt Potion Runner"] = 97891,
		["Wrongly Blamed, Justly Corrected"] = 97250,
		["Never Saddle on Quality"] = 95212,
		["Unending Torment"] = 	{
			["Master Apothecary Faranell"] = 		{
				["I have concocted a lovely serum that our new guest is sure to find quite... to serve loyally. And try not to drop it. I can't afford a new assistant."] = 97292,
				["With the head reattached, all we need now is to bind it to the Dark Essence of Agony. Any old poison vendor should do. We have a potion to make!"] = 97291,
				["We craft abomination heads all the time, but this one is special. It belonged to next to the available body in the next room. But don't attach it. Not yet."] = 97289
			},
			["Unfinished Abomination"] = 97290,
			["Abominable Head"] = 97288
		},
		["The Cirrusfly Queen"] = 92463,
		["Harvesting Windstones"] = 93552,
		["The Western Watch"] = 93926,
		["A Student of the Arcane"] = 92481,
		["Havoc in the Highlands"] = 92550,
		["Camping 101: Skinning"] = 	{
			["npc 263664"] = 97971,
			["Eric Brighthammer"] = 96056,
			["Сэм Сарсапарилла"] = 97924,
			["Eleanor Shackleton"] = 97960,
			["Kaga Wildhoof"] = 97936,
			["Lyreena Duskblade"] = 97949,
			["Brakk"] = 97908
		},
		["Infiltrating the Cult"] = 93036,
		["Grund and Gozwin"] = 97277,
		["Treacherous Cold"] = 99162,
		["Vrang's Game"] = 95507,
		["Deliver the Signet"] = 93948,
		["Camping 101: Leatherworking"] = 	{
			["Raan Wildwind"] = 97969,
			["Eric Brighthammer"] = 96031,
			["Сэм Сарсапарилла"] = 97922,
			["Eleanor Shackleton"] = 97958,
			["Kaga Wildhoof"] = 97934,
			["Lyreena Duskblade"] = 97946,
			["Brakk"] = 97906
		},
		["Favorite Food"] = 97249,
		["Snowbound"] = 86667,
		["Rime's Wrath"] = 	{
			["Father Gavin"] = 		{
				["I noticed that the first elemental that appeared after the rockslide was larger than its if you could kill it and retrieve the core as proof, I will reward you."] = 99161,
				["You may have noticed the elementals nearby. A shelf of rock and ice fell from fighting anymore--so any of the spirits you can kill would help make the road safer."] = 99160
			}
		},
		["A Student of Nature"] = 92485,
		["Slimy Menace"] = 99128,
		["A Net Disaster"] = 99127,
		["The Lost Runner"] = 99046,
		["A Man About a Murloc"] = 99129,
		["Rough Wolf Pelts"] = 91751,
		["Bruised Pride and Lion Hides"] = 95494,
		["To Valanaar"] = 92579,
		["The Gift of Skysight"] = 92598,
		["Yelmak's Medley"] = 97242,
		["Reclaiming Sunstrider Isle"] = 8325,
		["Infestation Investigation"] = 92462,
		["Shhh! We're Hunting Kobolds"] = 91772,
		["Old Ironforge Incursion"] = 96393,
		["A Frightened Request"] = 92401,
		["Stolen Enchanting Supplies"] = 91725,
		["Murloc Gills"] = 92744,
		["Harvesting the Harvesters"] = 	{
			["Ozwin Ironsprocket"] = 		{
				["Oh no... I'm in for it now! I heard about the harvesters terrorizing the fields could build a device to cover my escape. Could you gather the parts for me?"] = 92909,
				["I see... this gives me some insight into what makes those monsters tick. I have you brought me. In the meantime, could you scrounge up some parts for the device?"] = 92911
			},
			["Precessive Autocognition Assembly"] = 92910
		},
		["The State of the Mines"] = 92745,
		["Delicate Instruments"] = 	{
			["Hamish Bergwort"] = 		{
				["Blast it! Every time I try to calibrate these sensitive arcane instruments, they get thrown crude magic. Could you clear some of them out, so I can continue my work?"] = 91723,
				["Almost there, and... By the Nether! Something is still disrupting my instruments. This is most you stop them, these disruptions will finally cease and I can get some work done?"] = 91724
			}
		},
		["Good Steel"] = 91732,
		["Testing the Wells"] = 92742,
		["Downstream"] = 91733,
		["The Restless Dead"] = 96394,
		["Nip 'Em in the Bud"] = 96390,
		["Meal Appeal"] = 97246,
		["As Above, So Below"] = 99152,
		["Farsen's Watch"] = 96392,
		["Camping 101: Fishing"] = 	{
			["Сэм Сарсапарилла"] = 97920,
			["Eric Brighthammer"] = 96050,
			["Kaga Wildhoof"] = 97932,
			["Eleanor Shackleton"] = 97956,
			["Raan Wildwind"] = 97967,
			["Lyreena Duskblade"] = 97943,
			["Brakk"] = 97904
		},
		["The Tarnished"] = 91317,
		["Bandarion Keep"] = 96899,
		["Making Repairs"] = 91316,
		["Continue Your Training"] = 91209,
		["Remnants of War"] = 96898,
		["The Big Picture"] = 91752,
		["A Token of Good Faith"] = 95803,
		["The Cult of the Damned"] = 96897,
		["The Wrath of Rath'mael"] = 92422,
		["A Light in the Darkness"] = 98389,
		["Rediscovering the Light"] = 90902,
		["The One That Got Away"] = 99153,
		["Camping 101: Blacksmithing"] = 	{
			["Сэм Сарсапарилла"] = 97916,
			["Eleanor Shackleton"] = 97952,
			["Kaga Wildhoof"] = 97928,
			["Eric Brighthammer"] = 96044,
			["Raan Wildwind"] = 97964,
			["Lyreena Duskblade"] = 97939,
			["Brakk"] = 97900
		},
		["Traditions of the Bluff"] = 97485,
		["Escaping Ban'ethil"] = 99053,
		["Camping 101: Mining"] = 	{
			["Сэм Сарсапарилла"] = 97923,
			["Eleanor Shackleton"] = 97959,
			["Kaga Wildhoof"] = 97935,
			["Eric Brighthammer"] = 96046,
			["Raan Wildwind"] = 97970,
			["Lyreena Duskblade"] = 97948,
			["Brakk"] = 97907
		},
		["For Honor"] = 96822,
		["A Lesson in Divinity"] = 	{
			["Tanis Alderwood"] = 		{
				["I don't know why you'd go out of your way to help me, but I tell them I appreciate them too. You'll always have a friend in Tanis Alderwood, $c."] = 94435,
				["Wait, you want to... help? Why would a $c want to help a beggar like least make her a wrapping to hold her together while we wait for the apothecaries."] = 94434
			},
			["Deathguard Billmuth"] = 		{
				["Falgan and I were sent on a mission to scout out scarlet activity in Venomweb hold them off for me. Please, find my friend and help him if you can."] = 94438,
				["Please give my thanks to Danitha Morr and tell her that the rest of the those like you among the ranks of the Forsaken. Dark Lady watch over you, $N."] = 94441
			},
			["Deathguard Falgan"] = 94440,
			["Danitha Morr"] = 		{
				["It's time to demonstrate your ability to channel one of the light's greatest gifts. The petitioned us for aid. Show him and the Forsaken what a true $c can do."] = 94436,
				["A key tenant of being a paladin is the pursuit of divinity. This is not the Trade Quarter. They are in need, and they could benefit greatly from some grace."] = 94427
			}
		},
		["Moonbrook Espionage"] = 92747,
		["Free the Hollows"] = 93172,
		["The Forest's Bounty"] = 93160,
		["Diplomatic Incident"] = 91858,
		["Not Dead Yet"] = 99047,
		["Stolen Blasting Powder"] = 	{
			["Quarrymaster Thesten"] = 95214,
			["Empty Powder Keg"] = 95213
		},
		["Fishin' Time"] = 95065,
		["Field to Clear"] = 98093,
		["Eyes of the Sentinels"] = 98067,
		["Camping 101: Tailoring"] = 	{
			["Eric Brighthammer"] = 96057,
			["Eleanor Shackleton"] = 97961,
			["Kaga Wildhoof"] = 97937,
			["Сэм Сарсапарилла"] = 97925,
			["Raan Wildwind"] = 97973,
			["Lyreena Duskblade"] = 97950,
			["Brakk"] = 96102
		},
		["Destruction in Deadmines"] = 	{
			["Alba Fairmoon"] = 		{
				["The source of the poison is likely a large metallurgical forge of some kind. Find can detonate the explosives. Hopefully with the forge gone, the land can begin to heal."] = 92753,
				["We are almost finished. Use the detonator, and end this. We are almost finished. Use the detonator, and end this."] = 92819
			}
		},
		["Explosive Consultation"] = 	{
			["Alba Fairmoon"] = 92748,
			["Sprite Jumpsprocket"] = 92752
		},
		["Camping 101: Engineering"] = 	{
			["Eleanor Shackleton"] = 97954,
			["Сэм Сарсапарилла"] = 97918,
			["Eric Brighthammer"] = 96058,
			["Strange Hermit"] = 98285,
			["Lyreena Duskblade"] = 97941,
			["Brakk"] = 97902
		},
		["Camping 101: Enchanting"] = 	{
			["Eleanor Shackleton"] = 97953,
			["Kaga Wildhoof"] = 97929,
			["Сэм Сарсапарилла"] = 97917,
			["Thonys Pillarstone"] = 96059,
			["Raan Wildwind"] = 98286,
			["Lyreena Duskblade"] = 97940,
			["Brakk"] = 97901
		},
		["A Second Home"] = 91282,
		["Coming to Terms"] = 91208,
		["The Strange Hermit"] = 93159,
		["A Visitor to Dun Morogh"] = 96408,
		["An Enticing Offer"] = 99130,
		["Rare Books"] = 91777,
		["Parts and Pieces"] = 97253,
		["Tomb Weed"] = 99142,
		["Business in Auberdine"] = 97894,
		["Show of Force"] = 98407,
		["Flintfire's Shipment"] = 98321,
		["Rascally Rodents"] = 91743,
		["Blackrock Blockade"] = 98387,
		["A Dynamite Plan"] = 92749,
		["WANTED: Bruuz"] = 92706,
		["Data Hoarders"] = 95041,
		["This Fruit Could Bite Back"] = 96825,
		["Wild Eyes"] = 91920,
		["Exploring the Alliance"] = 93963,
		["Twisting the Knife"] = 86758,
		["Drive Them Out"] = 99080,
		["Forgotten Loa Idols"] = 97225,
		["Journey to Sentinel Hill"] = 98021,
		["The High Chieftain"] = 99082,
		["Making Do"] = 97926,
		["The Argent Emissary"] = 96895,
		["Chakuyak"] = 96130,
		["It's All Fun and Games Until..."] = 98042,
		["Dawn in the Mountains"] = 99158,
		["Exploring the Horde"] = 93739,
		["Whuut's the Rush"] = 97275,
		["The Valor Family"] = 96139,
		["Ceasing Operations"] = 98427,
		["Thunderhorn's Report"] = 98435,
		["The Great Tree Provides"] = 99050,
		["Gatehouse Goods"] = 97222,
		["Holy Diver"] = 87760,
		["A Scribbled Letter"] = 92479,
		["Glyphic Parchment"] = 98576,
		["Hallowed Memorandum"] = 98574,
		["The Great Cat Spirit"] = 	{
			["Dendrite Starblaze"] = 98405,
			["Mathrengyl Bearwalker"] = 98393,
			["Turak Runetotem"] = 98340,
			["Great Cat Spirit"] = 98396
		},
		["The Oracle Tree"] = 98398,
		["Darkness in the Glade"] = 98392,
		["The Great Windborne Cat Spirit"] = 	{
			["Dendrite Starblaze"] = 98341,
			["Avatar of Saeyleenan"] = 98404
		},
		["Spoils of War"] = 98197,
		["Her Name Is Olgra"] = 95774,
		["Remember That I Love You"] = 	{
			["Orphan Matron Nightingale"] = 95161,
			["Blood-Stained Letter"] = 92415
		},
		["Confounding Flash"] = 	{
			["Maxan Anvol"] = 94824,
			["Priestess Josetta"] = 94822
		},
		["Return to Quinn (Again)"] = 91921,
		["Bloodfury Trinkets"] = 86576,
		["Tainted Tablet"] = 98575,
		["Sparring Match"] = 99108,
		["To Darnassus"] = 98397,
		["To Thunder Bluff"] = 98362,
		["This Is Spinal Axe"] = 96874,
		["Child of Nature"] = 	{
			["Archmage Ansirem Runeweaver"] = 94912,
			["Muln Earthfury"] = 94911,
			["Alfina Vistanoche"] = 94912
		},
		["Divine Grace"] = 94774,
		["Frosthowl"] = 98326,
		["Elemental Unrest"] = 92464,
		["Finding Warmth"] = 99159,
		["Al'Aketh Assassins"] = 98512,
		["The Way of the Hunter"] = 92482,
		["Pigments for Paints"] = 97538,
		["The Hermit Tanner"] = 95495,
		["The Warrior's Path"] = 92532,
		["Embracing the Elements"] = 92484,
		["At Home in the Shadows"] = 92483,
		["Soft Saber Pelts"] = 87288,
		["The Quarry's Smith"] = 95217,
		["Falling With Style"] = 92474,
		["The Anchors of Zephras"] = 94414,
		["The Problem With Prideclaws"] = 92515,
		["A Little Beauty"] = 93951,
		["Leonid's Letter"] = 98545,
		["Stolen Supplies"] = 92551,
		["Aid For The Refugees"] = 94896,
		["Catching Wind"] = 92840,
		["Crab Season"] = 93317,
		["A Magical Affront"] = 94413,
		["Among the Faithful"] = 92528,
		["Important Heirlooms"] = 96403,
		["Mercy Falls on Deaf Ears"] = 93165,
		["The Fate of a Loved One"] = 94897,
		["Fillion's Mission"] = 99260,
		["Deliver the News"] = 92703,
		["The Hills Have Eyes"] = 92685,
		["The Turncoat"] = 92643,
		["The High Elder's Request"] = 92881,
		["The Great Ursera Spirit"] = 94006,
		["Flutterfly Dust"] = 92683,
		["Ornery Ornery Galestriders"] = 92684,
		["Make Yourself Useful"] = 92682,
		["Feathers for Binding"] = 94486,
		["Bugged"] = 93949,
		["A Last Request"] = 93927,
		["Unwelcome Visitors"] = 92741,
		["Tower Defense"] = 93320,
		["Avenged Tenfold"] = 92834,
		["A Pain in the Neck"] = 96873,
		["Murlocs at the Gates"] = 91285,
		["Chol'aruk the Ravener"] = 	{
			["Gur'ak"] = 97003,
			["Bainham"] = 97005
		},
		["The Ties That Bind"] = 94488,
		["The Wounds of Betrayal"] = 94489,
		["Welcome to Azeroth"] = 	{
			["Denaaris Tempestrella"] = 94947,
			["Alaana Stormwalker"] = 95350
		},
		["The Fate of the Den"] = 94491,
		["Breaking the Breaker"] = 92645,
		["Disrupting Logistics"] = 92642,
		["In Service of Zephras"] = 	{
			["Elaadrin Evengale"] = 92860,
			["Ayessa Dawnsinger"] = 92871
		},
		["Grim Tidings"] = 99081,
		["A Grand Adventure"] = 	{
			["Elaadrin Evengale"] = 92709,
			["Ayessa Dawnsinger"] = 92708
		},
		["What Comes Next"] = 	{
			["Talaanis Shadowsong"] = 		{
				["Please extend my thanks to Elaadrin for all that the High Order and your new well, his mission will be all the stronger for it. Winds be with you, $N."] = 93089,
				["Please extend my thanks to Ayessa for all that the Windshapers and your new friends provide us with the stability we've lacked these past years. Winds be with you, $N."] = 93090
			}
		},
		["Unwanted and Unworthy"] = 94487,
		["Tears of the Lady"] = 94485,
		["The Supreme Magister"] = 92699,
		["The High Order"] = 92596,
		["A Righteous Cause"] = 96896,
		["Speak with Belann"] = 	{
			["Belann Windwood"] = 93791,
			["Anathamaas Aetherwind"] = 93791
		},
		["The Magical City of Dalaran"] = 94946,
		["The Fate of Zephras"] = 	{
			["Elaadrin Evengale"] = 94369,
			["Ayessa Dawnsinger"] = 93836
		},
		["Prepare for Battle"] = 93065,
		["The Missing Scholar"] = 	{
			["Fillion Flamebreeze"] = 92850,
			["Dondallion Whisperwind"] = 92727,
			["Bloodstained Satchel"] = 92849
		},
		["The Broken Construct"] = 	{
			["Riaani Nightwind"] = 		{
				["Oh, hello. Ayessa sent you to assist me? Very well then. Not sure what an construct's innards I might have a few ideas of things you can do to help."] = 93737,
				["Brightwish, eh? So the High Order wanted to remove these components for some reason. But you've learned back to Ayessa Dawnsinger. She can instruct you further on what to do."] = 93738
			},
			["Ayessa Dawnsinger"] = 93735
		},
		["The Longwalkers"] = 98430,
		["A Moon-Kissed Blade"] = 95036,
		["A Lack of Virtue"] = 98459,
		["A Curious Pair"] = 91859,
		["Ingredients for the Forge"] = 86776,
		["Banner of the Fallen"] = 86585,
		["Seeking Refuge"] = 99144,
		["Light's Justice"] = 92421,
		["The Grand Skyseer"] = 92700,
		["Unnerving Silence"] = 94484,
		["Reading Room"] = 97234,
		["Touring the Grounds"] = 91294,
		["A Grim Fate"] = 91860,
		["Lost in the Shadows"] = 99123,
		["Philmor's Favor"] = 97220,
		["Trouble in the Valley"] = 95621,
		["Old Fire-Eye"] = 95140,
		["The Moonsilver Blade"] = 95126,
		["Ott's Masterwork"] = 95125,
		["An Underrated Talent"] = 95111,
		["Falaath Village"] = 92529,
		["Standing Our Ground"] = 92693,
		["Return to Valanaar"] = 92880,
		["Reading the Ley Lines"] = 92597,
		["Desperate Times"] = 92640,
		["Boughs in the Wind"] = 93797,
		["The Cult's True Plans"] = 94568,
		["Unwelcome Guests"] = 95508,
		["The Debt"] = 95034,
		["A Sacrifice in Vain"] = 94493,
		["The Skybreaker Bulwark"] = 94003,
		["Unwelcome Spirits"] = 93736,
		["Making Our Move"] = 92947,
		["Confront Lorthuna"] = 93835,
		["The Windshaper's Wrath"] = 96204,
		["The Inner Sanctum"] = 93958,
		["Lumina Windsinger"] = 91862,
		["Blood Tithe"] = 92679,
		["Unfortunate News"] = 92644,
		["A Firm Response"] = 93746,
		["The Earthen Ring"] = 95349,
		["Blood for Blood"] = 93740,
		["... and that note you found"] = 	{
			["Burned-Out Remains"] = 79008,
			["Restos quemados"] = 79007
		},
		["Silver of the Waves"] = 86614,
		["Alchemical Hazards"] = 98282,
		["Stalk With The Earthmother"] = 	{
			["Boarton Shadetotem"] = 		{
				["I sense in you a hidden talent for the subtle arts, $c. Use this mask winning smile and a cunning distraction. I believe this capability lies within you as well."] = 76156,
				["Maybe your skills lie with poisons, not disguises. The Harpies to the north nest in salve will sear your opponent's wounds into their flesh and turn their blood to salt."] = 76160,
				["I have one last idea that may lead us to success. I still feel there to clean and fillet it. Do not think too hard - do what comes naturally."] = 76240
			}
		},
		["From the Ashes"] = 98221,
		["The Shamed Lieutenant"] = 98219,
		["Scout Support"] = 98094,
		["Power Overwhelming"] = 92489,
		["Earthen Echo"] = 98823,
		["Songblade Search"] = 95772,
		["Lost in the Thicket Things"] = 95647,
		["Bloom of the Heavens"] = 	{
			["Sylessa Duskwhisper"] = 		{
				["I came to Menethil Harbor from Auberdine, from the great tree Teldrassil, to recover a wreckage is just south of the city, but it is inhabited by fierce murloc raiders!"] = 98208,
				["Would you please deliver Nord'el to elder Thundris Windweaver in Auberdine? The boat from here here--and from fleeing those murloc devils when I first attempted to retrieve the sacred bloom!"] = 98209
			}
		},
		["Valuable Vantages"] = 98095,
		["Stonetalon Supply Run"] = 86574,
		["Vengeful Trail"] = 98417,
		["Open the Maw"] = 95682,
		["Kyle's Gone Missing!"] = 99411,
		["The Grave Knight"] = 96986,
		["The Guns of Northwatch"] = 891,
		["Bounty: Gnarlpine Furbolg"] = 490,
		["Never Coming Back"] = 98251,
		["Trying Times"] = 98246,
		["A Void Path"] = 98252,
		["Razormaw Needling"] = 98245,
		["Thundering Hearts"] = 97985,
		["Highland Hides"] = 98815,
		["Crocs of the Sky"] = 98072,
		["Source of Power"] = 96988,
		["Understanding Our Present"] = 98216,
		["Gleaning Our Future"] = 98310,
		["Wish You Were Here"] = 65610,
		["Prehistoric Prism"] = 98824,
		["Love Hurts"] = 65601,
		["What Is Love?"] = 65602,
		["This Land Was Their Land"] = 98230,
		["Bring Back a Bang"] = 88756,
		["Packaged Pristine Pelts"] = 98156,
		["Wet Job"] = 79974,
		["Scramble"] = 79980,
		["This Must Be The Place"] = 79976,
		["Forced Disarmament"] = 98293,
		["Changing Tastes"] = 95697,
		["A Green Sample"] = 92456,
		["Swelling Forces"] = 98013,
		["The Horn of Xelthos"] = 78261,
		["Death to the Dragonmaw"] = 98291,
		["WRIGGLE."] = 97583,
		["Seeking Caitlin"] = 95737,
		["Hearts of the Lovers"] = 65593,
		["An Alarming Request"] = 92432,
		["Syndicate Sabotage"] = 96779,
		["Brewer's Trade"] = 98071,
		["Heart of Disruption"] = 	{
			["Image of Archmage Modera"] = 		{
				["Whatever disturbed the ley lines, it started at the top of the Violet Citadel. A you've made your way into the city. We must put an end to this disruption."] = 92458,
				["You may not have our best interests at heart, but I won't deny an extra Scavenge what you will, but whatever happens, our first priority is to prevent a catastrophe."] = 96984
			}
		},
		["What's the Big Idea?"] = 96781,
		["Old Habits"] = 98223,
		["For Further Study"] = 98313,
		["Stronger than Steel"] = 96260,
		["Ira's Dagger"] = 	{
			["Bath'rah the Windwatcher"] = 96137,
			["Daga de Ira"] = 96137
		},
		["A Way In"] = 96783,
		["Pristine Pesterhide Pelts"] = 98155,
		["Stop the Screeching"] = 98070,
		["Elemental Aid"] = 	{
			["Veyric Thunderhame"] = 96264,
			["Prate Cloudseer"] = 79360
		},
		["Blessings of the Great Cat Spirit"] = 98731,
		["The Offering of Blood"] = 95885,
		["Hearts of the Lost"] = 87318,
		["Stolen Freewind Supplies"] = 98069,
		["Stopping the Cycle"] = 98297,
		["The Broodmother"] = 96261,
		["Talkin' bout Toxins, Mon"] = 96241,
		["Dragonmaw Rumors"] = 95663,
		["Word to Ironforge"] = 98300,
		["Hillsbrad's Hoard"] = 98059,
		["Heed My Call"] = 	{
			["Veyric Thunderhame"] = 96135,
			["Corrupted Totems"] = 79366
		},
		["Slowing the Orc Advance"] = 86757,
		["The Eye of Bhossca"] = 78676,
		["Talk of the Town"] = 98463,
		["Storm, Earth, and Fire"] = 	{
			["Veyric Thunderhame"] = 79358,
			["Twisted Water Totem"] = 79361
		},
		["The Tortured Soul"] = 95883,
		["Contingency Plan"] = 94819,
		["Into Fenris Keep"] = 91861,
		["Defending the Dead"] = 96259,
		["Accessories of the Lost"] = 88757,
		["Shared Fury"] = 98418,
		["Eagle's Fist"] = 79975,
		["Key to the City"] = 93680,
		["Friend of the Kirin Tor"] = 92459,
		["Starving Arcane"] = 92457,
		["The Tempest's Weapons"] = 	{
			["Veyric Thunderhame"] = 96016,
			["Rau Cliffrunner"] = 79442
		},
		["Trek Through the Caves"] = 77660,
		["Blood in the Streets"] = 92434,
		["Nibbled-On Book"] = 	{
			["Nibbled-On Book"] = 91741,
			["Angeknabbertes Buch"] = 91741
		},
		["Underground Map"] = 96391,
		["Merrick's Bow"] = 96138,
		["Fang of Githyiss"] = 97236,
		["Fizsprocket's Notes"] = 98424,
		["Grant's Shield"] = 79362,
		["Croaky's Head"] = 91740,
		["Bloodied Insignia"] = 95195,
		["Halikor's Hoof"] = 96877,
		["Crest of Lordaeron"] = 	{
			["Crest of Lordaeron"] = 		{
				["<A weathered crest depicting the mark of Lordaeron. With so few relics left after the kingdom's fall, someone in Stormwind would be very keen to get their hands on this.>"] = 95189,
				["<A weathered crest depicting the mark of Lordaeron. With so few relics left after the fall, someone in the Undercity would be very keen to get their hands on this.>"] = 95204
			}
		},
		["Ukor's Lost Pack"] = 96876,
		["Baron Marinous"] = 98028,
		["Elmpaw's Head"] = 91746,
		["Excavation Tools"] = 86613,
		["The Treaty of Understanding"] = 98423,
		["Silvia's Sword"] = 79363,
		["Craftsman's Writ: Spider Silk Slippers"] = 94255,
		["Craftsman's Writ: Green Iron Gauntlets"] = 94226,
		["Craftsman's Writ: Silver Skeleton Key"] = 94223,
		["Craftsman's Writ: Gnomish Universal Remote"] = 94235,
		["Craftsman's Writ: Goblin Land Mine"] = 94283,
		["Craftsman's Writ: Green Iron Boots"] = 94228,
		["Craftsman's Writ: Herbalist's Gloves"] = 94240,
		["Craftsman's Writ: Fine Leather Pants"] = 94239,
		["Craftsman's Writ: Red Whelp Gloves"] = 94246,
		["Craftsman's Writ: Heavy Quiver"] = 94243,
		["Craftsman's Writ: Ornate Spyglass"] = 94229,
		["Craftsman's Writ: Lesser Wizard's Robe"] = 94247,
		["Craftsman's Writ: Soul Pouch"] = 94360,
		["Craftsman's Writ: Ghostweave Vest"] = 94359,
		["Craftsman's Writ: Shadoweave Mask"] = 94358,
		["Craftsman's Writ: Cenarion Herb Bag"] = 94357,
		["Craftsman's Writ: Felcloth Boots"] = 94356,
		["Craftsman's Writ: Tuxedo Jacket"] = 94355,
		["Craftsman's Writ: Runecloth Boots"] = 94354,
		["Craftsman's Writ: Runecloth Bag"] = 94353,
		["Craftsman's Writ: Wizardweave Turban"] = 94352,
		["Craftsman's Writ: Frostsaber Boots"] = 94351,
		["Craftsman's Writ: Runic Leather Bracers"] = 94350,
		["Craftsman's Writ: Heavy Scorpid Helm"] = 94349,
		["Craftsman's Writ: Chimeric Vest"] = 94348,
		["Craftsman's Writ: Wicked Leather Bracers"] = 94347,
		["Craftsman's Writ: Runic Leather Headband"] = 94346,
		["Craftsman's Writ: Volcanic Breastplate"] = 94345,
		["Craftsman's Writ: Gordok Ogre Suit"] = 94344,
		["Craftsman's Writ: Wicked Leather Pants"] = 94343,
		["Craftsman's Writ: Tranquil Mechanical Yeti"] = 94342,
		["Craftsman's Writ: Sniper Scope"] = 94341,
		["Craftsman's Writ: Truesilver Transformer"] = 94340,
		["Craftsman's Writ: Field Repair Bot 74A"] = 94339,
		["Craftsman's Writ: Goblin Jumper Cables XL"] = 94338,
		["Craftsman's Writ: Gnomish Alarm-O-Bot"] = 94337,
		["Craftsman's Writ: Lifelike Mechanical Toad"] = 94336,
		["Craftsman's Writ: Green Lens"] = 94335,
		["Craftsman's Writ: Masterwork Target Dummy"] = 94334,
		["Craftsman's Writ: Ebon Shiv"] = 94333,
		["Craftsman's Writ: Arcanite Skeleton Key"] = 94332,
		["Craftsman's Writ: Huge Thorium Battleaxe"] = 94331,
		["Craftsman's Writ: Darkrune Gauntlets"] = 94330,
		["Craftsman's Writ: Imperial Plate Chest"] = 94329,
		["Craftsman's Writ: Mithril Spurs"] = 94328,
		["Craftsman's Writ: Orcish War Leggings"] = 94327,
		["Craftsman's Writ: Radiant Belt"] = 94326,
		["Craftsman's Writ: Radiant Circlet"] = 94325,
		["Craftsman's Writ: Distilled Firewater"] = 94324,
		["Craftsman's Writ: Major Rejuvenation Potion"] = 94323,
		["Craftsman's Writ: Limited Invulnerability Potion"] = 94322,
		["Craftsman's Writ: Flask of Chromatic Resistance"] = 94321,
		["Craftsman's Writ: Gift of Arthas"] = 94320,
		["Craftsman's Writ: Draught of Detect Demon"] = 94319,
		["Craftsman's Writ: Greater Fire Protection Potion"] = 94318,
		["Craftsman's Writ: Dreamless Sleep Potion"] = 94317,
		["Craftsman's Writ: Potion of Demonslaying"] = 94316,
		["Craftsman's Writ: Earthen Silk Belt"] = 94315,
		["Craftsman's Writ: Cindercloth Robe"] = 94314,
		["Craftsman's Writ: White Bandit Mask"] = 94313,
		["Craftsman's Writ: Orange Martial Shirt"] = 94312,
		["Craftsman's Writ: Red Mageweave Pants"] = 94311,
		["Craftsman's Writ: Black Mageweave Vest"] = 94310,
		["Craftsman's Writ: Star Belt"] = 94309,
		["Craftsman's Writ: Enchanted Mageweave Pouch"] = 94308,
		["Craftsman's Writ: Shadoweave Robe"] = 94307,
		["Craftsman's Writ: Crimson Silk Robe"] = 94306,
		["Craftsman's Writ: Shadoweave Gloves"] = 94305,
		["Craftsman's Writ: Mageweave Bag"] = 94304,
		["Craftsman's Writ: Thick Leather Ammo Pouch"] = 94303,
		["Craftsman's Writ: Turtle Scale Breastplate"] = 94302,
		["Craftsman's Writ: Big Voodoo Robe"] = 94301,
		["Craftsman's Writ: Big Voodoo Mask"] = 94300,
		["Craftsman's Writ: Nightscape Shoulders"] = 94299,
		["Craftsman's Writ: Swift Boots"] = 94298,
		["Craftsman's Writ: Quickdraw Quiver"] = 94297,
		["Craftsman's Writ: Wild Leather Shoulders"] = 94296,
		["Craftsman's Writ: Wild Leather Helmet"] = 94295,
		["Craftsman's Writ: Dusky Bracers"] = 94294,
		["Craftsman's Writ: Guardian Cloak"] = 94293,
		["Craftsman's Writ: Comfortable Leather Hat"] = 94292,
		["Craftsman's Writ: Dark Iron Bomb"] = 94291,
		["Craftsman's Writ: Mechanical Repair Kit"] = 94290,
		["Craftsman's Writ: Gyromatic Micro-Adjuster"] = 94289,
		["Craftsman's Writ: Mithril Frag Bomb"] = 94288,
		["Craftsman's Writ: Fire Goggles"] = 94287,
		["Craftsman's Writ: Flash Bomb"] = 94286,
		["Craftsman's Writ: Unstable Trigger"] = 94285,
		["Craftsman's Writ: Catseye Ultra Goggles"] = 94284,
		["Craftsman's Writ: Craftsman's Monocle"] = 94282,
		["Craftsman's Writ: Advanced Target Dummy"] = 94281,
		["Craftsman's Writ: Mechanical Dragonling"] = 94280,
		["Craftsman's Writ: Heavy Mithril Axe"] = 94279,
		["Craftsman's Writ: Golden Scale Gauntlets"] = 94278,
		["Craftsman's Writ: Truesilver Rod"] = 94277,
		["Craftsman's Writ: Wicked Mithril Blade"] = 94276,
		["Craftsman's Writ: Solid Sharpening Stone"] = 94275,
		["Craftsman's Writ: Golden Scale Coif"] = 94274,
		["Craftsman's Writ: Moonsteel Broadsword"] = 94273,
		["Craftsman's Writ: Blue Glittering Axe"] = 94272,
		["Craftsman's Writ: Goblin Rocket Fuel"] = 94265,
		["Craftsman's Writ: Shadow Oil"] = 94264,
		["Craftsman's Writ: Ornate Mithril Shoulders"] = 94271,
		["Craftsman's Writ: Steel Weapon Chain"] = 94270,
		["Craftsman's Writ: Inlaid Mithril Cylinder"] = 94269,
		["Craftsman's Writ: Steel Plate Helm"] = 94268,
		["Craftsman's Writ: Wildvine Potion"] = 94267,
		["Craftsman's Writ: Elixir of Agility"] = 94266,
		["Craftsman's Writ: Fire Protection Potion"] = 94263,
		["Craftsman's Writ: Mana Potion"] = 94262,
		["Craftsman's Writ: Great Rage Potion"] = 94261,
		["Craftsman's Writ: Catseye Draught"] = 94260,
		["Craftsman's Writ: Nature Protection Potion"] = 94259,
		["Craftsman's Writ: Lesser Stoneshield Potion"] = 94258,
		["Craftsman's Writ: Lesser Invisibility Potion"] = 94257,
		["Craftsman's Writ: Frost Protection Potion"] = 94256,
		["Craftsman's Writ: Greater Adept's Robe"] = 94254,
		["Craftsman's Writ: Colorful Kilt"] = 94253,
		["Craftsman's Writ: Red Woolen Boots"] = 94252,
		["Craftsman's Writ: Phoenix Pants"] = 94251,
		["Craftsman's Writ: Small Silk Pack"] = 94250,
		["Craftsman's Writ: Azure Silk Hood"] = 94249,
		["Craftsman's Writ: Blue Overalls"] = 94248,
		["Craftsman's Writ: Barbaric Gloves"] = 94245,
		["Craftsman's Writ: Pilferer's Gloves"] = 94242,
		["Craftsman's Writ: Dark Leather Shoulders"] = 94244,
		["Craftsman's Writ: Dark Leather Tunic"] = 94241,
		["Craftsman's Writ: Heavy Leather Ball"] = 94238,
		["Craftsman's Writ: Crafted Solid Shot"] = 94237,
		["Craftsman's Writ: Big Bronze Bomb"] = 94236,
		["Craftsman's Writ: Shadow Goggles"] = 94234,
		["Craftsman's Writ: Practice Lock"] = 94233,
		["Craftsman's Writ: Minor Recombobulator"] = 94232,
		["Craftsman's Writ: Moonsight Rifle"] = 94231,
		["Craftsman's Writ: Explosive Sheep"] = 94230,
		["Craftsman's Writ: Big Bronze Knife"] = 94227,
		["Craftsman's Writ: Rough Bronze Leggings"] = 94225,
		["Craftsman's Writ: Heavy Bronze Mace"] = 94224,
		["Craftsman's Writ: Golden Rod"] = 94221,
		["Craftsman's Writ: Iridescent Hammer"] = 94222,
		["Craftsman's Writ: Pearl-Handled Dagger"] = 94220,
		["Craftsman's Writ: Draught of Water Breathing"] = 94219,
		["Craftsman's Writ: Elixir of Defense"] = 94218,
		["Craftsman's Writ: Lesser Troll's Blood Elixir"] = 94217,
		["Craftsman's Writ: Elixir of Lesser Agility"] = 94216,
		["Craftsman's Writ: Free Action Potion"] = 94215,
		["Craftsman's Writ: Shadow Protection Potion"] = 94214,
		["Craftsman's Writ: Lesser Mana Potion"] = 94213,
		["Craftsman's Writ: Elixir of Wisdom"] = 94212,
		["Craftsman's Writ: Elixir of Ogre's Strength"] = 94004,
		["Ripped Missive"] = 94490,
		["Shipping Label"] = 	{
			["Shipping Label"] = 98247,
			["Versandetikett"] = 98248
		},
		["The Offering Stone"] = 95884,
		["Whispering Horror Residue"] = 95328,
		["A Darker Truth"] = 	{
			["Bloody Parchment"] = 96294,
			["Blutiges Pergament"] = 96294
		},
		["Abominable Creatures"] = 95250,
		["Elder Knowledge"] = 95664,
		["Shrewd Negotiations"] = 97287,
		["Heartwoven"] = 95809,
		["Crimson Crate Delivery"] = 98240,
		["The Cook in the Cage"] = 97047,
		["A Strange Artifact"] = 78088,
		["Lost Relic Carry"] = 95810,
		["Terror of the Desert Skies"] = 	{
			["Primitive Drawing"] = 78823,
			["Hemet Nesingwary"] = 78830
		},
		["Conflict at Darkspear Islands"] = 98887,
		["Ancient Gurubashi Idol"] = 96774,
		["Gleaming Crescent Necklace"] = 98027,
		["Sign Me Up!"] = 	{
			["Advertising License Application"] = 		{
				["Greetings, accomplished craftsperson! Completion of this form will grant you non-exclusive, revocable, and legally limited this to your local Durotar Supply & Logistics Contract Coordinator to begin processing. Happy crafting!"] = 95819,
				["Greetings, accomplished craftsperson! Completion of this form will grant you non-exclusive, revocable, and legally limited this to your local Azeroth Commerce Authority branch's Contract Coordinator to begin processing. Happy crafting!"] = 95816
			}
		},
		["More Al'Aketh Ears"] = 93459,
		["A Simmering Storm"] = 97281,
		["The Syndicate Sting"] = 96786,
		["Master of Disguise"] = 96784,
		["Ain't No Telling"] = 96785,
		["Relics of the Light"] = 	{
			["Brother Sammuel"] = 77617,
			["Bromos Grummner"] = 77657
		},
		["A Friend of the Family"] = 	{
			["Captain Stoutfist"] = 98190,
			["Highlord Bolvar Fordragon"] = 98191
		},
		["Spark of Freedom"] = 87491,
		["Past Due"] = 96800,
		["Advice From Stormwind"] = 78089,
		["Earning Your Salt"] = 78091,
		["It Must Be Destroyed"] = 78092,
		["Return to Delgren"] = 78093,
		["Highway Robbery"] = 79229,
		["On the Lam"] = 79235,
		["Cherry for Your Thoughts?"] = 79236,
		["No Honor Among Thieves"] = 79242,
		["Eyes on the Sky"] = 79364,
		["With Wind Beneath Your Wings"] = 79365,
		["A Conqueror's Crown"] = 92743,
		["Valley of Bones"] = 	{
			["Warug"] = 92841,
			["Uthek the Wise"] = 93034
		},
		["Carved Centaur Totems"] = 	{
			["Captain Pentigast"] = 93224,
			["Gurda Wildmane"] = 93225
		},
		["Buying Friendship: Gelkis"] = 	{
			["Captain Pentigast"] = 93227,
			["Gurda Wildmane"] = 94873
		},
		["This Light of Mine"] = 93585,
		["Lost in Transit"] = 93663,
		["Buying Friendship: Magram"] = 94872,
		["The Gurubashi Legends of Old"] = 95748,
		["Sentiments of the Lost"] = 88758,
		["Ward Restocking"] = 92519,
		["Hate the Hatefury"] = 97265,
		["Vahlarriel's Vengeance"] = 97284,
		["Anything of Value"] = 97328,
		["A Second Opinion"] = 78090,
		["Your Package Has Arrived"] = 97263,
		["Blessings of the Great Windborne Cat Spirit"] = 98738,
		["The Battle for Darkspear Islands!"] = 	{
			["Nizuk Buf"] = 98906,
			["Brelinda McFarry"] = 98903
		},
		["Rocks to Rests"] = 97326,
		["Strength and Mercy"] = 94638,
		["Of Mice and Milk"] = 93928,
		["What Is My Purpose?"] = 92698,
		["Darkspear Islands Clash"] = 98895,
		["WANTED: Incinerator Gar'im"] = 95999,
		["Nature's Call"] = 97977,
		["My First Real Potion"] = 92110,
		["My First Alchemy Set"] = 92109,
		["Horrors in the Highland"] = 95646,
		["Carnage"] = 98283,
		["Stepping Stones"] = 79192,
		["Silky Sutures"] = 97539
	},
	["complete"] = {
		["Wolves Across the Border"] = 33,
		["Eagan Peltskinner"] = 5261,
		["Kobold Camp Cleanup"] = 7,
		["Investigate Echo Ridge"] = 15,
		["Skirmish at Echo Ridge"] = 21,
		["A Threat Within"] = 783,
		["Glyphic Letter"] = 3104,
		["The Killing Fields"] = 9,
		["The People's Militia"] = 	{
			["Gryan Stoutmantle"] = 		{
				["Well done, $n. My scout witnessed your valiant acts. You are proving yourself quite well $n. My scout witnessed your valiant acts. You are proving yourself quite well so far."] = 12,
				["Your worth to The People's Militia has been validated by your brave acts thus far. Your worth to The People's Militia has been validated by your brave acts thus far."] = 13,
				["When I left the tainted lands of Lordaeron I returned to a grim state of pride that I induct thee into The People's Militia. May the Light shine upon you."] = 14
			}
		},
		["Report to Gryan Stoutmantle"] = 109,
		["The Defias Brotherhood"] = 	{
			["Gryan Stoutmantle"] = 		{
				["Bah! I should have let that scoundrel rot when I had the chance. But this that scoundrel rot when I had the chance. But this information is crucial. Good work."] = 132,
				["Edwin VanCleef. . .I know the name well. To think that a man so industrious turn into such a scoundrel unnerves me. I'll need further proof before I believe this."] = 141,
				["This is indeed firm proof that VanCleef is in charge. Now all we need to so he can reveal the hideout. Return to me once you have uncovered the location."] = 142,
				["Most excellent, $N! VanCleef is as good as ours now that we know where he $N! VanCleef is as good as ours now that we know where he is hiding."] = 155,
				["$N, your bravery is remarkable. The People's Militia thanks you for your service to the once again grace the plains of this fair land. I salute you, $g Sir : Lady;!"] = 166
			},
			["Wiley the Black"] = 65,
			["Master Mathias Shaw"] = 135
		},
		["Messenger to Westfall"] = 	{
			["Gryan Stoutmantle"] = 143,
			["Magistrate Solomon"] = 144
		},
		["Goretusk Liver Pie"] = 22,
		["Westfall Stew"] = 	{
			["Salma Saldean"] = 		{
				["That Verna was always such a sweet lass. We'll miss her here in Westfall but Stormwind will suit her just fine. But enough gossip! Now we can make Westfall Stew!"] = 36,
				["That Okra will thicken up this broth nicely! Now we just add the Stringy Vulture all your help, $n, I want you to take today's first batch of Westfall Stew!"] = 38
			}
		},
		["The Forgotten Heirloom"] = 64,
		["Furlbrow's Deed"] = 184,
		["Poor Old Blanchy"] = 151,
		["Sweet Amber"] = 	{
			["Grimbooze Thunderbrew"] = 		{
				["Hiccup! Ho Ho! Hiccup! Ho Ho!"] = 48,
				["Hiccup! Ho ho! Hiccup! Ho ho!"] = 49,
				["Aged in the barrel, filtered through coal It passes your lips and right through your soul. So lets us drink now, a toast to you And me while we're at it, Grimbooze Thunderbrew!"] = 53
			}
		},
		["Thunderbrew"] = 117,
		["Deliver Thomas' Report"] = 39,
		["A Fishy Peril"] = 40,
		["Report to Goldshire"] = 54,
		["The Fargodeep Mine"] = 62,
		["The Jasperlode Mine"] = 76,
		["The Collector"] = 123,
		["Manhunt"] = 147,
		["Wanted:  'Hogger'"] = 176,
		["Gold Dust Exchange"] = 47,
		["Princess Must Die!"] = 88,
		["Pie for Billy"] = 86,
		["Goldtooth"] = 87,
		["Speak with Gramma"] = 111,
		["The Escape"] = 	{
			["Maybell Maclure"] = 114,
			["Sputtervalve"] = 863
		},
		["Young Lovers"] = 106,
		["Kobold Candles"] = 60,
		["Note to William"] = 107,
		["Collecting Kelp"] = 112,
		["Give Gerard a Drink"] = 16,
		["Further Concerns"] = 35,
		["Bounty on Murlocs"] = 46,
		["Protect the Frontier"] = 52,
		["Report to Thomas"] = 71,
		["Messenger to Darkshire"] = 	{
			["Lord Ello Ebonlocke"] = 145,
			["Magistrate Solomon"] = 146
		},
		["Note to the Mayor"] = 160,
		["Translation to Ello"] = 252,
		["Bride of the Embalmer"] = 253,
		["The Night Watch"] = 	{
			["Commander Althea Ebonlocke"] = 		{
				["Splendid, $n. For your service to the people of Darkshire you shall be rewarded. Splendid, $n. For your service to the people of Darkshire you shall be rewarded."] = 56,
				["The people of Darkshire thank you, $n. You have proven yourself to be a great you, $n. You have proven yourself to be a great ally of The Night Watch."] = 57,
				["On behalf of the people of Darkshire and as the Leader of the Night Watch, thank you, $N, for your bravery and dedication. May the Light shine upon your ways."] = 58
			}
		},
		["The Legend of Stalvan"] = 	{
			["Commander Althea Ebonlocke"] = 		{
				["My, you have proved yourself to be quite a detective, $c. My, you have proved yourself to be quite a detective, $c."] = 79,
				["I knew it! Fine work, $N. I knew it! Fine work, $N."] = 97
			},
			["Madame Eva"] = 98,
			["Clerk Daltry"] = 		{
				["Ah so Madame Eva sent you. . . . Ah so Madame Eva sent you. . . ."] = 66,
				["Interesting. So the chap did spend some time in Moonbrook after all. It is rather It is rather odd the letter never got delivered. Nonetheless, I shall update the registry."] = 68,
				["Why yes! The writing on this page does in fact match that of the registry yes! The writing on this page does in fact match that of the registry signatures."] = 80
			},
			["Tavernkeep Smitts"] = 78,
			["Marshal Haggard"] = 		{
				["I can barely make out those letters. But that writing style reminds me of something writing style reminds me of something I once saw before my vision became so poor."] = 74,
				["You found it! You found it!"] = 75
			},
			["Innkeeper Farley"] = 69,
			["Caretaker Folsom"] = 70,
			["Old Footlocker"] = 67,
			["Sealed Crate"] = 72
		},
		["Morgan Ladimore"] = 227,
		["Mor'Ladim"] = 228,
		["The Totem of Infliction"] = 101,
		["Supplies from Darkshire"] = 148,
		["Return the Comb"] = 154,
		["The Shadowy Figure"] = 262,
		["The Shadowy Search Continues"] = 265,
		["The Caravan Road"] = 1041,
		["The Weathered Grave"] = 225,
		["Translate Abercrombie's Note"] = 251,
		["Wait for Sirra to Finish"] = 401,
		["Crime and Punishment"] = 377,
		["Ambushed In The Forest"] = 	{
			["Ambassador Berrybuck"] = 172,
			["Orcish Orphan"] = 172
		},
		["Children's Week"] = 	{
			["Ambassador Berrybuck"] = 172,
			["Human Orphan"] = 1468,
			["Orcish Orphan"] = 172
		},
		["Jitters' Growling Gut"] = 5,
		["Seasoned Wolf Kabobs"] = 90,
		["Dusky Crab Cakes"] = 93,
		["Gather Rot Blossoms"] = 156,
		["Zombie Juice"] = 158,
		["Inquire at the Inn"] = 266,
		["Look To The Stars"] = 	{
			["Viktori Prism'Antras"] = 		{
				["This is perfect, $N. The first step is complete! This is perfect, $N. The first step is complete!"] = 174,
				["Most superb! This will work perfectly. Many thanks! Most superb! This will work perfectly. Many thanks!"] = 177,
				["At last! The stargazing device is complete! Thank you, $N. Now I can continue my stargazing device is complete! Thank you, $N. Now I can continue my research. . ."] = 181
			},
			["Blind Mary"] = 175
		},
		["Cloth and Leather Armor"] = 59,
		["Red Linen Goods"] = 83,
		["Shipment to Stormwind"] = 61,
		["Aristan's Hunch"] = 9024,
		["Raven Hill"] = 163,
		["Return to Jitters"] = 240,
		["Finding the Shadowy Figure"] = 453,
		["Ghoulish Effigy"] = 133,
		["Ogre Thieves"] = 134,
		["Deliver the Thread"] = 157,
		["Juice Delivery"] = 159,
		["The Hermit"] = 165,
		["Marshal Haggard"] = 1666,
		["Dead-tooth Jack"] = 1667,
		["Rest and Relaxation"] = 2158,
		["Morbent Fel"] = 55,
		["Deliveries to Sven"] = 164,
		["Sven's Camp"] = 230,
		["Return to Sven"] = 268,
		["Proving Your Worth"] = 323,
		["Armed and Ready"] = 325,
		["Theocritus' Retrieval"] = 178,
		["Morganth"] = 249,
		["Shadow of the Past"] = 393,
		["The Head of the Beast"] = 394,
		["Seek out SI: 7"] = 2205,
		["Snatch and Grab"] = 2206,
		["Klaven's Tower"] = 2359,
		["The First and the Last"] = 6182,
		["Honor the Dead"] = 6183,
		["The Everstill Bridge"] = 89,
		["The Lost Tools"] = 125,
		["Ink Supplies"] = 345,
		["An Unwelcome Guest"] = 34,
		["Visit the Herbalist"] = 130,
		["Redridge Goulash"] = 92,
		["Messenger to Stormwind"] = 	{
			["Magistrate Solomon"] = 121,
			["General Marcus Jonathan"] = 120
		},
		["Wanted: Gath'Ilzogg"] = 169,
		["Wanted: Lieutenant Fangore"] = 180,
		["The True Masters"] = 	{
			["Magistrate Solomon"] = 		{
				["<Magistrate Solomon opens the sealed letter from Helendis and begins reading.> <Magistrate Solomon opens the sealed letter from Helendis and begins reading.>"] = 4183,
				["It could have been worse, I suppose... <Magistrate Solomon looks you over.> It appears as if the rests squarely on your shoulders. <You notice Magistrate Solomon blinking rapidly. He appears to be crying.>"] = 4186
			},
			["Marshal Maxwell"] = 		{
				["<Marshal Maxwell laughs.> <Marshal Maxwell laughs.>"] = 4223,
				["I could have warned you, but what fun is that? I could have warned you, but what fun is that?"] = 4224
			},
			["Highlord Bolvar Fordragon"] = 		{
				["Dragons? Impossible! Dragons? Impossible!"] = 4184,
				["<Bolvar cups his chin as if in deep thought.> While I respect Lady Prestor's stance, I is a solution to this dilemma that may put all of our concerns to rest."] = 4185
			}
		},
		["Dry Times"] = 116,
		["Dungar Longdrink"] = 6261,
		["Hallowed Letter"] = 3103,
		["Desperate Prayer"] = 	{
			["High Priestess Laurena"] = 		{
				["You have done the Light a great service by becoming a shining example to those dangerous lands and beyond. Please, accept this lesson as a thanks for all you've done."] = 5634,
				["I'm glad you've arrived, $n. There are many things we will have to discuss, but the Light must learn. If you are ready, we'll begin discussing some of those now."] = 5635
			}
		},
		["Arcane Feedback"] = 	{
			["High Priestess Laurena"] = 		{
				["We were forced to learn some magics to protect us from what is commonly called to help you defend yourself and your companions from those who would wield such power."] = 5676,
				["Ah, you have wonderful timing, $n. I was beginning to wonder if all of my power more quickly, and I feel you are ready to learn more about our faith."] = 5677
			}
		},
		["In Favor of the Light"] = 	{
			["Priestess Josetta"] = 5623,
			["Maxan Anvol"] = 5626
		},
		["Garments of the Light"] = 	{
			["Priestess Josetta"] = 5624,
			["Maxan Anvol"] = 5625
		},
		["Delivering Daffodils"] = 131,
		["Selling Fish"] = 127,
		["Murloc Poachers"] = 150,
		["Tharil'zun"] = 19,
		["Blackrock Menace"] = 20,
		["Shadow Magic"] = 115,
		["Missing In Action"] = 219,
		["White Stallion Exchange"] = 7677,
		["Palomino Exchange"] = 7678,
		["Return to Verner"] = 119,
		["Underbelly Scales"] = 122,
		["A Baying of Gnolls"] = 124,
		["Howling in the Hills"] = 126,
		["Gearing Redridge"] = 1618,
		["The Stolen Tome"] = 1598,
		["Tainted Letter"] = 3105,
		["Beginnings"] = 1599,
		["Tainted Memorandum"] = 3115,
		["A Free Lunch"] = 129,
		["Colonel Kurzen"] = 202,
		["Jungle Secrets"] = 215,
		["The Spy Revealed!"] = 329,
		["Report to Doren"] = 331,
		["Special Forces"] = 574,
		["Look to an Old Friend"] = 350,
		["The Attack!"] = 434,
		["The Missing Diplomat"] = 	{
			["Elling Trias"] = 		{
				["I'm sorry, a letter for me? Well, I'll be... not often you get a delivery up at you while he opens the letter.> You look a little tense, you okay, $N?"] = 1242,
				["Yeah... this is an interesting read. Jorgen and DeLavey were smart to bring me in hard to complete this plan of theirs. Hmm... what's this? 'Fist'? That's a familiar name."] = 1245,
				["Good to see you're still alive, $N. So, it went well with Dashel then, huh? I've other name written here, but if you say he's in Menethil, then that's a start."] = 1247
			},
			["Watcher Backus"] = 		{
				["Oh, Trias sent you, huh? That's a little different. Feel free to fight whatever monstrosities come him. So, what does my friend need of me on such a gloomy day as this?"] = 1243,
				["You're back safe and sound. Couldn't ask for much more than that, could you? Now, let's a dupe just to throw you off track of whatever it is you're looking for."] = 1244
			},
			["Jorgen"] = 1241,
			["Bishop DeLavey"] = 1274,
			["Dashel Stonefist"] = 		{
				["What?! You come into me alley and ask questions about me personal business? Business which you ask questions about me personal business? Business which you obviously have nothing to do with."] = 1246,
				["So, you came to me for a reason. What is it you need? So, you came to me for a reason. What is it you need?"] = 1447
			},
			["Mikhail"] = 		{
				["Welcome, welcome, welcome, $N. Good of you to join us. Perhaps an ale today? Or your voice down, my friend. This isn't something for the whole tavern to hear about."] = 1248,
				["Caught him, huh? Good for you. I'm surprised that was Slim. I'll be honest, I never service to you while you were in Menethil. If you need anything else, just ask."] = 1249,
				["THE KING?! I mean... the king? The real king? Are you joking? You didn't mention key now is to find this Hendel. And I think I can help with that."] = 1250
			},
			["Commander Samaul"] = 1264,
			["Private Hendel"] = 1266,
			["Archmage Tervosh"] = 		{
				["The man you seek, the one known as Hendel, is not here. Other sources have will tell you where to find Private Hendel so we can bring him to justice."] = 1265,
				["I assure you, we're all quite upset about current events, but allow us to take like to thank you for your help. Speak to her when you have a moment."] = 1324
			},
			["Lady Jaina Proudmoore"] = 1267
		},
		["Return to Lewis"] = 6285,
		["The Price of Shoes"] = 118,
		["A Swift Message"] = 6181,
		["The Daughter Who Lived"] = 229,
		["A Plague Upon Thee"] = 	{
			["Nathaniel Dumah"] = 		{
				["These will do nicely, $N. Thank you. Just look at them... so many of them the Crusade, but then again, it was never their mill to take, now, was it?"] = 5903,
				["Haha! Thank you, $N! You've done it! My father's spirit can now rest and I peace. Thank you again. If there is anything I can do for you, please, just ask."] = 6389
			},
			["Mickey Levine"] = 		{
				["These will do nicely, $N. Thank you. If you're ready, we can get on with the do nicely, $N. Thank you. If you're ready, we can get on with the next step."] = 5901,
				["Thank you, $N. Here, take this coin. I'm sorry it's not more, but try to not more, but try to take some joy in helping destroy the Scarlet Crusade's efforts!"] = 6390
			},
			["Termite Barrel"] = 5902
		},
		["Oh Brother. . ."] = 167,
		["Collecting Memories"] = 168,
		["Dwarven Outfitters"] = 179,
		["Worgen in the Woods"] = 	{
			["Jonathan Carevin"] = 223,
			["Calor"] = 		{
				["Impressive, $n. It would seem that you are capable enough to handle yourself. Perhaps a creatures that have moved across our borders, I suppose it's only one of many concerns."] = 173,
				["You performed well against the Dark Runners, $n. But it seems as though their numbers faith in Master Carevin. No doubt he will get to the bottom of the problem."] = 221,
				["$n, to be honest with you, I did not believe that you would get this formally join Master Carevin's struggle, I will gladly write for you a letter of recommendation."] = 222
			}
		},
		["The Carevin Family"] = 1042,
		["The Scythe of Elune"] = 1043,
		["A New Threat"] = 170,
		["The Boar Hunter"] = 183,
		["Coldridge Valley Mail Delivery"] = 	{
			["Talin Keeneye"] = 233,
			["Grelin Whitebeard"] = 234
		},
		["Raptor Mastery"] = 	{
			["Hemet Nesingwary"] = 		{
				["Nicely done, $g old chap : m'lady;! Nicely done, $g old chap : m'lady;!"] = 194,
				["Now that's how you get a trophy or two over the ol' hearth! Nice killing, that's how you get a trophy or two over the ol' hearth! Nice killing, $N!"] = 195,
				["Ho ho!! We have ourselves a true raptor slayer! Nicely done, $g old chap : We have ourselves a true raptor slayer! Nicely done, $g old chap : fair lady;!"] = 196,
				["Master $n, the raptor slayer! Has a nice ring to it, eh? Master $n, the raptor slayer! Has a nice ring to it, eh?"] = 197
			}
		},
		["Big Game Hunter"] = 208,
		["Welcome to the Jungle"] = 583,
		["Hemet Nesingwary"] = 5762,
		["Hunting in Stranglethorn"] = 5763,
		["The Green Hills of Stranglethorn"] = 338,
		["Chapter I"] = 339,
		["Chapter II"] = 340,
		["Chapter III"] = 341,
		["Chapter IV"] = 342,
		["Tiger Mastery"] = 	{
			["Ajeck Rouack"] = 		{
				["Nicely done, $n. You are ready to move on. Nicely done, $n. You are ready to move on."] = 185,
				["I am impressed, $c. You are progressing quite well. I am impressed, $c. You are progressing quite well."] = 186,
				["Most impressive. I believe you are almost ready. Most impressive. I believe you are almost ready."] = 187,
				["Most impressive, I do say! You are a true Master Tiger Hunter, $N! Most impressive, I do say! You are a true Master Tiger Hunter, $N!"] = 188
			}
		},
		["Panther Mastery"] = 	{
			["Sir S. J. Erlgadin"] = 		{
				["Off to a good start, $N! Off to a good start, $N!"] = 190,
				["Perfectly executed, $N! Perfectly executed, $N!"] = 191,
				["You've done well, $N! You've done well, $N!"] = 192,
				["So the great Bhag'thera is dead! Cheers to you, $N. You are a mighty $c the great Bhag'thera is dead! Cheers to you, $N. You are a mighty $c indeed!"] = 193
			}
		},
		["The Second Rebellion"] = 203,
		["Bad Medicine"] = 204,
		["Bloodscalp Ears"] = 189,
		["Skullsplitter Tusks"] = 209,
		["Hostile Takeover"] = 213,
		["Supplies to Private Thorsen"] = 198,
		["Troll Witchery"] = 205,
		["Mai'Zoth"] = 206,
		["Kurzen's Mystery"] = 207,
		["Return to Corporal Kaleb"] = 622,
		["Investigate the Camp"] = 201,
		["Krazek's Cookery"] = 210,
		["Favor for Krazek"] = 627,
		["The Rumormonger"] = 1115,
		["Dream Dust in the Swamp"] = 1116,
		["The Troll Cave"] = 182,
		["The Stolen Journal"] = 218,
		["Red Silk Bandanas"] = 214,
		["Patrolling Westfall"] = 102,
		["Bounty on Garrick Padfoot"] = 6,
		["Brotherhood of Thieves"] = 18,
		["Scalding Mornbrew Delivery"] = 3364,
		["Hallowed Rune"] = 3110,
		["What Comes Around..."] = 386,
		["Red Leather Bandanas"] = 153,
		["Eight-Legged Menaces"] = 245,
		["Wolves at Our Heels"] = 226,
		["Etched Rune"] = 3108,
		["Solomon's Law"] = 91,
		["Blackrock Bounty"] = 128,
		["Simple Letter"] = 3100,
		["Simple Rune"] = 3106,
		["Simple Memorandum"] = 3112,
		["Encrypted Letter"] = 	{
			["Jorik Kerridan"] = 3102,
			["Loremaster Dibbs"] = 511
		},
		["Encrypted Rune"] = 3109,
		["Encrypted Memorandum"] = 3113,
		["Consecrated Letter"] = 3101,
		["Consecrated Rune"] = 3107,
		["Lord Grayson Shadowbreaker"] = 7638,
		["To Show Due Judgment"] = 7639,
		["Exorcising Terrordale"] = 7640,
		["Blessed Arcanite Barding"] = 7644,
		["The Divination Scryer"] = 7646,
		["Grimand's Finest Work"] = 7648,
		["Again Into the Great Ossuary"] = 	{
			["Lord Grayson Shadowbreaker"] = 7666,
			["Sagorne Creststrider"] = 7669
		},
		["Glyphic Memorandum"] = 3114,
		["Brother Paxton"] = 344,
		["Rethban Ore"] = 347,
		["Grape Manifest"] = 3905,
		["Riverpaw Gnoll Bounty"] = 11,
		["Westbrook Garrison Needs Help!"] = 239,
		["Broken Alliances"] = 	{
			["Gorn"] = 		{
				["With Tho'grun dead, his corpse picked clean by the desert winds and scavenging buzzards, the drakes' prison in Lethlor. We shall free them from endless imprisonment, albeit to their doom!"] = 782,
				["The black dragonflight continues to ally with the renegade Blackrock orcs, and both must be removed. With Blacklash and Hematus dead, we can turn our attentions westwards, towards Blackrock Spire."] = 793
			}
		},
		["Encroaching Gnolls"] = 244,
		["Assessing the Threat"] = 246,
		["A Grim Task"] = 304,
		["Fall of Dun Modr"] = 472,
		["A Dark Threat Looms"] = 	{
			["Ashlan Stonesmirk"] = 161,
			["Chief Engineer Hinderweir VII"] = 		{
				["This is an alarming discovery, to say the least! This is an alarming discovery, to say the least!"] = 199,
				["A disarming colloid? For Seaforium? Oh heavens! A disarming colloid? For Seaforium? Oh heavens!"] = 274,
				["Just in time, $N! Just in time, $N!"] = 278,
				["Thank you so much, $N!! You have saved the Stonewrought Dam! Without your help, the is once again safe. . . for the time being at least. . . ."] = 283
			},
			["Suspicious Barrel"] = 250,
			["Explosive Charge"] = 280
		},
		["The Dark Iron War"] = 303,
		["The Fury Runs Deep"] = 378,
		["The Thandol Span"] = 	{
			["Rhag Garmason"] = 		{
				["Oh my, the news is grave.... Oh my, the news is grave...."] = 632,
				["The remaining bridge is saved! You have done a great service to King Magni and of Khaz Modan. Now if we can only hold out long enough for reinforcements to show..."] = 633
			},
			["Ebenezer Rustlocke's Corpse"] = 631
		},
		["In Search of The Excavation Team"] = 	{
			["Merrin Rockweaver"] = 305,
			["Tarrel Rockweaver"] = 306
		},
		["Uncovering the Past"] = 299,
		["Ormer's Revenge"] = 	{
			["Ormer Ironbraid"] = 		{
				["Killing is a dirty business, but you did your job well, $N. If I weren't with the Prospector and Merrin, I'd be down there shedding blood right along side you."] = 294,
				["You did a bang-up job of clearing out those Raptors, $N! You did a bang-up job of clearing out those Raptors, $N!"] = 295,
				["Thank you, $N. Your efforts here will not be forgotten. Many innocent Dwarves died at those evil creatures should make them think twice before attacking King Magni's subjects ever again."] = 296
			}
		},
		["In Defense of the King's Lands"] = 	{
			["Mountaineer Cobbleflint"] = 224,
			["Mountaineer Wallbang"] = 263,
			["Mountaineer Gravelgaw"] = 237,
			["Captain Rugelfuss"] = 217
		},
		["The Trogg Threat"] = 267,
		["Excavation Progress Report"] = 298,
		["Powder to Ironband"] = 302,
		["Mercenaries"] = 255,
		["WANTED: Chok'sul"] = 256,
		["A Meal Served Cold"] = 212,
		["Feast at the Blue Recluse"] = 1271,
		["Crocolisk Hunting"] = 385,
		["Down the Scarlet Path"] = 	{
			["Brother Anton"] = 261,
			["Raleigh the Devout"] = 1052
		},
		["Brother Anton"] = 6141,
		["A Hunter's Boast"] = 257,
		["A Hunter's Challenge"] = 258,
		["Vyrin's Revenge"] = 	{
			["Daryl the Youngling"] = 271,
			["Vyrin Swiftwind"] = 531
		},
		["Seeking Wisdom"] = 269,
		["The Doomed Fleet"] = 270,
		["The Eye of Paleth"] = 292,
		["The Lost Ingots"] = 324,
		["Lightforge Ingots"] = 526,
		["Taming the Beast"] = 	{
			["Grif Wildheart"] = 		{
				["I know, I know; you're wondering what's next, aren't ya?! I know, I know; you're wondering what's next, aren't ya?!"] = 6064,
				["When I feel you've learned enough, I will grant you the ability to choose any learned enough, I will grant you the ability to choose any pet of your liking."] = 6084,
				["Here you are, $N. I will now give ya the power to tame a beast, and dismiss it as you please. Find yerself a good, loyal pet, and enjoy the hunt!"] = 6085
			},
			["Yaw Sharpmane"] = 		{
				["Signs have appeared to me from the Earthmother; you have done well. Signs have appeared to me from the Earthmother; you have done well."] = 6061,
				["Yes... The Earthmother believes that you are ready for the next lesson. Yes... The Earthmother believes that you are ready for the next lesson."] = 6087,
				["You have learned all I can teach you, $N. May the blessings of the Earthmother it as you see fit. Use your new skills with pride and honor the Earthmother."] = 6088
			},
			["Thotar"] = 		{
				["You have done well, $N. I believe you are ready for your next task. You have done well, $N. I believe you are ready for your next task."] = 6062,
				["You have learned all I can teach you, $N. It is time for you to it as you see fit. Use your new skills with pride; you have earned them."] = 6082,
				["You are a swift learner, $N. You have done well. You are a swift learner, $N. You have done well."] = 6083
			},
			["Dazalar"] = 		{
				["Excellent, $N! You are quite a fast learner. Excellent, $N! You are quite a fast learner."] = 6063,
				["I see your commitment and that you have understood what I have taught you, $N. I see your commitment and that you have understood what I have taught you, $N."] = 6101,
				["You have learned all I can teach you, $N. May I offer you one more it as you see fit. Use your new skills with pride; you have earned them."] = 6102
			},
			["Жозефина Карсон"] = 		{
				["The brawn of the forest. Brave work, Darlin! The brawn of the forest. Brave work, Darlin!"] = 94864,
				["Well done, Darlin! You're quite in tune with the beast. Well done, Darlin! You're quite in tune with the beast."] = 94863,
				["Excellent, Darlin! You are quite a fast learner. Excellent, Darlin! You are quite a fast learner."] = 94792
			},
			["Quel'ana Quickgale"] = 		{
				["You're back already! Impressive speed, $n! You're back already! Impressive speed, $n!"] = 94979,
				["Well tamed, $n! You are becoming adept already. Well tamed, $n! You are becoming adept already."] = 94978,
				["Excellent, $n! You are quite a fast learner. Now that you know the basics, I with this knowledge and thrive. Be the $c that Zephras Isle needs you to be."] = 94013,
				["I am most glad that you came. Come, let us begin. I am most glad that you came. Come, let us begin."] = 94007
			}
		},
		["The Hunter's Path"] = 	{
			["Grif Wildheart"] = 6074,
			["Yaw Sharpmane"] = 6065,
			["Thotar"] = 		{
				["Yes, it is time for you to begin your training. Yes, it is time for you to begin your training."] = 6068,
				["Yes, I believe you are ready to be trained... Yes, I believe you are ready to be trained..."] = 6069
			},
			["Dazalar"] = 		{
				["Yes, it is time, $c. Yes, it is time, $c."] = 6071,
				["Yes, I believe that it is time... Yes, I believe that it is time..."] = 6072,
				["Yes, it is time, $C. Yes, it is time, $C."] = 6721,
				["Yes, it is time to train you... Yes, it is time to train you..."] = 6722
			}
		},
		["The Third Fleet"] = 288,
		["The Cursed Crew"] = 289,
		["Claws from the Deep"] = 279,
		["Return the Statuette"] = 	{
			["Karl Boran"] = 286,
			["Captain Stoutfist"] = 98189
		},
		["Ammo for Rumbleshot"] = 5541,
		["Frostmane Hold"] = 287,
		["Senir's Observations"] = 	{
			["Senir Whitebeard"] = 420,
			["Mountaineer Thalos"] = 282
		},
		["Those Blasted Troggs!"] = 432,
		["Frost Ram Exchange"] = 7673,
		["Black Ram Exchange"] = 7674,
		["Protecting the Herd"] = 314,
		["Tundra MacGrann's Stolen Stash"] = 312,
		["Beer Basted Boar Ribs"] = 384,
		["Hurley Blackbreath"] = 4126,
		["Ragnar Thunderbrew"] = 4128,
		["Gnogaine"] = 2926,
		["The Day After"] = 2927,
		["The Only Cure is More Green Glow"] = 2962,
		["Operation Recombobulation"] = 412,
		["The Reports"] = 291,
		["Cleansing the Eye"] = 293,
		["Bring the Light"] = 3636,
		["Gathering Materials"] = 	{
			["Wynne Larson"] = 1921,
			["Josef Gregorian"] = 1961
		},
		["Pristine Spider Silk"] = 1940,
		["Manaweave Robe"] = 1941,
		["Astral Knot Garment"] = 1942,
		["Continue to Stormwind"] = 6281,
		["Stout to Kadrell"] = 414,
		["Rat Catching"] = 416,
		["Report to Mountaineer Rockgar"] = 468,
		["Filthy Paws"] = 307,
		["Stormpike's Delivery"] = 353,
		["Mountaineer Stormpike's Task"] = 1339,
		["Protecting the Shipment"] = 309,
		["Agmond's Fate"] = 704,
		["Ironband Wants You!"] = 707,
		["Murdaloc"] = 739,
		["Gathering Idols"] = 297,
		["Ironband's Excavation"] = 436,
		["Report to Ironforge"] = 301,
		["Letter to Stormpike"] = 514,
		["Stormpike's Deciphering"] = 554,
		["The Hidden Chamber"] = 2240,
		["Distracting Jarven"] = 308,
		["The Perfect Stout"] = 315,
		["Evershine"] = 318,
		["A Favor for Evershine"] = 319,
		["Rejold's New Brew"] = 415,
		["Return to Marleth"] = 311,
		["Tools for Steelgrill"] = 400,
		["The Grizzled Den"] = 313,
		["Search for Incendicite"] = 466,
		["Stonegear's Search"] = 467,
		["Stocking Jetsteam"] = 317,
		["Return to Bellowfiz"] = 320,
		["After the Ambush"] = 454,
		["Blessed Arm"] = 322,
		["Elmore's Task"] = 1097,
		["Grimand Elmore"] = 1700,
		["Burning Blood"] = 1705,
		["Grimand's Armor"] = 1706,
		["The Work of Grimand Elmore"] = 7641,
		["Collection of Goods"] = 7642,
		["Patrol Schedules"] = 330,
		["Harlan Needs a Resupply"] = 333,
		["Wine Shop Advert"] = 332,
		["A Noble Brew"] = 	{
			["Zardeth of the Black Claw"] = 335,
			["Lord Baurles K. Wishock"] = 336
		},
		["An Old History Book"] = 337,
		["Speaking of Fortitude"] = 343,
		["Return to Milton"] = 542,
		["Report to Helgrum"] = 1420,
		["Pool of Tears"] = 1424,
		["Return to Fel'Zerul"] = 1444,
		["The Temple of Atal'Hakkar"] = 1445,
		["Return to Kristoff"] = 346,
		["Stranglethorn Fever"] = 	{
			["Witch Doctor Unbagwa"] = 349,
			["Fin Fizracket"] = 348
		},
		["Uldaman Reagent Run"] = 	{
			["Ghak Healtouch"] = 17,
			["Jarkal Mossmeld"] = 2202
		},
		["Badlands Reagent Run"] = 	{
			["Ghak Healtouch"] = 2500,
			["Jarkal Mossmeld"] = 2258
		},
		["Badlands Reagent Run II"] = 	{
			["Ghak Healtouch"] = 2501,
			["Jarkal Mossmeld"] = 2203
		},
		["Rear Guard Patrol"] = 	{
			["Deathguard Linnea"] = 		{
				["Very good. Your efforts do much to keep the Scourge at bay. A commendation will keep the Scourge at bay. A commendation will be sent to my superior, Executor Zygand."] = 356,
				["You are a testament to the cunning and coordination that all Forsaken possess--something the mindless mindless Scourge will never have. Please accept this as thanks for your efforts, as promised."] = 99156
			}
		},
		["Forsaken Duties"] = 359,
		["A Putrid Task"] = 404,
		["The Mills Overrun"] = 426,
		["Speak with Dillinger"] = 1818,
		["Ulag the Cleaver"] = 1819,
		["Return the Book"] = 366,
		["Proving Allegiance"] = 409,
		["The Lich's Identity"] = 357,
		["The Prodigal Lich"] = 405,
		["The Prodigal Lich Returns"] = 411,
		["Rot Hide Origins"] = 444,
		["Wand to Bethor"] = 491,
		["Speak with Sevren"] = 355,
		["Graverobbers"] = 358,
		["Return to the Magistrate"] = 360,
		["The Family Crypt"] = 408,
		["The Engraved Ring"] = 440,
		["Deaths in the Family"] = 354,
		["The Haunted Mills"] = 362,
		["Speak with Coleman"] = 1820,
		["Agamand Heirlooms"] = 1821,
		["Heirloom Weapon"] = 1822,
		["At War With The Scarlet Crusade"] = 	{
			["Executor Zygand"] = 		{
				["Captain Perrine's death will undoubtedly please The Dark Lady. You have performed your duty well, Perrine's death will undoubtedly please The Dark Lady. You have performed your duty well, $c."] = 370,
				["Captain Vachon's death will slow down the Scarlet Crusade's advancement in Tirisfal quite a bit. slow down the Scarlet Crusade's advancement in Tirisfal quite a bit. But other threats loom."] = 371,
				["You have done extremely well, $c. With ruthless fighters like you conquering in the name to defeating Arthas once and for all. I have a good feeling about you, comrade."] = 372,
				["Most excellent, $c. Your skill in the art of combat is undeniable. Most excellent, $c. Your skill in the art of combat is undeniable."] = 427
			}
		},
		["Vital Intelligence"] = 383,
		["Wanted: Maggot Eye"] = 398,
		["Fields of Grief"] = 	{
			["Apothecary Johaan"] = 365,
			["Captured Scarlet Zealot"] = 407
		},
		["A New Plague"] = 	{
			["Apothecary Johaan"] = 		{
				["You have done well, $N and I thank you for your efforts. You have done well, $N and I thank you for your efforts."] = 367,
				["The scales are perfect, $N. Exactly what I needed for this concoction. The scales are perfect, $N. Exactly what I needed for this concoction."] = 368,
				["Ah, this venom will do perfectly, $N. Everything else has been added to my concoction my concoction and boiled down. Finally, I am ready to try this new deadly agent!"] = 369
			},
			["Captured Mountaineer"] = 492
		},
		["The Chill of Death"] = 375,
		["A Letter Undelivered"] = 361,
		["Rude Awakening"] = 363,
		["The Mindless Ones"] = 364,
		["Rattling the Rattlecages"] = 3901,
		["Night Web's Hollow"] = 380,
		["The Scarlet Crusade"] = 381,
		["The Red Messenger"] = 382,
		["Honor Students"] = 6387,
		["Gryth Thurden"] = 6388,
		["The Unsent Letter"] = 373,
		["The Curious Visitor"] = 392,
		["Brotherhood's End"] = 395,
		["Humble Beginnings"] = 399,
		["Proof of Demise"] = 374,
		["The Damned"] = 376,
		["Marla's Last Wish"] = 6395,
		["Return to Brock"] = 6392,
		["Quell The Uprising"] = 387,
		["Bazil Thredd"] = 389,
		["The Stockade Riots"] = 391,
		["The Color of Blood"] = 388,
		["Scavenging Deathknell"] = 3902,
		["An Audience with the King"] = 396,
		["Scarlet Subterfuge"] = 5862,
		["Dispelling Evil"] = 8414,
		["Demon Dogs"] = 5542,
		["Blood Tinged Skies"] = 5543,
		["Carrion Grubbage"] = 5544,
		["Redemption"] = 5742,
		["Of Forgotten Memories"] = 5781,
		["Of Lost Honor"] = 5845,
		["Of Love and Family"] = 	{
			["Tirion Fordring"] = 5848,
			["Artist Renfray"] = 5846
		},
		["Wild Hearts"] = 429,
		["Rot Hide Ichor"] = 443,
		["Delivery to Silverpine Forest"] = 445,
		["Thule Ravenclaw"] = 446,
		["A Recipe For Death"] = 	{
			["Apothecary Renferrel"] = 450,
			["Master Apothecary Faranell"] = 		{
				["How good of Apothecary Renferrel to send you to me, $N. These samples will indeed useful to the cause. I will begin studying their toxic and contaminable properties at once."] = 447,
				["Such a blow to the Royal Apothecary Society to lose Berard. But through your hard the ways of combat I would try to recruit you for membership in the Society."] = 451
			}
		},
		["Speak with Renferrel"] = 3221,
		["Arugal's Folly"] = 	{
			["Dalar Dawnweaver"] = 		{
				["Your persistence is commendable. With the knowledge you helped me gather, Arugal will fall and gather, Arugal will fall and his reckless magic shall be undone. Cheers to you, $N."] = 99,
				["This is precisely the spell I was in search of, $c. If your dedication to Lady's cause remains infallible you will find you have quite a future amongst The Forsaken."] = 422,
				["I hope I can acquire enough energy from such a limited sample. Perhaps I should should have had you get more shackles. Nonetheless, you showed great skill in collecting these, $c."] = 423,
				["Most excellent. The mine will provide superb resources for our forces as we spread throughout will provide superb resources for our forces as we spread throughout Silverpine and into Azeroth."] = 424,
				["It appears I get the last laugh after all, haha! Arugal truly was a fool. also worth nothing. It seems the search for a solution to the worgen curse continues."] = 98298
			}
		},
		["Prove Your Worth"] = 421,
		["Dalar's Analysis"] = 481,
		["Arugal Must Die"] = 1014,
		["Ivar the Foul"] = 425,
		["Lost Deathstalkers"] = 428,
		["Escorting Erland"] = 435,
		["Return to Quinn"] = 430,
		["The Dead Fields"] = 437,
		["Rot Hide Clues"] = 439,
		["Assault on Fenris Isle"] = 442,
		["Report to Hadrec"] = 448,
		["The Deathstalkers' Report"] = 449,
		["Shimmer Stout"] = 413,
		["A Pilot's Revenge"] = 417,
		["Thelsamar Blood Sausages"] = 418,
		["The Public Servant"] = 433,
		["Raleigh and the Undercity"] = 441,
		["A Husband's Revenge"] = 530,
		["Elixir of Agony"] = 	{
			["Master Apothecary Faranell"] = 513,
			["Apothecary Lydon"] = 		{
				["Ah, the horrible reek of Mudsnout Blossoms. At least those filthy Gnolls are good for the horrible reek of Mudsnout Blossoms. At least those filthy Gnolls are good for something."] = 509,
				["The excitement of this experiment has me feeling giddy! You have been such a great such a great help, $N. Together we will spread death and disease to this land!"] = 515,
				["Finally! Now we are ready for action! Finally! Now we are ready for action!"] = 517
			},
			["Dusty Rug"] = 524
		},
		["Going, Going, Guano!"] = 1109,
		["Hearts of Zeal"] = 1113,
		["Venom to the Undercity"] = 2938,
		["Resupplying the Excavation"] = 273,
		["Pyrewood Ambush"] = 452,
		["Gnarlpine Corruption"] = 476,
		["The Relics of Wakening"] = 483,
		["Ursal the Mauler"] = 486,
		["The Balance of Nature"] = 	{
			["Conservator Ilthalaine"] = 		{
				["You performed your duties well, $N. You performed your duties well, $N."] = 456,
				["You have proven your dedication to nature well, $N. A young $c like yourself has your dedication to nature well, $N. A young $c like yourself has a promising future."] = 457
			}
		},
		["Timberling Seeds"] = 918,
		["Timberling Sprouts"] = 919,
		["The Moss-twined Heart"] = 927,
		["The Glowing Fruit"] = 930,
		["The Shimmering Frond"] = 931,
		["Denalan's Earth"] = 997,
		["Return to Denalan"] = 2498,
		["Oakenscowl"] = 2499,
		["Webwood Venom"] = 916,
		["Webwood Egg"] = 917,
		["Elixirs for the Bladeleafs"] = 1581,
		["The Algaz Gauntlet"] = 455,
		["Daily Delivery"] = 469,
		["Apprentice's Duties"] = 471,
		["Young Crocolisk Skins"] = 484,
		["War Banners"] = 464,
		["Report to Captain Stoutfist"] = 473,
		["Defeat Nek'rosh"] = 474,
		["A Troubling Breeze"] = 475,
		["Digging Through the Ooze"] = 470,
		["Simple Scroll"] = 3095,
		["Maps and Runes"] = 478,
		["Ambermill Investigations"] = 479,
		["The Weaver"] = 480,
		["Dalaran's Intentions"] = 482,
		["Beren's Peril"] = 516,
		["Encrypted Scroll"] = 3096,
		["Glyphic Scroll"] = 3098,
		["Tainted Scroll"] = 3099,
		["Garments of Darkness"] = 5650,
		["In Favor of Darkness"] = 5651,
		["A Warden of the Alliance"] = 	{
			["Watcher Callahan"] = 		{
				["May the heavens bless you, $N. You've done more for Randis than most would ever come back and visit us. I know that Randis would like that, as would I."] = 171,
				["May the heavens bless you, $N. You've done more for Randis than most would ever $N. He wanted to give you one of his favorite pets to remember him by."] = 171
			},
			["Orphan Matron Nightingale"] = 		{
				["May the heavens bless you, $N. You've done more for Randis than most would ever come back and visit us. I know that Randis would like that, as would I."] = 171,
				["May the heavens bless you, $N. You've done more for Randis than most would ever $N. He wanted to give you one of his favorite pets to remember him by."] = 171
			}
		},
		["The Road to Darnassus"] = 487,
		["Time To Strike"] = 494,
		["Battle of Hillsbrad"] = 	{
			["High Executor Darthalia"] = 		{
				["At ease, $c. I see you have returned from battle. My sources tell me you have returned from battle. My sources tell me you performed well on the Hillsbrad front."] = 527,
				["The grip of death is tightening around the town of Hillsbrad. The battle goes well. The grip of death is tightening around the town of Hillsbrad. The battle goes well."] = 528,
				["Mission accomplished, $c. And carried out quite skillfully, I might add. Mission accomplished, $c. And carried out quite skillfully, I might add."] = 529,
				["News of your glories in Hillsbrad traveled fast. You have done well, $c. News of your glories in Hillsbrad traveled fast. You have done well, $c."] = 532,
				["The Dark Lady will be pleased when she learns that she has a new mine she learns that she has a new mine from which she can arm her soldiers."] = 539,
				["Your actions on the battlefield are worthy of the highest praise. Your actions on the battlefield are worthy of the highest praise."] = 541
			},
			["Varimathras"] = 550
		},
		["WANTED: Syndicate Personnel"] = 549,
		["WANTED: Baron Vardus"] = 566,
		["Dangerous!"] = 567,
		["Journey to Hillsbrad Foothills"] = 493,
		["Elixir of Suffering"] = 	{
			["Apothecary Lydon"] = 496,
			["Umpi"] = 499
		},
		["Elixir of Pain"] = 	{
			["Apothecary Lydon"] = 501,
			["Stanley"] = 502
		},
		["Journey to Tarren Mill"] = 1065,
		["Blood of Innocents"] = 1066,
		["Venom Bottles"] = 2933,
		["Undamaged Venom Sac"] = 2934,
		["Summoning Shadra"] = 2937,
		["Supplying the Sepulcher"] = 6321,
		["Down the Coast"] = 536,
		["Farren's Proof"] = 	{
			["Lieutenant Farren Orinelle"] = 		{
				["Oh for the Love of the Light... they're dripping on the ground. Can't stand touching those in weeks, let me tell you, and in Southshore, that means you aren't eating much."] = 559,
				["The naga, eh? Redpath must have just received the same information as me... Ha! He'll information as me... Ha! He'll not receive a promotion from my toil. Let me explain."] = 561
			},
			["Marshal Redpath"] = 560
		},
		["Stormwind Ho!"] = 562,
		["The Rescue"] = 498,
		["Blackmoore's Legacy"] = 506,
		["Taretha's Gift"] = 508,
		["Infiltration"] = 533,
		["Crushridge Bounty"] = 500,
		["Crushridge Warmongers"] = 504,
		["Syndicate Assassins"] = 505,
		["Foreboding Plans"] = 510,
		["Noble Deaths"] = 512,
		["Assassin's Contract"] = 522,
		["Baron's Demise"] = 523,
		["Further Mysteries"] = 525,
		["Dark Council"] = 537,
		["Southshore"] = 538,
		["Preserving Knowledge"] = 540,
		["The Ensorcelled Parchment"] = 551,
		["The Perenolde Tiara"] = 543,
		["Delivery to Ridgewell"] = 4765,
		["Bring the End"] = 3341,
		["Gol'dir"] = 503,
		["Lord Aliden Perenolde"] = 507,
		["Valik"] = 535,
		["Manna-Enriched Horse Feed"] = 7645,
		["Costly Menace"] = 564,
		["Hinott's Assistance"] = 	{
			["Serge Hinott"] = 		{
				["You look deliciously pale, $c. And what is that foul aroma you are giving off? pale, $c. And what is that foul aroma you are giving off? I must know!"] = 2479,
				["The cure is ready! Drink this anti-toxin and the creeping madness will stop, however, I madness will stop, however, I will not be able to do anything about the smell."] = 2480
			}
		},
		["Soothing Turtle Bisque"] = 	{
			["Christoph Jeffcoat"] = 7321,
			["Chef Jessen"] = 555
		},
		["Prison Break In"] = 544,
		["Dalaran Patrols"] = 545,
		["Souvenirs of Death"] = 546,
		["Humbert's Sword"] = 547,
		["Helcular's Revenge"] = 	{
			["Novice Thaivand"] = 552,
			["Helcular's Grave"] = 553
		},
		["Stone Tokens"] = 556,
		["Bracers of Binding"] = 557,
		["Bartolo's Yeti Fur Cloak"] = 565,
		["Reassignment"] = 563,
		["The Defense of Grom'gol"] = 	{
			["Commander Aggro'gosh"] = 		{
				["Your duty was performed with honor, $c. Your duty was performed with honor, $c."] = 568,
				["Well done. You have served the Warchief with honor. Well done. You have served the Warchief with honor."] = 569
			}
		},
		["Mok'thardin's Enchantment"] = 	{
			["Far Seer Mok'thardin"] = 		{
				["Your knowledge of the jungle is strong, $n. These specimens will be perfect. I will will thank the spirits for sacrificing such fine beasts for the cause of the Horde."] = 570,
				["A most ideal sinew, $n. Your efforts will pay off soon. A most ideal sinew, $n. Your efforts will pay off soon."] = 571,
				["Most excellent. I will prepare these at once. Most excellent. I will prepare these at once."] = 572,
				["With this Holy Spring Water the ceremonial choker is ready for enchantment. Wear this with pride, pride, $n, in the name of the Warchief and in defense of the mighty Horde."] = 573
			}
		},
		["The Bloodsail Buccaneers"] = 	{
			["Fleet Master Seahorn"] = 		{
				["Bloodsail Buccaneers attacking Booty Bay? They might as well throw themselves off the Overlook Cliffs. you have done my fleet of swashbucklers a great service. The Blackwater Raiders thank you."] = 599,
				["Perfect, $n. Now that we know their plan, it's just a matter of time. And to a matter of time. And to think the fools have dropped anchor just off the cape...."] = 604,
				["Ah, what a great day for the Blackwater Raiders! Three cheers to you, $n! Ah, what a great day for the Blackwater Raiders! Three cheers to you, $n!"] = 608
			},
			["First Mate Crazz"] = 597,
			["Bloodsail Correspondence"] = 595
		},
		["Sunken Treasure"] = 	{
			["Fleet Master Seahorn"] = 669,
			["Doctor Draxlegauge"] = 		{
				["The goggles work perfectly now! Well done, $n. The goggles work perfectly now! Well done, $n."] = 665,
				["Most superb, $n! The Captain will be very pleased! And just wait until word gets Captain will be very pleased! And just wait until word gets back to Fleetmaster Seahorn!"] = 666
			},
			["Shakes O'Breen"] = 		{
				["So the little gnomes proved their worth after all? I knew we kept those ankle their worth after all? I knew we kept those ankle biters around for a reason!"] = 668,
				["Thank you for making such a long and perilous journey. You have the gratitude of making such a long and perilous journey. You have the gratitude of the Blackwater Raiders."] = 670
			}
		},
		["Up to Snuff"] = 587,
		["Whiskey Slim's Lost Grog"] = 580,
		["Keep An Eye Out"] = 576,
		["Akiris by the Bundle"] = 	{
			["Privateer Bloads"] = 617,
			["Privateer Groy"] = 623
		},
		["Supply and Demand"] = 575,
		["Some Assembly Required"] = 577,
		["Excelsior"] = 628,
		["The Stone of the Tides"] = 578,
		["Water Elementals"] = 601,
		["The Curse of the Tides"] = 611,
		["The Haunted Isle"] = 616,
		["Goblin Sponsorship"] = 	{
			["Baron Revilgaz"] = 		{
				["Oh, sure of course I know what you're talking about. Nope, can't help you though. to go track down the blueprints for the fuel regulator, but they came back empty-handed."] = 1181,
				["Now, let me just get a copy of these blueprints for my own notes and to Pozzik. Wouldn't want him to think that one of his sponsors was abandoning him."] = 1182
			},
			["Gazlowe"] = 1178,
			["Pozzik"] = 1183,
			["Wharfmaster Lozgil"] = 1180
		},
		["Hunt for Yenniku"] = 581,
		["Headhunting"] = 582,
		["Saving Yenniku"] = 592,
		["Grim Message"] = 2932,
		["Venture Company Mining"] = 600,
		["Singing Blue Shards"] = 605,
		["Zanzil's Secret"] = 621,
		["Back to Booty Bay"] = 1118,
		["Report Back to Fizzlebub"] = 1122,
		["Fool's Stout"] = 1127,
		["Return to MacKinley"] = 607,
		["Voodoo Dues"] = 609,
		["Cracking Maury's Foot"] = 613,
		["Deliver to MacKinley"] = 2874,
		["Scaring Shaky"] = 606,
		["Stormwind Library"] = 579,
		["The Fate of Yenniku"] = 588,
		["The Singing Crystals"] = 589,
		["The Mind's Eye"] = 591,
		["Bloody Bone Necklaces"] = 596,
		["Split Bone Necklace"] = 598,
		["The Vile Reef"] = 629,
		["The Troll Witchdoctor"] = 1240,
		["Filling the Soul Gem"] = 593,
		["Ansirem's Key"] = 603,
		["'Pretty Boy' Duncan"] = 610,
		["Magical Analysis"] = 602,
		["The Captain's Cutlass"] = 615,
		["Message in a Bottle"] = 	{
			["Princess Poobah"] = 		{
				["Have you come to free me? Have you come to free me?"] = 594,
				["$N, you have saved me from a great dishonor. If it was within my power, can only offer you is this token for the courage and nobility you have shown."] = 630
			}
		},
		["Components for the Enchanted Gold Bloodrobe"] = 	{
			["Xizk Goodstitch"] = 4781,
			["Menara Voidrender"] = 		{
				["This will do nicely, $N. All magical items must begin with an item of high quality. regret having the robes fashioned into the ones we will make for you later on."] = 1796,
				["Good, you've returned, $N. And where is the thread? Ah, I understand. That is acceptable. The other things we can attend to in the meantime. Are you prepared for the next step?"] = 4782,
				["Excellent, $N. These will do nicely. I will prepare them now while you move on prepare them now while you move on to your last two components. Are you ready?"] = 4783,
				["Excellent, $N! The components are gathered and we are ready. I trust you will be pleased. Excellent, $N! The components are gathered and we are ready. I trust you will be pleased."] = 4784
			}
		},
		["Fine Gold Thread"] = 4785,
		["Sully Balloo's Letter"] = 637,
		["Plea To The Alliance"] = 634,
		["Northfold Manor"] = 681,
		["Stromgarde Badges"] = 682,
		["Wanted!  Marez Cowl"] = 684,
		["Wanted!  Otto and Falconcrest"] = 685,
		["Trollbane"] = 638,
		["Sigil of Strom"] = 639,
		["Sigil of Thoradin"] = 641,
		["Sigil of Arathor"] = 643,
		["Sigil of Trollbane"] = 644,
		["Trol'kalar"] = 	{
			["Zengu"] = 646,
			["Trollbane's Tomb"] = 645
		},
		["MacKreel's Moonshine"] = 647,
		["The Broken Sigil"] = 640,
		["Hammerfall"] = 655,
		["Foul Magics"] = 	{
			["Tor'gan"] = 		{
				["It will take some time for me to ascertain the true intentions of the Syndicate, association with dark, demonic magic troubles me. I will tell you when I know more."] = 671,
				["My restless nights will turn to peaceful slumber when I have destroyed this orb. Thank terrible power the demons held over the orcs before Hellscream released them from their curse."] = 673
			}
		},
		["Raising Spirits"] = 	{
			["Tor'gan"] = 		{
				["Excellent. The spirits of the raptors that gave these eyes will lend strength to the the raptors that gave these eyes will lend strength to the bearer of this amulet."] = 672,
				["It did not work, I see. Nonetheless, I feel that showing him the power of proud self. The amulet's power was not great enough to show him our newfound power."] = 675
			},
			["Gor'mul"] = 674
		},
		["Guile of the Raptor"] = 	{
			["Tor'gan"] = 		{
				["Yes, these will work perfectly. I will transfer their power and the spirit of the orb. This orb will imbue Gor'mul with the fiery strength and intelligence of the raptor."] = 701,
				["When the enchantment wears off, I will speak with Gor'mul. My thanks to you for the land of the living. I have no doubt he thanks you greatly as well."] = 847
			},
			["Gor'mul"] = 702
		},
		["Malin's Request"] = 	{
			["Archmage Malin"] = 697,
			["Skuerto"] = 690
		},
		["Hints of a New Plague?"] = 	{
			["Phin Odelic"] = 661,
			["Quae"] = 		{
				["Excellent!  Let's see what this is about... Excellent!  Let's see what this is about..."] = 658,
				["Try and stay as quiet as possible, traveler. Orcs don't take too well to being spied to being spied on, and there is more to this farm than meets the eye."] = 659,
				["You've done a great service for us, $N. Thank you. I hope Kin wasn't too much down there. She's very friendly, but can be just as deadly when you're her enemy."] = 660
			},
			["Kinelory"] = 657
		},
		["Deep Sea Salvage"] = 662,
		["Drowned Sorrows"] = 664,
		["The Hammer May Fall"] = 676,
		["Call to Arms"] = 	{
			["Drum Fel"] = 		{
				["The signs of war are upon your garments, and sweat drips from your brow. Good, war are upon your garments, and sweat drips from your brow. Good, very good indeed."] = 677,
				["You are as strong as a kodo, and your lust for battle does your people are as strong as a kodo, and your lust for battle does your people proud."] = 678,
				["You do your people proud, $N. The threat has been greatly lessened, and I am greatly lessened, and I am sure we will begin to thrive here in the Highlands."] = 679
			}
		},
		["The Real Threat"] = 680,
		["What Is Going On?"] = 	{
			["Thrall"] = 4001,
			["Commander Gor'shak"] = 3982
		},
		["The Eastern Kingdoms"] = 4002,
		["The Princess Saved?"] = 4004,
		["Eitrigg's Wisdom"] = 4941,
		["For The Horde!"] = 4974,
		["Hidden Enemies"] = 	{
			["Thrall"] = 		{
				["Good, $N! The spirits be praised, perhaps you are the one who will finally put accomplished anything in comparison to what you will face... but this is a good start."] = 5726,
				["Excellent! Most excellent, $c! What you have done this day is only the first step in he said... and leave not one word out--it may be more important than you realize."] = 5727,
				["I am glad you've returned, $N. Some of those loyal to me brought word immediately dent in his armor. I can't say I'm displeased... even with such a minor victory."] = 5728,
				["Ashenvale? Hmm, I had not heard of any presence of the Council or the Burning and keep yourself occupied with other tasks. I will call upon you again soon. Lok-Tar Ogar!"] = 5730
			},
			["Neeru Fireblade"] = 5729
		},
		["What the Wind Carries"] = 6566,
		["Victory for the Horde"] = 7490,
		["The Lord of Blackrock"] = 	{
			["Thrall"] = 7783,
			["Highlord Bolvar Fordragon"] = 7781,
			["High Overlord Saurfang"] = 7784,
			["Field Marshal Afrasiabi"] = 7782
		},
		["The Brokering of Peace"] = 	{
			["Thrall"] = 8485,
			["King Magni Bronzebeard"] = 8484
		},
		["Theldurin the Lost"] = 687,
		["The Lost Fragments"] = 692,
		["Solution to Doom"] = 709,
		["Forbidden Knowledge"] = 737,
		["Myzrael's Allies"] = 	{
			["Gerrig Bonegrip"] = 653,
			["Zaruk"] = 688
		},
		["To Ironforge for Yagyin's Digest"] = 727,
		["The Star, the Hand and the Heart"] = 	{
			["Gerrig Bonegrip"] = 735,
			["Keeper Bel'dugur"] = 736
		},
		["The Powers Below"] = 968,
		["Knowledge in the Deeps"] = 971,
		["Worth Its Weight in Gold"] = 691,
		["Trelane's Defenses"] = 694,
		["Wand over Fist"] = 693,
		["An Apprentice's Enchantment"] = 695,
		["Attack on the Tower"] = 696,
		["A King's Tribute"] = 	{
			["Grand Mason Marblesten"] = 		{
				["So King Magni Bronzebeard himself sent ye? My, my! This must be important! So King Magni Bronzebeard himself sent ye? My, my! This must be important!"] = 686,
				["Perfect! Better than I could have imagined! And I have quite an imagination you know... Perfect! Better than I could have imagined! And I have quite an imagination you know..."] = 689
			},
			["King Magni Bronzebeard"] = 700
		},
		["Barbecued Buzzard Wings"] = 703,
		["Pearl Diving"] = 705,
		["Flash Bomb Recipe"] = 1559,
		["Power Stones"] = 2418,
		["Fiery Blaze Enchantments"] = 706,
		["Mirages"] = 718,
		["Scrounging"] = 733,
		["A Dwarf and His Tools"] = 719,
		["A Sign of Hope"] = 	{
			["Prospector Ryedol"] = 720,
			["Hammertoe Grez"] = 721
		},
		["Prospect of Faith"] = 	{
			["Prospector Ryedol"] = 723,
			["Historian Karnik"] = 724
		},
		["The Absent Minded Prospector"] = 	{
			["Archaeologist Flagongut"] = 		{
				["Oh my! You say this came from the distant lands of Kalimdor? Amazing! Simply amazing! Oh my! You say this came from the distant lands of Kalimdor? Amazing! Simply amazing!"] = 942,
				["Most excellent, $n! Now to see if I can use the stone to decipher the powers to see if I can use the stone to decipher the powers of the fossils."] = 943
			},
			["Chief Archaeologist Greywhisker"] = 741,
			["Archaeologist Hollee"] = 731,
			["Prospector Remtravel"] = 729
		},
		["Trouble In Darkshore?"] = 730,
		["Passing Word of a Threat"] = 	{
			["Historian Karnik"] = 726,
			["Advisor Belgrum"] = 725
		},
		["Portents of Uldum"] = 	{
			["Historian Karnik"] = 2963,
			["Nara Wildmane"] = 2965
		},
		["Return to Ironforge"] = 2977,
		["The Reason for the Season"] = 	{
			["Historian Karnik"] = 7062,
			["Sagorne Creststrider"] = 6964
		},
		["An Ambassador of Evil"] = 762,
		["The Lost Tablets of Will"] = 1139,
		["Liquid Stone"] = 715,
		["Stone Is Better than Cloth"] = 716,
		["This Is Going to Be Hard"] = 	{
			["Lucien Tosselwrench"] = 734,
			["Lotwil Veriatus"] = 		{
				["Ah, perfect. Stand back while I prepare to make more history! <Lotwil continues to work feverishly.> Ah, perfect. Stand back while I prepare to make more history! <Lotwil continues to work feverishly.>"] = 777,
				["Thank you, $N. That was quite an ordeal, wasn't it? I'm not sure what could have back to its home plane. Perhaps a little token of appreciation for all your hard work..."] = 778
			}
		},
		["Study of the Elements: Rock"] = 	{
			["Lotwil Veriatus"] = 		{
				["These shall do nicely, $N. Thank you. Hmm, a bit more sand than I'd anticipated. fist into the palm of his other hand and stares at them as if fascinated.>"] = 710,
				["$N, simply amazing! I would have thought it'd take half a dozen tauren to bring would have thought it'd take half a dozen tauren to bring all these to me."] = 711,
				["$N, have you ever considered becoming a research assistant? No? I'm not sure what I'll what I'll do without your abilities here. Intelligence, curiosity, and strength--all combined into one package."] = 712
			}
		},
		["Coolant Heads Prevail"] = 713,
		["Gyro... What?"] = 714,
		["The Rise of the Machines"] = 	{
			["Lotwil Veriatus"] = 		{
				["<Lotwil's face turns white.> I... I know these markings. <Lotwil's face turns white.> I... I know these markings."] = 4062,
				["What is this?!? This head is not flesh. This is some sort of dark iron of Argelmach will be short lived as another shall rise to take 'its' place soon."] = 4063
			},
			["Hierophant Theodora Mulvadania"] = 4061
		},
		["WANTED: Murkdeep!"] = 4740,
		["The Red Crystal"] = 4811,
		["The Fragments Within"] = 4813,
		["To the Undercity for Yagyin's Digest"] = 728,
		["The Book of Ur"] = 1013,
		["Swoop Hunting"] = 761,
		["Poison Water"] = 748,
		["Winterhoof Cleansing"] = 754,
		["Thunderhorn Totem"] = 756,
		["Thunderhorn Cleansing"] = 758,
		["Wildmane Totem"] = 759,
		["Wildmane Cleansing"] = 760,
		["The Hunt Begins"] = 747,
		["The Hunt Continues"] = 750,
		["The Battleboars"] = 780,
		["A Humble Task"] = 	{
			["Chief Hawkwind"] = 753,
			["Greatmother Hawkwind"] = 752
		},
		["Rite of Strength"] = 757,
		["Attack on Camp Narache"] = 781,
		["Rites of the Earthmother"] = 	{
			["Seer Graytongue"] = 755,
			["Baine Bloodhoof"] = 763,
			["Cairne Bloodhoof"] = 776
		},
		["Rite of Vision"] = 	{
			["Seer Wiserunner"] = 772,
			["Zarlman Two-Moons"] = 		{
				["I sensed you would be coming to me, $c. I can always recognize one who I can always recognize one who is trying to pass the Rites of the Earthmother."] = 767,
				["I see you have learned to gather from our sacred land, $n. It will take It will take but a moment for me to brew the Water of the Seers."] = 771
			}
		},
		["Dangers of the Windfury"] = 743,
		["Test of Faith"] = 1149,
		["Test of Endurance"] = 1150,
		["Test of Strength"] = 1151,
		["Final Passage"] = 1394,
		["Preparation for Ceremony"] = 744,
		["The Ravaged Caravan"] = 	{
			["Morin Cloudstalker"] = 751,
			["Sealed Supply Crate"] = 749
		},
		["The Venture Co."] = 764,
		["Supervisor Fizsprocket"] = 765,
		["Sharing the Land"] = 745,
		["Dwarven Digging"] = 746,
		["Rite of Wisdom"] = 773,
		["Tal the Wind Rider Master"] = 6363,
		["Master of the Wild Leather"] = 	{
			["Una"] = 2860,
			["Telonis"] = 2853
		},
		["The Platinum Discs"] = 	{
			["Bena Winterhoof"] = 2440,
			["Sage Truthseeker"] = 2280,
			["High Explorer Magellas"] = 2279,
			["Dinita Stonemantle"] = 2439,
			["The Discs of Norgannon"] = 2278
		},
		["Aquatic Form"] = 	{
			["Turak Runetotem"] = 31,
			["Mathrengyl Bearwalker"] = 5061
		},
		["Heeding the Call"] = 	{
			["Turak Runetotem"] = 		{
				["I am glad you found your way here today, young druid. The time has come of the ways of the bear, and to learn strength of body and heart. Ready yourself!"] = 5926,
				["I am glad you found your way here today. young $C. The time has come of the ways of the bear, and to learn strength of body and heart. Ready yourself!"] = 5927
			},
			["Mathrengyl Bearwalker"] = 		{
				["I'm glad you found your way here today, young druid. The time has come for of the ways of the bear, and to learn strength of body and heart. Ready yourself!"] = 5923,
				["I am glad you found your way here today. young $C. The time has come of the ways of the bear, and to learn strength of body and heart. Ready yourself!"] = 5924
			}
		},
		["Back to Thunder Bluff"] = 5932,
		["Body and Heart"] = 	{
			["Turak Runetotem"] = 6002,
			["Mathrengyl Bearwalker"] = 6001
		},
		["Power over Poison"] = 	{
			["Turak Runetotem"] = 6130,
			["Mathrengyl Bearwalker"] = 6125
		},
		["Training the Beast"] = 	{
			["Holt Thunderhorn"] = 6089,
			["Ormak Grimshot"] = 6081,
			["Jocaste"] = 6103,
			["Belia Thundergranite"] = 6086,
			["Исаак Чан"] = 94793,
			["Quel'dora Quickgale"] = 94050
		},
		["Gathering Leather"] = 768,
		["Kodo Hide Bag"] = 769,
		["The Demon Scarred Cloak"] = 770,
		["Mazzranache"] = 766,
		["Crown of the Earth"] = 	{
			["Arch Druid Fandral Staghelm"] = 935,
			["Tenaron Stormgrip"] = 921,
			["Corithras Moonrage"] = 		{
				["Ah, I see. You were sent by Tenaron. Well then, it would seem we have much to do, and little time to do it in. I think we'd best get started."] = 928,
				["After the Battle of Mount Hyjal, we were without direction. Nordrassil smoked from the fire Betrayer was freed from his prison, and Shan'do Stormrage disappeared. A dark time for all."] = 929,
				["Shan'do Stormrage never returned, and the druids were in disarray, and to this day we of the Circle, Staghelm and the most powerful druids grew Teldrassil, the new World Tree."] = 933,
				["To be in the presence of the Oracle Tree... it is almost to feel wisdom Alexstrasza also refused Staghelm, and without her blessing, Teldrassil's growth has been flawed and unpredictable..."] = 934
			},
			["Tyrande Whisperwind"] = 98065,
			["Lariia"] = 98046
		},
		["Teldrassil"] = 940,
		["The New Frontier"] = 	{
			["Arch Druid Fandral Staghelm"] = 1015,
			["Mathrengyl Bearwalker"] = 6761,
			["Arch Druid Hamuul Runetotem"] = 		{
				["Greetings, $c. I am pleased to see the likes of you taking an interest in the Remember this as you work on behalf of the Circle, and you will do well."] = 1000,
				["Greetings, $C. I am pleased to see the likes of you taking an interest in the Remember this as you work on behalf of the Circle, and you will do well."] = 1004
			}
		},
		["Assisting Arch Druid Staghelm"] = 	{
			["Arch Druid Fandral Staghelm"] = 		{
				["Well now, $c... since you were informed that I was leading this research myself, you the first time I tell you the details; I have no desire to repeat myself."] = 3763,
				["Well now, $C... since you were informed that I was leading this research myself, you the first time I tell you the details; I have no desire to repeat myself."] = 3789
			}
		},
		["Wildkin of Elune"] = 4902,
		["The Crystal of Zin-Malor"] = 5253,
		["Simple Note"] = 3091,
		["Verdant Note"] = 3094,
		["Etched Note"] = 3092,
		["Rune-Inscribed Note"] = 3093,
		["Vanquish the Betrayers"] = 784,
		["From The Wreckage...."] = 825,
		["The Admiral's Orders"] = 	{
			["Gar'Thok"] = 830,
			["Nazgrel"] = 831
		},
		["Encroachment"] = 837,
		["Thwarting Kolkar Aggression"] = 786,
		["Dark Storms"] = 806,
		["Report to Orgnil"] = 823,
		["The New Horde"] = 787,
		["Cutting Teeth"] = 788,
		["Sting of the Scorpid"] = 789,
		["Sarkoth"] = 	{
			["Gornek"] = 804,
			["Hana'zua"] = 790
		},
		["Your Place In The World"] = 4641,
		["Vile Familiars"] = 	{
			["Zureetha Fargaze"] = 		{
				["You have done well, $N. Although the Vile Familiars were merely pets of the darker powers the darker powers within the Burning Blade, your success against them foretells greater deeds ahead."] = 792,
				["You have done well, $n. Although the vile familiars were merely pets of the darker powers the darker powers within the Burning Blade, your success against them foretells greater deeds ahead."] = 1499
			},
			["Ruzan"] = 1485
		},
		["Burning Blade Medallion"] = 794,
		["Carry Your Weight"] = 791,
		["Simple Parchment"] = 2383,
		["Simple Tablet"] = 3065,
		["Etched Tablet"] = 3082,
		["Etched Parchment"] = 3087,
		["Encrypted Tablet"] = 3083,
		["Encrypted Parchment"] = 3088,
		["Tainted Parchment"] = 3090,
		["Rune-Inscribed Tablet"] = 3084,
		["Rune-Inscribed Parchment"] = 3089,
		["Report to Sen'jin Village"] = 805,
		["Minshina's Skull"] = 808,
		["Zalazane"] = 826,
		["Consult Master Gadrin"] = 2935,
		["The Spider God"] = 	{
			["Master Gadrin"] = 2936,
			["Tablet of Theka"] = 2936
		},
		["Finding the Antidote"] = 813,
		["Need for a Cure"] = 812,
		["Break a Few Eggs"] = 815,
		["Lost But Not Forgotten"] = 816,
		["Practical Prey"] = 817,
		["Skull Rock"] = 827,
		["Margoz"] = 828,
		["Break Sharptusk!"] = 3376,
		["Neeru Fireblade"] = 829,
		["Burning Shadows"] = 832,
		["A Strange Request"] = 3121,
		["Slaying the Beast"] = 5761,
		["A Sacred Burial"] = 833,
		["Chen's Empty Keg"] = 	{
			["Brewmaster Drohn"] = 		{
				["Well, I'll be... This was one of Chen Stormstout's kegs. He traveled with Rexxar a long heard about him in a kodo's age. I appreciate you bringing this to me, $N."] = 819,
				["Haha... I never thought I'd make more of this stuff ever again. You've stirred in me time I made a batch of trogg brew. Thank you. The memories warm my stomach."] = 821,
				["Haha! I knew you couldn't resist some of this brew. Come back again anytime you want some more, $N. Just bring me more of the ingredients I had you collect."] = 822
			}
		},
		["Winds in the Desert"] = 834,
		["Securing the Lines"] = 835,
		["A Solvent Spirit"] = 818,
		["Doras the Wind Rider Master"] = 6385,
		["Calm Before the Storm"] = 	{
			["Idriana"] = 4510,
			["Karus"] = 4511,
			["Zilzibin Drumlore"] = 4509,
			["Gracina Spiritmight"] = 4508
		},
		["Conscript of the Horde"] = 840,
		["Crossroads Conscription"] = 842,
		["Plainstrider Menace"] = 844,
		["The Zhevra"] = 845,
		["Sergra Darkthorn"] = 860,
		["Echeyakee"] = 881,
		["Prowlers of the Barrens"] = 903,
		["The Angry Scytheclaws"] = 905,
		["Gann's Reclamation"] = 843,
		["Revenge of Gann"] = 	{
			["Gann Stonespire"] = 		{
				["I see you are quite industrious, $c. No doubt we shall soon have a fitting surprise are quite industrious, $c. No doubt we shall soon have a fitting surprise for those dwarves."] = 846,
				["You have done well, $n! May you be revered in Thunder Bluff as a defender Bluff as a defender of sacred tauren lands and a champion of the lost tribe."] = 849
			}
		},
		["Wolf Swapping - Arctic Wolf"] = 7660,
		["Wolf Swapping - Red Wolf"] = 7661,
		["Ishamuhale"] = 882,
		["Lakota'mani"] = 883,
		["Owatanka"] = 884,
		["Washte Pawne"] = 885,
		["The Harvester"] = 897,
		["Enraged Thunder Lizards"] = 907,
		["Cry of the Thunderhawk"] = 913,
		["Jorn Skyseer"] = 3261,
		["Isha Awak"] = 873,
		["Mahren Skyseer"] = 874,
		["Kolkar Leaders"] = 850,
		["Verog the Dervish"] = 851,
		["Hezrul Bloodmark"] = 852,
		["Centaur Bracers"] = 855,
		["Regthar Deathgate"] = 1361,
		["Counterattack!"] = 4021,
		["Fungal Spores"] = 848,
		["Sample for Helbrim"] = 1358,
		["Southsea Freebooters"] = 887,
		["Stolen Booty"] = 888,
		["The Missing Shipment"] = 	{
			["Gazlowe"] = 892,
			["Wharfmaster Dizzywig"] = 890
		},
		["WANTED: Baron Longshore"] = 895,
		["Find the Shattered Hand"] = 2378,
		["To Orgrimmar!"] = 2380,
		["The Shattered Salute"] = 2460,
		["Mission: Possible But Not Probable"] = 2478,
		["Zando'zan"] = 2379,
		["Rig Wars"] = 2841,
		["Return of the Ring"] = 	{
			["Nogg"] = 2949,
			["Talvash del Kissel"] = 2947
		},
		["Nogg's Ring Redo"] = 2950,
		["Apothecary Zamah"] = 853,
		["Serpentbloom"] = 962,
		["Forsaken Aid"] = 1064,
		["Return to Thunder Bluff"] = 	{
			["Apothecary Zamah"] = 1067,
			["Nara Wildmane"] = 2967
		},
		["The Flying Machine Airport"] = 1086,
		["The Tear of the Moons"] = 857,
		["Egg Hunt"] = 868,
		["Parts of the Swarm"] = 	{
			["Korran"] = 1148,
			["Belgrom Rockmaul"] = 1184
		},
		["Journey to the Crossroads"] = 	{
			["Thork"] = 		{
				["It is good to see that more of our $r allies have come to assist come to assist us from as far away as Thunder Bluff. Again, I welcome you."] = 854,
				["What's this? An elf? And you say the Warchief sent you? <Thork grunts sharply as thrive and survive, or you'll die. That is the way of things in these lands."] = 98024
			}
		},
		["Disrupt the Attacks"] = 871,
		["The Disruption Ends"] = 872,
		["Betrayal from Within"] = 	{
			["Thork"] = 906,
			["Mangletooth"] = 879
		},
		["Supplies for the Crossroads"] = 5041,
		["Consumed by Hatred"] = 899,
		["Lost in Battle"] = 4921,
		["Weapons of Choice"] = 893,
		["A New Ore Sample"] = 1153,
		["The Hunter's Way"] = 861,
		["Melor Sends Word"] = 1130,
		["Steelsnap"] = 1131,
		["Frostmaw"] = 1136,
		["Deadmire"] = 1205,
		["Past Endeavors"] = 	{
			["Melor Stonehoof"] = 		{
				["We learn from our life experiences, $N. From what this marker says, I am sure as a $R $C, and know that you will always have my respect and admiration."] = 5057,
				["We learn from our life experiences, $N. I am sure that you have only become as a $r $c, and know that you will always have my respect and admiration."] = 5057
			},
			["Storm Shadowhoof"] = 		{
				["We learn from our life experiences, $N. From what this marker says, I am sure as a $R $C, and know that you will always have my respect and admiration."] = 5057,
				["We learn from our life experiences, $N. I am sure that you have only become as a $r $c, and know that you will always have my respect and admiration."] = 5057
			}
		},
		["Samophlange"] = 	{
			["Sputtervalve"] = 902,
			["Control Console"] = 		{
				["A variety of buttons, levers and blinking lights are somewhat erratically arrayed on the face There is a small keyhole set into the lower right side of the control panel."] = 894,
				["The lights indicating the three control valves dim as they are shut off. Green lights controlling the apparatus is now moveable, with the valves closed, it can be turned off."] = 900,
				["Turning the key in the lock, the control console unlocks. A red light at the at the top of the console turns off and all power drains from the terminal."] = 901
			}
		},
		["Further Instructions"] = 	{
			["Sputtervalve"] = 1094,
			["Ziz Fizziks"] = 1095
		},
		["Dig Rat Stew"] = 862,
		["Raptor Horns"] = 865,
		["Root Samples"] = 866,
		["Deepmoss Spider Eggs"] = 1069,
		["Blueleaf Tubers"] = 1221,
		["Stinky's Escape"] = 	{
			["Mebok Mizzyrix"] = 1270,
			["Morgan Stern"] = 1222
		},
		["Smart Drinks"] = 1491,
		["The Forgotten Pools"] = 870,
		["The Stagnant Oasis"] = 877,
		["Altered Beings"] = 880,
		["The Barrens Oases"] = 886,
		["The Principal Source"] = 	{
			["Tonga Runetotem"] = 6127,
			["Alanndarian Nightsong"] = 6122
		},
		["Gathering the Cure"] = 	{
			["Tonga Runetotem"] = 6128,
			["Alanndarian Nightsong"] = 6123
		},
		["Harpy Raiders"] = 867,
		["Harpy Lieutenants"] = 875,
		["Serena Bloodfeather"] = 876,
		["Miner's Fortune"] = 896,
		["The Barrens Port"] = 1039,
		["Wharfmaster Dizzywig"] = 	{
			["Wharfmaster Dizzywig"] = 		{
				["Oh yes. Parts for Kravel. I'm glad you're here. These things have been sitting out These things have been sitting out here for days, and I was afraid they'd rust!"] = 1111,
				["A small enough crate. Yes, I should be able to find room for this aboard me just enter it into my ledger. All taken care of! Good day to you, $c."] = 1492
			}
		},
		["Raptor Thieves"] = 869,
		["News of Dogran"] = 	{
			["Gazrog"] = 1509,
			["Ken'zigla"] = 1510
		},
		["Stolen Silver"] = 3281,
		["Return to Jahan"] = 6364,
		["Laughing Sisters"] = 1945,
		["Nether-lace Garment"] = 1946,
		["Return to the Crossroads."] = 6386,
		["Tenaron's Summons"] = 920,
		["Journey into Thunder Bluff"] = 775,
		["The Feast of Winter Veil"] = 	{
			["Cairne Bloodhoof"] = 7061,
			["King Magni Bronzebeard"] = 7063
		},
		["Rellian Greenspyre"] = 922,
		["Tumors"] = 923,
		["The Enchanted Glade"] = 937,
		["Mist"] = 938,
		["Good Natured Emma"] = 5048,
		["Ak'Zeloth"] = 809,
		["The Demon Seed"] = 924,
		["Twisted Hatred"] = 	{
			["Tallonkai Swiftroot"] = 		{
				["With Lord Melenas laid to rest I can finally move on to other matters. Thank Melenas laid to rest I can finally move on to other matters. Thank you, $n."] = 932,
				["I should have known this was being used to twist the spiders of this land. moment, or Dolanaar will never recover its reputation. I trust you to do the same."] = 98403
			}
		},
		["The Emerald Dreamcatcher"] = 2438,
		["Ferocitas the Dream Eater"] = 2459,
		["Cave Mushrooms"] = 947,
		["Simple Sigil"] = 3116,
		["Encrypted Sigil"] = 3118,
		["Hallowed Sigil"] = 3119,
		["Etched Sigil"] = 3117,
		["Verdant Sigil"] = 3120,
		["Garments of the Moon"] = 5621,
		["In Favor of Elune"] = 5622,
		["A Bundle of Hides"] = 6361,
		["Meats to Orgrimmar"] = 6365,
		["The Fall of Ameth'Aran"] = 953,
		["For Love Eternal"] = 963,
		["Tools of the Highborne"] = 958,
		["Seeking the Kor Gem"] = 	{
			["Thundris Windweaver"] = 1442,
			["Ulric Frostveil"] = 95042
		},
		["Thundris Windweaver"] = 4761,
		["The Cliffspring River"] = 4762,
		["The Blackwood Corrupted"] = 4763,
		["Bashal'Aran"] = 	{
			["Asterion"] = 		{
				["Ahh... To what could I possibly owe the exceedingly special honor of a $r such the place. It has indeed been many years, decades even, since I had civil accompaniment."] = 954,
				["Indeed... The grells of Bashal'Aran do not possess that which I am searching... however they not mine. Recent for me stretches into the veil of the past, almost another Age..."] = 955,
				["It... it is hard for me to even believe that what I hold now is When the seal is destroyed, I might walk the forests of the earth freely again."] = 956,
				["I am freed, $n! I can now see with my own eyes the changes that Athrikus, still lives... Already my feelings of hopelessness will give way into thoughts of vengeance."] = 957
			}
		},
		["The Tower of Althalaxx"] = 	{
			["Balthule Shadowstrike"] = 		{
				["Elissa sent you? Then it is good tidings you bring. I have troubling news to troubling news to report to her, and had no means with which to deliver it."] = 965,
				["Many thanks, $n. This should shed some light on this warlocks' gathering... Hmm... the Cult of must be. There is no more time to delay. Warning must be delivered to Delgren immediately."] = 966,
				["With the death of Athrikus, I hope that the demonic forces in this area will regroup and return, but then we shall be even more prepared to meet their threat."] = 1143,
				["Ah, it's good to see you again, $n! The strangest things have been happening around split the air, and lightning struck the ground from time to time. What's going on?"] = 1167
			},
			["Delgren the Purifier"] = 		{
				["If you don't mind my saying, you seem a bit well-equipped for a messenger, hm? manners of the night elves, but I have grown to respect them greatly as allies."] = 967,
				["Hmm, some dark magic enchants this soulstone. Let's see what's trapped inside, shall we? Hmm, some dark magic enchants this soulstone. Let's see what's trapped inside, shall we?"] = 970,
				["It was a grand thing you did today, $n. You should be quite proud of down a warlock of such power. Now, let's see what we can learn from Ilkrud's writings."] = 973,
				["I knew you would be up to the task, $n. I sense great deeds before you, the wrongs that plague our lands. Bear my blessings, $n, as well as this gift."] = 981,
				["Perhaps the satyrs have been allowed to persist in the forest for too long. I be greatly diminished. We must seize on this opportunity to eliminate him and his cult."] = 1140
			}
		},
		["Supplies to Auberdine"] = 976,
		["Trouble at the Docks"] = 959,
		["Gaffer Jacks"] = 1579,
		["Electropellers"] = 1580,
		["New Kodo - Teal"] = 7662,
		["New Kodo - Green"] = 7663,
		["Trek to Ashenvale"] = 990,
		["Raene's Cleansing"] = 	{
			["Raene Wolfrunner"] = 		{
				["This is terrible, $N. Teronis is dead?! The time for mourning will come, but for now completing his task? I would rest much better knowing his death was not in vain."] = 1023,
				["You've recreated the rod Teronis had set out to find? That's wonderful to hear. Teronis would hear. Teronis would be proud to see his quest is continuing even after his tragic passing."] = 1029,
				["So, this is the skull of the fiercest furbolg threat in Ashenvale? I am more than in a place of reverence for others to see. Teronis would be proud. Thank you again."] = 1046
			},
			["Teronis' Corpse"] = 991,
			["Hidden Shrine"] = 1028,
			["Krolg"] = 		{
				["Yes, yes... you are one of my kind, but still whole. Still clean. I am unsure out of my tribe. At night I can still see the campfires burning in the darkness."] = 1030,
				["You have done well, my friend. The forest is still tainted, but at least we know of my own kind. Be well. Perhaps our tribes will meet again under less violent times."] = 1045
			},
			["Shael'dryn"] = 		{
				["Oh, Raene sent you? It must be serious indeed. What can I help you with? Oh, Raene sent you? It must be serious indeed. What can I help you with?"] = 1024,
				["I'm pleased to see you're back, $N. I'm pleased to see you're back, $N."] = 1026,
				["You found the final piece? Wonderful for you... and for Raene. I guess we'll have to for you... and for Raene. I guess we'll have to see about repairing it, won't we?"] = 1027,
				["You've done it, $N! Well done! You've done it, $N! Well done!"] = 1055
			}
		},
		["An Aggressive Defense"] = 1025,
		["Culling the Threat"] = 1054,
		["A Lost Master"] = 	{
			["Volcor"] = 993,
			["Terenthis"] = 986
		},
		["How Big a Threat?"] = 	{
			["Terenthis"] = 		{
				["This is terrible news indeed, $N. With the furbolgs this close to Auberdine, we will have this close to Auberdine, we will have to prepare ourselves for the inevitable. Thank you, $N."] = 984,
				["Wash the blood from your garments, $N, and do not mourn what you had to in Auberdine, even if Darkshore is still in jeopardy from the effects of fel moss."] = 985
			}
		},
		["Escape Through Force"] = 994,
		["Escape Through Stealth"] = 995,
		["Plagued Lands"] = 2118,
		["Cleansing of the Infected"] = 2138,
		["Tharnariun's Hope"] = 2139,
		["Easy Strider Living"] = 2178,
		["Garments of Spirituality"] = 5648,
		["In Favor of Spirituality"] = 5649,
		["Hallowed Tablet"] = 3085,
		["The Horn of the Beast"] = 3181,
		["At Last!"] = 3201,
		["The Bounty of Teldrassil"] = 6341,
		["The Zoram Strand"] = 1008,
		["Journey to Astranaar"] = 1133,
		["Pridewings of Stonetalon"] = 1134,
		["The Ancient Statuette"] = 1007,
		["Ruuzel"] = 1009,
		["Bathran's Hair"] = 1010,
		["Forsaken Diseases"] = 1011,
		["Insane Druids"] = 1012,
		["Ancient Spirit"] = 4261,
		["Kayneth Stillwind"] = 4581,
		["The Howling Vale"] = 1022,
		["Elemental Bracers"] = 1016,
		["Mage Summoner"] = 1017,
		["Orendil's Cure"] = 1020,
		["Elune's Tear"] = 1033,
		["The Ruins of Stardust"] = 1034,
		["Fallen Sky Lake"] = 1035,
		["Return to Feathermoon Stronghold"] = 2867,
		["A Hero's Welcome"] = 4266,
		["Passage to Booty Bay"] = 1040,
		["Compendium of the Fallen"] = 1049,
		["A Future Task"] = 	{
			["Sage Truthseeker"] = 2968,
			["High Explorer Magellas"] = 2964
		},
		["Mythology of the Titans"] = 1050,
		["In the Name of the Light"] = 1053,
		["Vorrel's Revenge"] = 1051,
		["Jin'Zil's Forest Magic"] = 1058,
		["Letter to Jin'Zil"] = 1060,
		["The Elder Crone"] = 1063,
		["Delivery to Magatha"] = 3518,
		["Sacred Fire"] = 5062,
		["Report to Zor"] = 1262,
		["Service to the Horde"] = 7541,
		["Reclaiming the Charred Vale"] = 	{
			["Falfindel Waywarder"] = 1059,
			["Keeper Albagorm"] = 1057
		},
		["Lonebrow's Journal"] = 1100,
		["The Crone of the Kraul"] = 1101,
		["Thalanaar Delivery"] = 4281,
		["The Spirits of Stonetalon"] = 1061,
		["Goblin Invaders"] = 1062,
		["Shredding Machines"] = 1068,
		["A Gnome's Respite"] = 1071,
		["Ineptitude + Chemicals = Fun"] = 	{
			["Gaxim Rustfizzle"] = 1074,
			["Lomac Gearstrip"] = 1073
		},
		["Special Delivery for Gaxim"] = 1077,
		["Covert Ops - Alpha"] = 1079,
		["Covert Ops - Beta"] = 1080,
		["On Guard in Stonetalon"] = 	{
			["Gaxim Rustfizzle"] = 1085,
			["Kaela Shadowspear"] = 1070
		},
		["A Scroll from Mauren"] = 1075,
		["Devils in Westfall"] = 1076,
		["Retrieval for Mauren"] = 1078,
		["Update for Sentinel Thenysil"] = 1082,
		["Enraged Spirits"] = 1083,
		["Wounded Ancients"] = 1084,
		["Kaela's Update"] = 1091,
		["An Old Colleague"] = 1072,
		["Vorlus Vilehoof"] = 1683,
		["Elanaria"] = 1684,
		["The Shade of Elura"] = 1686,
		["Prayer to Elune"] = 	{
			["Astarii Starseeker"] = 3378,
			["Zamael Lunthistle"] = 3377
		},
		["The Apple Falls"] = 2241,
		["Destiny Calls"] = 2242,
		["Flight to Auberdine"] = 6342,
		["Gerenzo's Orders"] = 	{
			["Ziz Fizziks"] = 1092,
			["Piznik"] = 1090
		},
		["Super Reaper 6000"] = 1093,
		["Gerenzo Wrenchwhistle"] = 1096,
		["Ziz Fizziks"] = 1483,
		["Erion Shadewhisper"] = 2259,
		["In Nightmares"] = 	{
			["Mathrengyl Bearwalker"] = 3370,
			["Arch Druid Hamuul Runetotem"] = 3369
		},
		["Morrowgrain Research"] = 	{
			["Mathrengyl Bearwalker"] = 		{
				["Yes, this voucher is good for twenty packets of seeds. If you run out, we morrowgrain find that the reward the Arch Druid offers far makes up for the cost."] = 3781,
				["Well done $N, I will be sure to give these to the Arch Druid himself aiding us, then please return to me when you have cultivated additional morrowgrain for us."] = 3785
			},
			["Bashana Runetotem"] = 		{
				["Yes, this voucher is good for twenty packets of seeds. If you run out of morrowgrain find that the reward the Arch Druid offers far makes up for the cost."] = 3782,
				["Well done $N, I will be sure to give these to the Arch Druid himself wish to continue aiding us, then please return when you have cultivated more of it."] = 3786
			}
		},
		["Morrowgrain to Darnassus"] = 3803,
		["Glyphed Oaken Branch"] = 	{
			["Mathrengyl Bearwalker"] = 4986,
			["Nara Wildmane"] = 4987
		},
		["Back to Darnassus"] = 5931,
		["Ride to Ironforge"] = 6391,
		["Deathstalkers in Shadowfang"] = 1098,
		["A Vengeful Fate"] = 1102,
		["Rocket Car Parts"] = 1110,
		["Parts for Kravel"] = 1112,
		["Rumors for Kravel"] = 1117,
		["Zanzil's Mixture and a Fool's Stout"] = 1119,
		["Hardened Shells"] = 1105,
		["Encrusted Tail Fins"] = 1107,
		["The Brassbolts Brothers"] = 	{
			["Wizzle Brassbolts"] = 		{
				["Ah! Longbeard sent you with a load of helmets! Hooray! Now maybe we can talk a a load of helmets! Hooray! Now maybe we can talk a pilot into driving our car..."] = 1179,
				["Ah, you want to help me? Great! There's a part I want for an experiment I'm working on, and I need a brave $c like you to help me get it!"] = 2769
			}
		},
		["Gahz'rilla"] = 2770,
		["Salt Flat Venom"] = 1104,
		["Delivery to the Gnomes"] = 1114,
		["News for Fizzle"] = 1137,
		["The Swarm Grows"] = 	{
			["Moktar Krin"] = 		{
				["Don't mind the thundering echoes off the mountains' walls. The goblins and gnomes are out word from Belgrom in Orgrimmar. Until then, we hold our position here, and stay vigilant."] = 1146,
				["Ha! That ichor you're covered in actually makes you prettier, $N! It certainly does make proof you've done your part to help us against those insect creatures. Thank you, $N."] = 1147
			},
			["Belgrom Rockmaul"] = 1145
		},
		["A Grim Discovery"] = 	{
			["Belgrom Rockmaul"] = 2976,
			["Krueg Skullsplitter"] = 2974
		},
		["Betrayed"] = 	{
			["Belgrom Rockmaul"] = 3507,
			["Ag'tor Bloodfist"] = 		{
				["We've sent everything we had at her and her workers, but they are strong in can still punish her for lying and betraying Belgrom. What do you say, are you in?"] = 3504,
				["RAR!! Incredible! You've done it! Belgrom will be pleased! Finally the spirits of dozens of our Finally the spirits of dozens of our warriors can be at peace. Thank you, $N."] = 3506
			},
			["Kaldorei Tome of Summoning"] = 3505
		},
		["To Steal From Thieves"] = 1164,
		["Test of Lore"] = 	{
			["Parqual Fintallas"] = 		{
				["Braug sent you? Impossible. <Parqual looks you up and down.> Braved Dor'Danil, took a leap of faith, you think you have what it takes to pass my test. So be it... $c."] = 1159,
				["This is the book I sent you to search for. <Parqual slowly caresses his hand over then I shall ask you your question and you can be done with these tests!"] = 1160,
				["Well done, $N. I had my doubts if you studied the text I asked you doubts if you studied the text I asked you to get, but you've answered correctly."] = 6628
			},
			["Braug Dimspirit"] = 		{
				["The days and nights grow colder throughout the world as goblins rape the land, and because you have shown the attributes necessary to realize it also. Now you stand before Braug."] = 1152,
				["This is the book I named. There is hope you will answer my question correctly you are prepared, speak to me again and I shall ask a question of you."] = 1154,
				["Well done, $c. You have studied the text I asked you to, and now you the text I asked you to, and now you have passed another of our tests."] = 6627
			}
		},
		["Get the Gnomes Drunk"] = 1120,
		["Get the Goblins Drunk"] = 1121,
		["Alliance Relations"] = 	{
			["Maurin Bonesplitter"] = 1433,
			["Keldran"] = 		{
				["Putanni, noble $c. I am Keldran, student of magic... and other mystical arts. The business Craven sees itself. How our allies see us. And most importantly, how our enemies see us."] = 1431,
				["You have returned from Desolace more than successful, $N. Thank you. Thank you for your efforts, acceptable, we will not provoke any further threats of unnecessary violence. I am indebted to you."] = 1436
			},
			["Takata Steelblade"] = 1432
		},
		["The Burning of Spirits"] = 1435,
		["The Corrupter"] = 	{
			["Maurin Bonesplitter"] = 		{
				["Hmm, these runes are indeed a language, $N, an old language. They seem remotely similar a contract of some kind.... Here, yes, this symbol is the demon's signature: Lord Azrethoc."] = 1480,
				["The shadowstalkers were unable to slay you, $c. Impressive... most impressive. This scalp will do nicely focus for the spell--something to project an image of the demon lord and his whereabouts."] = 1481,
				["A precious oracle crystal... flawless... beautiful. Indeed. We shall begin immediately. Finding this demon lord should $c, and let us see what this demon is, and where he may be found."] = 1482
			},
			["Takata Steelblade"] = 		{
				["I witnessed what just occurred with Maurin and the demon lord. That creature, even as turned my back on my duties here to battle this evil for my own honor."] = 1484,
				["A mighty victory for us all, $N. Let us rejoice in your success. I trust efforts, and we may one day have a place we can safely call home again."] = 1488
			}
		},
		["Willix the Importer"] = 1144,
		["Mortality Wanes"] = 1142,
		["A New Cloak's Sheen"] = 2973,
		["Michael Garrett"] = 6322,
		["Ride to the Undercity"] = 6323,
		["Speak with Anastasia"] = 1881,
		["The Balnir Farmstead"] = 1882,
		["Report to Anastasia"] = 1959,
		["Investigate the Alchemist Shop"] = 1960,
		["Spellfire Robes"] = 1962,
		["Martek the Exiled"] = 1106,
		["Indurium"] = 1108,
		["A Bump in the Road"] = 1175,
		["Load Lightening"] = 1176,
		["Indurium Ore"] = 1192,
		["Rizzle's Schematics"] = 1194,
		["The Eighteenth Pilot"] = 1186,
		["Razzeric's Tweaking"] = 1187,
		["Safety First"] = 	{
			["Razzeric"] = 1189,
			["Shreev"] = 1188
		},
		["Zamek's Distraction"] = 1191,
		["The Sacred Flame"] = 	{
			["Zangen Stonehoof"] = 1195,
			["Rau Cliffrunner"] = 		{
				["Hm, yes, this phial of water will serve our purposes perfectly. Because of the shared will enable us to breach the protection of the eternal flame surrounding the centaur relic."] = 1196,
				["I sense a strange energy emanating from the Hoof... I have no doubt that we thanks, $n. Now I must begin to decipher the mysteries you have brought to me."] = 1197
			}
		},
		["Frostsaber Replacement"] = 7671,
		["Nightsaber Replacement"] = 7672,
		["Blackfathom Villainy"] = 	{
			["Dawnwatcher Selgorm"] = 1200,
			["Bashana Runetotem"] = 6561
		},
		["Twilight Falls"] = 1199,
		["In Search of Thaelrid"] = 1198,
		["Theramore Spies"] = 1201,
		["The Theramore Docks"] = 1202,
		["The Lost Report"] = 1238,
		["The Severed Head"] = 1239,
		["Marg Speaks"] = 1261,
		["Jarl Needs a Blade"] = 	{
			["'Swamp Eye' Jarl"] = 		{
				["That's a good blade. It has a good swing. It's a good swing blade. Thank I want to try it.... Later. I'll try it later. But like I was saying... thanks."] = 1203,
				["That's a good blade. It has a good swing. It's a good swing blade. Thank want to try it.... Later. I'll try it later. But like I was saying... thanks."] = 81570
			}
		},
		["Jarl Needs Eyes"] = 1206,
		["Soothing Spices"] = 1218,
		["Mudrock Soup and Bugs"] = 1204,
		["... and Bugs"] = 1258,
		["Morgan Stern"] = 1260,
		["The Black Shield "] = 1251,
		["Suspicious Hoofprints"] = 	{
			["Krog"] = 1268,
			["Captain Garran Vimes"] = 1284
		},
		["Lieutenant Paval Reethe"] = 	{
			["Krog"] = 1269,
			["Captain Garran Vimes"] = 1252,
			["Adjutant Tesoran"] = 1259
		},
		["Questioning Reethe"] = 1273,
		["The Black Shield"] = 	{
			["Krog"] = 1323,
			["Caz Twosprocket"] = 1319,
			["Mosarn"] = 1276,
			["Captain Garran Vimes"] = 		{
				["Hm, I'm no expert with the construction of arms and armor. Their use, yes, but seems as ordinary as any, excepting the damage from the fire that engulfed the inn."] = 1253,
				["That's not much information to work on, but we'll have to keep it in mind. this mystery will fall into place, and paint a more helpful picture of what happened."] = 1320
			},
			["Do'gol"] = 		{
				["This is good shield. Very strong, heavy, good. But Do'gol don't need it. I make But Do'gol don't need it. I make shields, not buy them, $n. You should know that."] = 1321,
				["I don't like spiders that are so big I can't sit on them and squish for getting them, $n. Now I rip them open and pour them onto the shield..."] = 1322
			}
		},
		["Captain Vimes"] = 1220,
		["They Call Him Smiling Jim"] = 1282,
		["Daelin's Men"] = 1285,
		["The Deserters"] = 	{
			["Captain Garran Vimes"] = 1287,
			["Balos Jacken"] = 1286
		},
		["The Orc Report"] = 1219,
		["Sara Balloo's Plea"] = 683,
		["The Bearer of Bad News"] = 4361,
		["The Princess's Surprise"] = 4363,
		["Shadowshard Fragments"] = 	{
			["Archmage Tervosh"] = 7070,
			["Uthel'nay"] = 7068
		},
		["Vimes's Report"] = 1288,
		["James Hyal"] = 	{
			["Vincent Hyal"] = 1301,
			["Clerk Lendry"] = 1302
		},
		["Chicken Clucking for a Mint"] = 	{
			["Innkeeper Firebrew"] = 8353,
			["Innkeeper Norman"] = 8354
		},
		["Speak with Bink"] = 1879,
		["Mage-tastic Gizmonitor"] = 1880,
		["The Art of the Armorsmith"] = 	{
			["Grumnus Steelshaper"] = 5283,
			["Okothos Ironrager"] = 5301
		},
		["Road to Salvation"] = 2218,
		["Onin's Report"] = 2239,
		["To Hulfdan!"] = 2299,
		["Errand for Apothecary Zinge"] = 	{
			["Apothecary Zinge"] = 238,
			["Alessandro Luca"] = 232
		},
		["Return to Apothecary Zinge"] = 864,
		["Zinge's Delivery"] = 1359,
		["Fenstad's Hunch"] = 8979,
		["In Search of The Temple"] = 1448,
		["Rhapsody's Tale"] = 1469,
		["Into The Temple of Atal'Hakkar"] = 1475,
		["Mazen's Behest"] = 	{
			["Watcher Mahar Ba"] = 1364,
			["Acolyte Dellis"] = 1363
		},
		["Supplies for Nethergarde"] = 1395,
		["The Lost Supplies"] = 1423,
		["Deliver the Shipment"] = 1425,
		["Neeka Bloodscar"] = 1418,
		["Coyote Thieves"] = 1419,
		["The Kolkar of Desolace"] = 1362,
		["Khan Dez'hepah"] = 1365,
		["Centaur Bounty"] = 	{
			["Felgur Twocuts"] = 1366,
			["Corporal Melkins"] = 1387
		},
		["Ledger from Tanaris"] = 4450,
		["Mold Rhymes With..."] = 	{
			["Krinkle Goodsteel"] = 		{
				["Dithers said you'd deliver the goods, and deliver you have! A deal is a deal; Excellent... otherwise, it would have been a long trip back to the Bulwark for you."] = 5514,
				["Arbington said you'd deliver the goods, and deliver you have! A deal is a deal; Excellent... otherwise, it would have been a long trip back to Chillwind Point for you."] = 5538
			}
		},
		["Stormpike's Order"] = 1338,
		["Fire Hardened Mail"] = 1701,
		["The Shieldsmith"] = 1702,
		["Furen's Armor"] = 1782,
		["Nothing But The Truth"] = 	{
			["Apothecary Faustin"] = 		{
				["Zraedus was just telling me about the nosey little Infiltrator before you arrived. Quite a problem, and we will deliver a truth serum to Stonard. For the Horde! ...did I get that right?"] = 1372,
				["Splendid, $n! And just in time too. From what Zraedus tells me, the Infiltrator has orcs. Give me but a moment to prepare the pois-- I mean prepare the truth serum."] = 1383
			},
			["Infiltrator Marksen"] = 1391,
			["Deathstalker Zraedus"] = 1388
		},
		["Vital Supplies"] = 1477,
		["Encroaching Wildlife"] = 1396,
		["Driftwood"] = 1398,
		["The Lost Caravan"] = 1421,
		["Speak with Jennea"] = 1860,
		["Mirror Lake"] = 1861,
		["Report to Jennea"] = 1919,
		["Investigate the Blue Recluse"] = 1920,
		["Fresh Meat"] = 1430,
		["Lack of Surplus"] = 	{
			["Tok'Kar"] = 		{
				["Ah! Wonderful. Fresh meat for the fire tonight. Thank you, $N. You've helped make the coming anyone's laid eyes upon, but at least his attitude reeks far less than his smell."] = 698,
				["Glad to see you're alive and well, $N. These claws should make do nicely. The more will only take a short time. I've become quite adept and quick at their production."] = 699
			}
		},
		["Threat From the Sea"] = 	{
			["Tok'Kar"] = 1427,
			["Katar"] = 		{
				["Be silent a moment, $c. Even over the dull roar of the sea you can roar of the sea you can still hear those disgusting gurgles from the fish men."] = 1422,
				["The sea seems vast and relentless, but you have stained her with the blood of you wish to slay more of the fish men. I will gladly reward you again."] = 1426
			}
		},
		["Continued Threat"] = 1428,
		["Noxious Lair Investigation"] = 82,
		["Insect Part Analysis"] = 	{
			["Alchemist Pestlezugg"] = 110,
			["Senior Surveyor Fizzledowser"] = 113
		},
		["March of the Silithid"] = 	{
			["Alchemist Pestlezugg"] = 		{
				["Yes, I gathered that Gracina sent you to me. Your experience in fighting these beasties it is also one step closer to figuring out what the silithid are all about."] = 4493,
				["Yes, I gathered that Zilzibin sent you to me. Your experience in fighting these beasties it is also one step closer to figuring out what the silithid are all about."] = 4494
			}
		},
		["Bungle in the Jungle"] = 4496,
		["Pawn Captures Queen"] = 4507,
		["The Atal'ai Exile"] = 1429,
		["Jammal'an the Prophet"] = 1446,
		["Rhapsody Shindigger"] = 1451,
		["Rhapsody's Kalimdor Kocktail"] = 1452,
		["To The Hinterlands"] = 1449,
		["Gryphon Master Talonaxe"] = 1450,
		["Witherbark Cages"] = 2988,
		["The Altar of Zul"] = 2989,
		["Return to the Hinterlands"] = 2993,
		["Saving Sharpbeak"] = 2994,
		["The Karnitol Shipwreck"] = 	{
			["Roetten Stonehammer"] = 1457,
			["Kreldig Ungor"] = 		{
				["Welcome back to Nijel's Point, $N. So, tell me what you found. What!? Nothing? An empty gonna get us paid, I'm afraid. Tell me more about these marks you saw... these slashes."] = 1455,
				["This is great, $N! You found Karnitol's belongings! Those blasted naga, always causing trouble. I think than have to go against their kind. You've done a great service to the Reclaimers."] = 1456
			},
			["Karnitol's Chest"] = 1454
		},
		["Reagents for Reclaimers Inc."] = 	{
			["Roetten Stonehammer"] = 1467,
			["Kreldig Ungor"] = 		{
				["Good good, $N. Not sure if these are of any good quality, but if Leftwitch to begin with. What say you to getting on with the next item on his list?"] = 1458,
				["Your help here's a boon, $N. You're cutting my time spent here in Desolace by you an ale for sure. But until then, let's get the rest of these reagents gathered."] = 1459,
				["Honestly? I wouldn't have thought it. You're amazing, $N. Taking on demons for a mage's boot. Great job! I'm personally gonna tell Roetten about you when I get back to Ironforge."] = 1466
			}
		},
		["Reclaimers' Business in Desolace"] = 1453,
		["Befouled by Satyr"] = 1434,
		["Return to Vahlarriel"] = 1440,
		["Vahlarriel's Search"] = 	{
			["Vahlarriel Demonslayer"] = 1465,
			["Dalinda Malem"] = 1438,
			["Malem Chest"] = 1437
		},
		["Search for Tyranis"] = 1439,
		["Reclaimed Treasures"] = 	{
			["Patrick Garrett"] = 2342,
			["Krom Stoutarm"] = 1360
		},
		["Piercing the Veil"] = 1470,
		["The Binding"] = 	{
			["Carendin Halgar"] = 		{
				["You have done well, $n. Now, I will impart to you the spell used for voidwalker. The power that it unleashed upon you is now yours to command. Use it wisely."] = 1471,
				["Again, you have done well, $n. It has been quite some time since I have future trials. For now, let me show you the summoning spell for your newly dominated succubus."] = 1474,
				["Impressive. Very impressive. The sayaad specialize in preying upon mortals. Many a $c has thought efforts have earned your reward. I will teach you the spell to summon the incubus."] = 65597
			},
			["Gan'rul Bloodeye"] = 		{
				["You have done well, $N. I will show you how to summon the voidwalker similar still lie before you will make this seem as simple as waking in the morning."] = 1504,
				["Success! Be sure I expected nothing less from my star pupil. You have proven your worth, as protection against the wiles of the dark power you have learned to summon today."] = 1513,
				["Hah! Victorious, as expected! The incubus is subdued, and it will be my pleasure to separates us from the demons. We wield their darkness, but they will never wield us."] = 65604
			},
			["Gakin the Darkbinder"] = 		{
				["You did better than I expected, $n, but as well as I'd hoped. Now, you to teach you at the present, but I am far from done with you, $n."] = 1689,
				["Well done, well done, $n. I see we've done right in deciding to train you. no qualms in showing you the way to control your newly bound succubus. Observe carefully."] = 1739,
				["Not bad, $N. Your have bested the fiend, and your will remains unbroken. Many a closely, and I will teach you the invocation to call upon your newly bound incubus."] = 65603
			},
			["Strahad Farsan"] = 1795
		},
		["Creature of the Void"] = 	{
			["Carendin Halgar"] = 1473,
			["Gan'rul Bloodeye"] = 1501
		},
		["Hearts of the Pure"] = 1476,
		["Halgar's Summons"] = 1478,
		["A Rogue's Deal"] = 	{
			["Innkeeper Renee"] = 8,
			["Calvin Montague"] = 590
		},
		["Devourer of Souls"] = 	{
			["Godrick Farsan"] = 1472,
			["Cazul"] = 1507,
			["Takar the Seer"] = 1716
		},
		["Ur's Treatise on Shadow Magic"] = 1938,
		["High Sorcerer Andromath"] = 1939,
		["Deviate Hides"] = 1486,
		["Deviate Eradication"] = 1487,
		["Assisting Arch Druid Runetotem"] = 936,
		["Hamuul Runetotem"] = 1489,
		["Leaders of the Fang"] = 914,
		["Nara Wildmane"] = 1490,
		["Guarding Secrets"] = 	{
			["Nara Wildmane"] = 4883,
			["Trull Failbane"] = 4882
		},
		["Path of Defense"] = 1498,
		["Veteran Uzzek"] = 1505,
		["Gan'rul's Summons"] = 1506,
		["Love's Gift"] = 1512,
		["Thun'grim Firegaze"] = 1502,
		["Forged Steel"] = 1503,
		["Speak with Thun'grim"] = 1825,
		["Brutal Armor"] = 1838,
		["Brutal Hauberk"] = 1848,
		["Speak with Un'thuwa"] = 1883,
		["Ju-Ju Heaps"] = 1884,
		["Glyphic Tablet"] = 3086,
		["Speak with Deino"] = 1943,
		["Waters of Xavian"] = 1944,
		["Earth Sapta"] = 	{
			["Canaga Earthcaller"] = 1463,
			["Seer Ravenfeather"] = 1462,
			["Teo Hammerstorm"] = 94472
		},
		["Call of Earth"] = 	{
			["Canaga Earthcaller"] = 		{
				["Excellent. Your success shows that you are prepared. Of all the elements, earth represents the foundation make a sapta for you now, and by accepting it, you will realize your path."] = 1516,
				["Excellent! The totem I will craft for you is more than a symbol of your status for now, take this earth totem, and a scroll to teach you your first ability."] = 1518
			},
			["Seer Ravenfeather"] = 		{
				["Good, $N. Your return here signifies that you are indeed prepared for the next step. Of sapta for you now, and by accepting it, a new path will open before you."] = 1519,
				["Splendid. The totem I will craft for you is more than a symbol--it has abilities beyond let you know as much when you visit them. But for now, take this earth totem..."] = 1521
			},
			["Minor Manifestation of Earth"] = 		{
				["Ah... $N... pleased is the earth to have you here. Bound together in body and spirit, the elements. Dual natures opposing one another, you must come to learn these things intricately."] = 1517,
				["Ah... $N... child of the four winds... You seek understanding. You seek answers. Why have the spirits of the four winds once more, this is the path you must walk."] = 92467,
				["Ah... $N... the earth welcomes you, even in this frozen land. Bound in body and still--they clash and roar. Learn their dual nature, even here among the snow and stone."] = 94374
			},
			["Teo Hammerstorm"] = 		{
				["Well done! Know this - totems ain't just a mark of yer place among shamans. for more. But for now, take this totem, and let the ground speak through ye."] = 94375,
				["Well done, lad. Ye've proven yerself ready. Earth's the bedrock of all things. Strength, stamina, I'll craft ye a sapta now - accept it, and ye'll walk the true path."] = 94373,
				["The land itself let me know ye were comin'! Aye, sometimes, the burnin' fire within within us is enough to power us through the snow without even touchin' the ground!"] = 96243
			},
			["Windshaper Boro"] = 		{
				["You have returned and brought what I have requested and thus your grit and determination thus your grit and determination are unquestionable. You are ready for the next step, Harten."] = 92466,
				["Good! The totem I will craft for you is more than a symbol of your know when you are ready for greater knowledge. But for now, take this earth totem..."] = 92468
			}
		},
		["Call of Water"] = 	{
			["Brine"] = 		{
				["Yes? Mmm. I have a feeling I know what you're going to ask me: what would concern for her own well-being? I'm willing to bet we both know the answer to that."] = 1530,
				["Wonderful, $N. With all three samples gathered, I can create for you a vial of all $C proud, and I look forward to hearing about your exploits in the future."] = 1534,
				["I thought some bloodshed might ensue if you tried to take water from the pool. a pity, but more than likely a boon for the other races of the Barrens."] = 1535,
				["This is good, $N. You're dedicated to the task at hand and have the ability need to create the reagent needed for your sapta. Islen will be pleased as well."] = 1536
			},
			["Islen Waterseer"] = 		{
				["This is the proof I asked for. You've done well, $N. I am pleased to be trainer when you have the time. They might have other spells for you to learn."] = 96,
				["Ah, a vial of water created and blessed by Brine, and gathered by you, no you about if you feel you are ready. Are you prepared for one more journey, $N?"] = 220,
				["The wind approaches you quickly from the horizon; the earth is steady beneath your feet; the strength to carry on even further. But the first step is yours to take."] = 1528
			},
			["Tiev Mordune"] = 1103,
			["Brazier of Everfount"] = 63,
			["Minor Manifestation of Water"] = 		{
				["Thanks to you. Thanks to the shamans. Corruption ebbs but life continues to wane. Up to to the shamans. Corruption ebbs but life continues to wane. Up to shamans to protect life."] = 100,
				["Thanks to you. Thanks to the shamans. Corruption ebbs but life continues to wane. Up the shamans. Corruption ebbs but life continues to wane. Up to shamans to protect life."] = 94503
			},
			["Norric Lochthane"] = 		{
				["Aye, this is the proof I asked for, and ye've done well, $n. I'm proud time to learn. Pure water heals, aye, but its gifts go far beyond mending wounds."] = 94505,
				["Ahh, water blessed by Hervdana herself, and gathered by your own hands? A gift indeed. have an equally important purpose... waste not even a cork stopper dampened with sacred water."] = 94501,
				["The wind's rushin' at yer back, the stone's firm beneath yer boots, and the fire further still. Now, go on, take that first step. The mountain waits for no one."] = 94494
			},
			["Hervdana Saegrund"] = 		{
				["Well done, $n! With all three samples in hand, I'll brew ye a vial o' Ye've done $c proud, and I look forward to hearing yer tales in the future."] = 94500,
				["Aye, this is good water, $n. The magic used by the shadowseers in the region need to create the reagent needed for your sapta. Norric will be pleased as well."] = 94499,
				["Glad ye managed to steer clear o' the Dark Iron. Shame they've crept so far it marks the beginning of your stage as a vessel--one who seeks the waters' wisdom."] = 94497,
				["Aye, I see it in yer eyes, $r. You're wonderin' what kind o' soul chooses at the edge of the falls, I reckon we both know the answer to that."] = 94495
			},
			["Forgotten Shrine"] = 94502
		},
		["Fire Sapta"] = 	{
			["Telf Joolam"] = 1464,
			["Braldir Ashmantle"] = 94473
		},
		["Call of Fire"] = 	{
			["Telf Joolam"] = 		{
				["Ah, my mistake, $N. I apologize. I did not realize you possessed the Torch. I a greater secret from the mundane members of the Horde. To us, it is sacred."] = 1524,
				["These will do nicely, $N. Fire is more than chaos and destruction--do well to remember that. magic in conjunction with one another will show not only true skill, but great wisdom."] = 1525
			},
			["Kranal Fiss"] = 		{
				["Hmmm, Searn sent you to me, did he? Well then, Searn could always be trusted, so and destruction will come easily, but you must still know when to stay your hand."] = 1522,
				["Hmmm, Narm sent you to me, did he? Well then, Narm could always be trusted, so and destruction will come easily, but you must still know when to stay your hand."] = 1523,
				["Your spirit burns brighter than any torch I've ever seen, $N, and for that, you Let me be the first to congratulate you and present to you your newest totem."] = 1527,
				["Hmmm, Swart sent you to me, did he? Well then, Swart could always be trusted, so and destruction will come easily, but you must still know when to stay your hand."] = 2983
			},
			["Brazier of the Dormant Flame"] = 		{
				["A white hot flame ignites within the bowl as you place the ember within. You place the top of the torch within the basin, and it immediately catches on fire."] = 1526,
				["A white hot flame ignites within the bowl as you place the ember within. You it immediately catches on fire. The smoke seems to drift towards the mountain of blackrock."] = 94467
			},
			["Bruegs Kindleborn"] = 		{
				["By Madoran's beard, yer spirit burns brighter than any torch I've laid eyes on, Rhett--and me hearty congratulations -- and present ye with yer newest totem. Ye've earned it, flameborn."] = 94468,
				["Hmm... that elder sent ye, eh? Well, a $c's word is solid, so I'll not taught ye. Fire's easy to wield, but harder to master. Know when to hold back."] = 94449
			},
			["Braldir Ashmantle"] = 		{
				["These'll do fine, Ukko. Fire ain't just fury and ruin--mark me words. It's life, it's memory. Masterin' magic means knowin' when to blend, not just burn. That's true wisdom, lad."] = 94466,
				["Ah, me apologies, Rhett. Didn't spot the Torch in yer hand. An honor to meet the Alliance can fathom. To us, it's a sacred flame that waits to be awakened."] = 94465
			},
			["Sessaria Skystride"] = 97257,
			["Olariaan Swiftburn"] = 		{
				["We now have what we need. We will light the eternal flame and commune with we need. We will light the eternal flame and commune with the spirits of fire."] = 97245,
				["The Windshapers do not forget, and blood is always paid with blood. It pleases me that feeds the flames today, however. There is one other task that needs to done."] = 97244,
				["So you've brought the torch. Yes, young $c, I can teach you to heed the will not be easy, but nothing that we do in this realm is ever easy."] = 97243
			}
		},
		["Water Sapta"] = 	{
			["Islen Waterseer"] = 972,
			["Norric Lochthane"] = 94616
		},
		["Seeking Spiritual Aid"] = 5158,
		["Call of Air"] = 	{
			["Prate Cloudseer"] = 1531,
			["Veyric Thunderhame"] = 94789
		},
		["Dogran's Captivity"] = 1515,
		["Blind Cazul"] = 1508,
		["Ken'zigla's Draught"] = 1511,
		["Shadowguard"] = 5642,
		["Hex of Weakness"] = 5652,
		["Get Me Out of Here!"] = 6132,
		["Ghost-o-plasm Round Up"] = 6134,
		["Supplying the Front"] = 1578,
		["Tormus Deepforge"] = 1680,
		["Ironband's Compound"] = 1681,
		["Grey Iron Weapons"] = 1682,
		["Moonglow Vest"] = 1582,
		["A Warrior's Training"] = 1638,
		["Bartleby's Mug"] = 1665,
		["Bartleby the Drunk"] = 1639,
		["Beat Bartleby"] = 1640,
		["Vejrek"] = 1678,
		["Muren Stormpike"] = 1679,
		["Gakin's Summons"] = 	{
			["Gakin the Darkbinder"] = 		{
				["About time you showed up. Though, perhaps I should have sent someone more capable than a warlock without training isn't like to keep his head on his shoulders for long."] = 1685,
				["I'm glad someone was able to get a hold of you, $n. I was beginning invested in you. We can talk later, though. Your training is the only important thing now."] = 1717
			}
		},
		["Surena Caledon"] = 1688,
		["The Slaughtered Lamb"] = 1715,
		["Heartswood"] = 1738,
		["Smith Mathiel"] = 1692,
		["Weapons of Elunite"] = 1693,
		["Mathiel"] = 1703,
		["Sunscorched Shells"] = 1710,
		["Mathiel's Armor"] = 1711,
		["Yorus Barleybrew"] = 1698,
		["The Rethban Gauntlet"] = 1699,
		["Klockmort Spannerspan"] = 1704,
		["Iron Coral"] = 1708,
		["Klockmort's Creation"] = 1709,
		["Essential Artificials"] = 2924,
		["Klockmort's Essentials"] = 2925,
		["The Tome of Divinity"] = 	{
			["Duthorian Rall"] = 		{
				["Here in Stormwind, I am responsible for putting paladins on the path to greater virtue If you understand it, and are capable, then you will succeed in attaining greater abilities."] = 1641,
				["Hello again, $N. How goes your studies of the Tome of Divinity? Then you should be fortunate, you prove that you are a servant of the Light and of sound mind."] = 1642,
				["You've returned so quickly, $N. And what have you accomplished in your time away from follows the Light and values others above oneself. Such sacrifice will always be rewarded in time."] = 1780,
				["You've done well this day, $N. You should take some pride in what you've accomplished. Even for Henze. Be well, $N. The Light shines upon you and you should welcome it wholly."] = 1788
			},
			["Henze Faulk"] = 1786,
			["Gazin Tenorm"] = 		{
				["*cough* Pleasure to meet you, $c. Don't mind my wounds, the good priest here can take any luck, and some skill on your part, perhaps you can still help us all."] = 1781,
				["Wonderful! You made it, and saved Henze. The Light is with you for sure, $N!  Wonderful! You made it, and saved Henze. The Light is with you for sure, $N! "] = 1787
			},
			["Stephanie Turner"] = 		{
				["Oh, hello, luv. How go your adventures? Oh, I'm so glad to hear you're doing husband and I. He's up in Ironforge trying to seek help from the citizens there."] = 1643,
				["Thank you, $N, thank you so much! The children will be so pleased, and you've saved I knew I could rely on the charity of others. The Light be with you."] = 1644
			},
			["John Turner"] = 		{
				["THE ORPHANAGE OF STOR... oh, sorry, didn't mean to shout at you, $G sir:miss;, My name price you have to pay when there are mouths to feed and backs to clothe."] = 1647,
				["This is so wonderful of you, $N. Thank you again. You're a noble $G man:woman; for $N, noble to the end. Be safe, and may the Light protect you in your travels."] = 1648
			},
			["Narm Faulk"] = 1783,
			["Muiredon Battleforge"] = 		{
				["*cough* Good day to ya, $c. Don't mind me wounds, the good priest 'ere'll take care exactly wut happened to Muiredon and his best friend Narm, a paladin jus' like yerself."] = 1779,
				["Haha! You've done it! Ya saved Narm, and ya found the proof me wife needs Light if I ever saw one... not includin' me wife o' course. Thank ya again, $N."] = 1784
			},
			["Tiza Battleforge"] = 		{
				["A pleasure to meet you, $N. I am responsible for putting paladins on the path If you understand it, and are capable, then you will succeed in attaining greater abilities."] = 1645,
				["Welcome back, $N. You've spent time reading the book, I hope? Then you should be prepared fortunate, you prove that you are a servant of the Light and of sound mind."] = 1646,
				["So, you've returned so quickly, huh? And what pray tell have you accomplished in your the actions of one who follows the Light. Such sacrifice will always be rewarded in time."] = 1778,
				["You've done all of Ironforge a great favor today, $N. I'm proud to count you Use it wisely, $N, and thank you, on behalf of myself, my husband, and Ironforge."] = 1785
			}
		},
		["The Tome of Valor"] = 	{
			["Duthorian Rall"] = 		{
				["Ah, you wish to petition me for a test of valor. Splendid. There are many tasks it understands the sacrifices needed to ensure the paladins serving it are worthy. Are you prepared?"] = 1649,
				["So, we meet again, $N, and you are in high spirits, I see. The Stilwell home very lives--was the least we could do for them. For your valor, you will be rewarded."] = 1652,
				["It has been proven that the Light is with you, $N, but as times grow are two more lessons you must master while you study in the Cathedral of Light."] = 1793
			},
			["Tiza Battleforge"] = 1794,
			["Daphne Stilwell"] = 		{
				["Hello, $N. I'm assuming by all that armor and weapon of yours, you're either here there, but they probably saw you coming, which means they'll probably be here any minute."] = 1650,
				["We've done it, $N! Thank you for your help. You were truly amazing out there. handle so many enemies at once. You've truly shown bravery in the face of overwhelming odds."] = 1651
			}
		},
		["The Tome of Nobility"] = 	{
			["Duthorian Rall"] = 		{
				["Congratulations, and may the Light protect you. Congratulations, and may the Light protect you."] = 1661,
				["Ah, you've returned to the Cathedral, $n. Good. A lot has happened recently, and I you prove worthy. Many treacherous enemies are about. I will need your help to stop them."] = 4485
			}
		},
		["The Symbol of Life"] = 	{
			["Duthorian Rall"] = 1790,
			["Tiza Battleforge"] = 1789
		},
		["Tome of Divinity"] = 	{
			["Duthorian Rall"] = 		{
				["It is beautiful here in Stormwind, is it not? Your timing actually couldn't have been better, is beautiful here in Stormwind, is it not? Your timing actually couldn't have been better, $N."] = 2998,
				["Welcome to the Cathedral of Light, $C. Welcome to the Cathedral of Light, $C."] = 3681
			},
			["Tiza Battleforge"] = 		{
				["Well met, $N. I hope the Light shows you the true path and keeps you I hope the Light shows you the true path and keeps you safe from evil."] = 2997,
				["I greet you, and bid you welcome, $N. I greet you, and bid you welcome, $N."] = 3000
			}
		},
		["Cyclonian"] = 1712,
		["The Summoning"] = 1713,
		["The Windwatcher"] = 1791,
		["Whirlwind Weapon"] = 1792,
		["Elemental Mastery"] = 8410,
		["Mastering the Elements"] = 8411,
		["Spirit Totem"] = 8412,
		["Da Voodoo"] = 8413,
		["The Test of Righteousness"] = 	{
			["Jordan Stilwell"] = 		{
				["Good day, $N. The Light is with you, I trust? What's that? You were sent by thank you again, $N. I couldn't think of a better test of valor than that."] = 1653,
				["This is wonderful! You've gotten all the items. I should have no problem forging you a father's hammer again...and a Kor gem. I never thought I'd see one of these myself."] = 1654,
				["Here it is, $N. A weapon worthy of a champion of the Light such as the world will be a safer place with one of your skill traveling the land."] = 1806
			}
		},
		["The Islander"] = 1718,
		["The Affray"] = 1719,
		["Bailor's Ore Shipment"] = 1655,
		["The Orb of Soran'ruk"] = 1740,
		["Seeking Strahad"] = 	{
			["Strahad Farsan"] = 		{
				["$n? Ah, of course. Our latest prodigy. The real thing can't live up to the afraid. No matter, you've come here to learn, not to hear me make jokes to myself."] = 1798,
				["A busy day in Ratchet, isn't it? How I enjoy watching the toil of a hatred I see in your eyes, $N? Good, we will put that to good use."] = 2996
			}
		},
		["Tome of the Cabal"] = 	{
			["Strahad Farsan"] = 1804,
			["Jorah Annison"] = 		{
				["Map making! Pictures, estimations of reality. I have no use for such things. In books, narrative, one book on the rise of necromancy, or a tale of the Dark Lady's triumph."] = 1801,
				["Well well well! What do we have here? This is impressive, $n. I wouldn't have thought me to leaf through its pages for just a moment before you are off again."] = 1803
			},
			["Krom Stoutarm"] = 		{
				["Tome of the Cabal? Hmm... sounds familiar. I've never seen it here before, though--and believe every book I read. Hmm... Ah, yes! I have seen references to it in library cataloguing books."] = 1758,
				["Fantastic! Now I may join the ranks of the few that have spied its contents. I before you leave. I'm sure that Strahad will be willing to send me a copy."] = 1802
			}
		},
		["Summon Felsteed"] = 	{
			["Strahad Farsan"] = 		{
				["So, you've decided to grace my presence again. How kind of you. My acolytes wondered if doubt. When power is concerned, you are drawn in like a moth to the flame."] = 3631,
				["Good luck, $N. I look forward to seeing you in the future. Good luck, $N. I look forward to seeing you in the future."] = 4490
			}
		},
		["In Search of Menara Voidrender"] = 	{
			["Menara Voidrender"] = 		{
				["Ah, Briarthorn sent you. Good. Then word does reach far enough to find future students. and if you are willing, I would help you create tools to compliment your skills."] = 4736,
				["Ah, Zevrost sent you. Good. Then word does reach far enough to find future students. and if you are willing, I would help you create tools to compliment your skills."] = 4737,
				["Ah, Demisette sent you. Good. Then word does reach far enough to find future students. and if you are willing, I would help you create tools to compliment your skills."] = 4738,
				["Ah, Kaal sent you. Good. Then word does reach far enough to find future students. and if you are willing, I would help you create tools to compliment your skills."] = 4739
			}
		},
		["The Completed Robe"] = 4786,
		["Shard of a Felhound"] = 4962,
		["Shard of an Infernal"] = 4963,
		["The Completed Orb of Dar'Orahil"] = 4964,
		["Knowledge of the Orb of Orahil"] = 	{
			["Menara Voidrender"] = 		{
				["Ah, you do seek something more... substantial. That I can help you if you truly seeking more power in forms other than just knowledge. So, do you feel you're ready, $N?"] = 4965,
				["Ah, you do seek something more... substantial. I can help you if you truly are seeking more power in forms other than just knowledge. So, do you feel you're ready, $N?"] = 4969
			}
		},
		["The Completed Orb of Noh'Orahil"] = 4975,
		["Returning the Cleansed Orb"] = 4976,
		["Recipe of the Kaldorei"] = 4161,
		["Deep Ocean, Vast Sea"] = 982,
		["Return to Podrig"] = 6324,
		["Speak with Ruga"] = 1823,
		["Trial at the Field of Giants"] = 1824,
		["Ula'elek and the Brutal Gauntlets"] = 1839,
		["Satyr Hooves"] = 1842,
		["Brutal Gauntlets"] = 1843,
		["Orm Stonehoof and the Brutal Helm"] = 1840,
		["Chimaeric Horn"] = 1844,
		["Brutal Helm"] = 1845,
		["Velora Nitely and the Brutal Legguards"] = 1841,
		["Dragonmaw Shinbones"] = 1846,
		["Brutal Legguards"] = 1847,
		["The Shattered Hand"] = 	{
			["Therzok"] = 		{
				["Hmmm, now this is interesting. You've more than proved your worth with this, $N. I take this, it will be a great help to you in the future, I think."] = 1858,
				["Hm, while I am glad to hear that Tazan is no longer with us, a should prove a worthy second challenge for one who wishes to join the Shattered Hand."] = 1963
			}
		},
		["Therzok"] = 1859,
		["Mennet Carkad"] = 1885,
		["The Deathstalkers"] = 	{
			["Mennet Carkad"] = 		{
				["Well done, $n. You've passed the first part of this test. Hopefully Andron will not be able to convince him that you are, in fact, the messenger he is expecting."] = 1886,
				["Well, this is certainly more information than I suspected to get out of Andron. Give Give me a moment to peruse it, before I set you to your next task."] = 1899
			},
			["Andron Gant"] = 1898,
			["Varimathras"] = 1978
		},
		["Fenwick Thatros"] = 1998,
		["Tools of the Trade"] = 1999,
		["Delivery to Andron Gant"] = 3542,
		["Fragments of the Orb of Orahil"] = 1799,
		["Journey to the Marsh"] = 1947,
		["Items of Power"] = 1948,
		["Rituals of Power"] = 1951,
		["Mage's Wand"] = 1952,
		["Return to the Marsh"] = 1953,
		["The Infernal Orb"] = 1954,
		["The Exorcism"] = 1955,
		["Power in Uldaman"] = 1956,
		["Mana Surges"] = 1957,
		["Celestial Power"] = 1958,
		["Tiara of the Deep"] = 2846,
		["Tabetha's Task"] = 2861,
		["Cleansing of the Orb of Orahil"] = 4961,
		["Hidden Secrets"] = 1949,
		["Get the Scoop"] = 1950,
		["The Undermarket"] = 	{
			["Vizzklick"] = 3402,
			["Nilith Lokrav"] = 3385
		},
		["Bingles' Missing Supplies"] = 2038,
		["Find Bingles"] = 2039,
		["Underground Assault"] = 2040,
		["Speak with Shoni"] = 2041,
		["Gyrodrillmatic Excavationators"] = 2928,
		["Gyromast's Revenge"] = 2078,
		["Gyromast's Retrieval"] = 2098,
		["The Manor, Ravenholdt"] = 6681,
		["Junkboxes Needed"] = 8249,
		["Dancing for Marzipan"] = 	{
			["Innkeeper Saelienne"] = 8357,
			["Innkeeper Pala"] = 8360
		},
		["Dolanaar Delivery"] = 2159,
		["Flexing for Nougat"] = 	{
			["Innkeeper Allison"] = 8356,
			["Innkeeper Gryshka"] = 8359
		},
		["New Year Celebrations!"] = 	{
			["Innkeeper Allison"] = 8860,
			["Innkeeper Pala"] = 8861
		},
		["Tracing the Source"] = 	{
			["Innkeeper Allison"] = 9026,
			["Innkeeper Norman"] = 8982,
			["Evert Sorisam"] = 9027,
			["Mara Rennick"] = 8983
		},
		["A Task Unfinished"] = 1656,
		["Syndicate Emblems"] = 6701,
		["A Simple Request"] = 8233,
		["The Azure Key"] = 8236,
		["Supplies to Tannok"] = 2160,
		["The Shattered Necklace"] = 2198,
		["Lore for a Price"] = 2199,
		["Find the Gems"] = 	{
			["Talvash del Kissel"] = 2201,
			["Talvash's Scrying Bowl"] = 2201
		},
		["Restoring the Necklace"] = 	{
			["Talvash del Kissel"] = 		{
				["Well I'll be - I sure am glad to see you and this power source aren't you? All tingly with anticipation? Now where did I put that spell focus at..."] = 2204,
				["I gladly give you this necklace, mighty $C. You have done me an invaluable service, you could toss in the fact that it really isn't cursed, that would be great."] = 2361
			}
		},
		["Gnome Improvement"] = 2948,
		["Replacement Phial"] = 3375,
		["Incoming Gumdrop"] = 	{
			["Talvash del Kissel"] = 8355,
			["Kali Remik"] = 8358
		},
		["Translating the Journal"] = 	{
			["Jarkal Mossmeld"] = 		{
				["Mighty $c, I know what you are doing out here in the Badlands. I know Droffers is, and it'll let you still complete your deal with them. Interested now, yes?"] = 2318,
				["You know a good deal when you see one - I knew I could count my word; ask anyone in the Horde about Jarkal Mossmeld. Now, let's get this started..."] = 2338
			}
		},
		["Find the Gems and Power Source"] = 2339,
		["Necklace Recovery, Take 3"] = 2341,
		["Simple Subterfugin'"] = 2238,
		["Back to Uldaman"] = 2200,
		["Necklace Recovery, Take 2"] = 2284,
		["A Peon's Burden"] = 2161,
		["Ride to Orgrimmar"] = 6384,
		["Erion's Behest"] = 2260,
		["Kingly Shakedown"] = 2298,
		["SI:7"] = 2300,
		["Redridge Rendezvous"] = 2281,
		["Alther's Mill"] = 	{
			["Lucius"] = 2282,
			["Foreman Oslow"] = 98386
		},
		["Ripple Delivery"] = 81,
		["Necklace Recovery"] = 2283,
		["Deliver the Gems"] = 2340,
		["Ripple Recovery"] = 	{
			["Malton Droffers"] = 649,
			["Gilveradin Sunchaser"] = 650
		},
		["Horns of Nez'ra"] = 2358,
		["Rise of the Silithid"] = 	{
			["Zilzibin Drumlore"] = 32,
			["Gracina Spiritmight"] = 		{
				["This report... we night elves know of the terror mentioned here. Fizzledowser was wise to both the Horde and Alliance face. If only we were smart enough to see that before."] = 162,
				["We night elves know of the terror outlined in this report. Shandris was wise to ever face. I pray we will have the resolve to defeat them before they destroy us."] = 4267
			}
		},
		["Zukk'ash Report"] = 7732,
		["Mathias and the Defias"] = 2360,
		["Plundering the Plunderers"] = 2381,
		["Wrenix of Ratchet"] = 2382,
		["The Touch of Zanzil"] = 	{
			["Doc Mixilpixil"] = 		{
				["It's about time! Just put the cheese on the table and skedaddle. Osborne will pay the cheese on the table and skedaddle. Osborne will pay you on the way out."] = 2607,
				["Give me a moment to confer with my colleagues, $N. Dr. Montgomery, Mr. Noarm, let a moment to confer with my colleagues, $N. Dr. Montgomery, Mr. Noarm, let us conference!"] = 2608,
				["What am I doing? What does it look like I'm doing? I'm devising a cure spray this, um, fantastic smelling medicine on yourself and you'll be as good as new."] = 2609
			}
		},
		["Deep Cover"] = 2458,
		["The Gordunni Orb"] = 3002,
		["Tears of the Moon"] = 2518,
		["The Temple of the Moon"] = 2519,
		["Sathrah's Sacrifice"] = 2520,
		["The Sleeping Druid"] = 2541,
		["Druid of the Claw"] = 2561,
		["Rescue OOX-17/TN!"] = 648,
		["Rescue OOX-09/HL!"] = 836,
		["Rescue OOX-22/FE!"] = 2767,
		["Gnome Engineering"] = 	{
			["Oglethorpe Obnoticus"] = 3635,
			["Tinkmaster Overspark"] = 3630
		},
		["The Pledge of Secrecy"] = 	{
			["Oglethorpe Obnoticus"] = 3642,
			["Tinkmaster Overspark"] = 3640,
			["Nixx Sprocketspring"] = 3638
		},
		["Show Your Work"] = 	{
			["Oglethorpe Obnoticus"] = 3643,
			["Tinkmaster Overspark"] = 3641,
			["Nixx Sprocketspring"] = 3639
		},
		["Membership Card Renewal"] = 	{
			["Oglethorpe Obnoticus"] = 3647,
			["Tinkmaster Overspark"] = 3645,
			["Nixx Sprocketspring"] = 3644,
			["Vazario Linkgrease"] = 3646
		},
		["An OOX of Your Own"] = 3721,
		["Secrets of the Colossus - Ashi"] = 8857,
		["Into the Field"] = 243,
		["Slake That Thirst"] = 379,
		["Tanaris Field Sampling"] = 654,
		["Another Power Source?"] = 841,
		["Wastewander Justice"] = 1690,
		["More Wastewander Justice"] = 1691,
		["Divino-matic Rod"] = 2768,
		["WANTED: Caliph Scorpidsting"] = 2781,
		["Water Pouch Bounty"] = 1707,
		["The Thirsty Goblin"] = 2605,
		["Delivery for Marin"] = 2661,
		["Noggenfogger Elixir"] = 2662,
		["The Swamp Talker"] = 2623,
		["The Stones That Bind Us"] = 2681,
		["The Cover of Darkness"] = 2743,
		["Petty Squabbles"] = 2783,
		["Fall From Grace"] = 2784,
		["A Tale of Sorrow"] = 2801,
		["Return to the Blasted Lands"] = 3626,
		["Uniting the Shattered Amulet"] = 3627,
		["You Are Rakh'likh, Demon"] = 3628,
		["A Troubled Spirit"] = 8417,
		["Warrior Kinship"] = 8423,
		["War on the Shadowsworn"] = 8424,
		["Voodoo Feathers"] = 8425,
		["In Good Taste"] = 2606,
		["Sprinkle's Secret Ingredient"] = 2641,
		["The Disgraced One"] = 2621,
		["The Missing Orders"] = 2622,
		["The Scrimshank Redemption"] = 10,
		["Gadgetzan Water Survey"] = 992,
		["Kirith"] = 2721,
		["Heroes of Old"] = 	{
			["Corporal Thund Splithoof"] = 2702,
			["Spectral Lockbox"] = 2701
		},
		["An Extraordinary Egg"] = 2747,
		["A Fine Egg"] = 2748,
		["An Ordinary Egg"] = 2749,
		["A Bad Egg"] = 2750,
		["The Borrower"] = 2941,
		["The Morrow Stone"] = 2942,
		["Return to Troyas"] = 2943,
		["Infiltrating the Castle"] = 2745,
		["Items of Some Consequence"] = 2746,
		["Gahz'ridian"] = 3161,
		["The Sunken Temple"] = 3380,
		["The Stone Circle"] = 3444,
		["To the Top"] = 3567,
		["The Giant Guardian"] = 2844,
		["The Videre Elixir"] = 	{
			["Gregan Brewspewer"] = 4041,
			["Donova Snowden"] = 3909
		},
		["A Visit to Gregan"] = 4142,
		["Dark Heart"] = 3062,
		["Vengeance on the Northspring"] = 3063,
		["The Strength of Corruption"] = 4120,
		["Lethtendris's Web"] = 	{
			["Talo Thornhoof"] = 7489,
			["Latronicus Moonspear"] = 7488
		},
		["Camp Mojache"] = 7492,
		["The Ogres of Feralas"] = 	{
			["Rok Orhan"] = 		{
				["Excellent, $N. In time, the land will heal. We must not give up. Excellent, $N. In time, the land will heal. We must not give up."] = 2975,
				["You have proven yourself to be a trustworthy and dependable ally, $N. You have proven yourself to be a trustworthy and dependable ally, $N."] = 2980
			}
		},
		["The Gordunni Scroll"] = 2978,
		["Dark Ceremony"] = 2979,
		["A Threat in Feralas"] = 2981,
		["The Demon Hunter"] = 2744,
		["Loramus"] = 3141,
		["Breaking the Ward"] = 3508,
		["The Name of the Beast"] = 	{
			["Loramus Thalipedes"] = 3511,
			["Lord Arkkoroc"] = 		{
				["A demon lord? <Lord Arkkoroc laughs.> Perhaps the one can assist you with this information; but first, the one can assist you with this information; but first, you must assist the one."] = 3509,
				["Finally, one worthy of the wisdom of Arkkoroc! Finally, one worthy of the wisdom of Arkkoroc!"] = 3510
			}
		},
		["Azsharite"] = 3602,
		["Barbaric Battlements"] = 2751,
		["On Iron Pauldrons"] = 2752,
		["Trampled Under Foot"] = 2753,
		["Horns of Frenzy"] = 2754,
		["Joys of Omosh"] = 2755,
		["The Old Ways"] = 2756,
		["Booty Bay or Bust!"] = 2757,
		["In Search of Galvan"] = 2759,
		["The Origins of Smithing"] = 2758,
		["The Mithril Order"] = 2760,
		["Smelt On, Smelt Off"] = 2761,
		["The Great Silver Deceiver"] = 2762,
		["The Art of the Imbue"] = 2763,
		["Expert Blacksmith!"] = 2765,
		["The Formation of Felbane"] = 3621,
		["Enchanted Azsharite Fel Weaponry"] = 3625,
		["Galvan's Finest Pupil"] = 2764,
		["A Good Head On Your Shoulders"] = 2771,
		["The World At Your Feet"] = 2772,
		["The Mithril Kid"] = 2773,
		["Troll Temper"] = 3042,
		["Did You Lose This?"] = 3321,
		["Rin'ji's Secret"] = 2782,
		["Lines of Communication"] = 2995,
		["Oran's Gratitude"] = 8273,
		["The Mark of Quality"] = 	{
			["Pratt McGrubben"] = 2821,
			["Jangdor Swiftstrider"] = 2822
		},
		["Wild Leather Armor"] = 	{
			["Pratt McGrubben"] = 2847,
			["Jangdor Swiftstrider"] = 2854
		},
		["Wild Leather Shoulders"] = 	{
			["Pratt McGrubben"] = 2848,
			["Jangdor Swiftstrider"] = 2855
		},
		["Wild Leather Vest"] = 	{
			["Pratt McGrubben"] = 2849,
			["Jangdor Swiftstrider"] = 2856
		},
		["Wild Leather Helmet"] = 	{
			["Pratt McGrubben"] = 2850,
			["Jangdor Swiftstrider"] = 2857
		},
		["Wild Leather Boots"] = 	{
			["Pratt McGrubben"] = 2851,
			["Jangdor Swiftstrider"] = 2858
		},
		["Wild Leather Leggings"] = 	{
			["Pratt McGrubben"] = 2852,
			["Jangdor Swiftstrider"] = 2859
		},
		["Improved Quality"] = 	{
			["Pratt McGrubben"] = 7733,
			["Jangdor Swiftstrider"] = 7734
		},
		["Pristine Yeti Hide"] = 7735,
		["Chief Engineer Scooty"] = 2842,
		["Gnomer-gooooone!"] = 2843,
		["A Fine Mess"] = 2904,
		["Perfect Yeti Hide"] = 7738,
		["Dragonscale Leatherworking"] = 	{
			["Peter Galen"] = 5141,
			["Thorkaf Dragoneye"] = 5145
		},
		["Elemental Leatherworking"] = 	{
			["Sarah Tanner"] = 5144,
			["Brumn Winterhoof"] = 5146
		},
		["Tribal Leatherworking"] = 	{
			["Caryssia Moonhunter"] = 5143,
			["Se'Jib"] = 5148
		},
		["War on the Woodpaw"] = 2862,
		["Alpha Strike"] = 2863,
		["The Battle Plans"] = 2903,
		["Zukk'ash Infestation"] = 7730,
		["Stinglasher"] = 7731,
		["Tran'rek"] = 2864,
		["Scarab Shells"] = 2865,
		["Thistleshrub Valley"] = 3362,
		["Super Sticky"] = 4504,
		["Against the Hatecrest"] = 	{
			["Latronicus Moonspear"] = 		{
				["Yes, yes, these scales are more than satisfactory. Actually, I think I will send these the General and Feathermoon Stronghold at large is a blessing in the face of adversity."] = 2869,
				["Excellent, $n - I value a 'can do' attitude in those who I work with. I've your help, we'll counter the naga presence without sacrificing the general security of the stronghold."] = 3130
			}
		},
		["Against Lord Shalzaru"] = 2870,
		["Feathermoon Stronghold"] = 7494,
		["Delivering the Relic"] = 2871,
		["Jonespyre's Request"] = 3787,
		["The Mystery of Morrowgrain"] = 3791,
		["Morrowgrain to Feathermoon Stronghold"] = 3792,
		["The Knife Revealed"] = 4129,
		["The Missing Courier"] = 	{
			["Ginro Hearthkindle"] = 4124,
			["Wrecked Row Boat"] = 4125
		},
		["Boat Wreckage"] = 4127,
		["Psychometric Reading"] = 4130,
		["Escaping the Hive"] = 4265,
		["Freed from the Hive"] = 4265,
		["Stoley's Debt"] = 2872,
		["Stoley's Shipment"] = 2873,
		["WANTED: Andre Firebeard"] = 2875,
		["Ship Schedules"] = 2876,
		["Southsea Shakedown"] = 8366,
		["Skulk Rock Clean-up"] = 2877,
		["Troll Necklace Bounty"] = 2880,
		["The High Wilderness"] = 2982,
		["In Search of Knowledge"] = 2939,
		["Feralas: A History"] = 2940,
		["The Super Snapper FX"] = 2944,
		["Moontouched Wildkin"] = 978,
		["Handle With Care"] = 3022,
		["Favored of Elune?"] = 3661,
		["Guardians of the Altar"] = 4901,
		["The Grand Betrayal"] = 2929,
		["Save Techbot's Brain!"] = 2922,
		["Tinkmaster Overspark"] = 2923,
		["Data Rescue"] = 2930,
		["Castpipe's Task"] = 2931,
		["Ivory Raptor Replacement"] = 7664,
		["Red Raptor Replacement"] = 7665,
		["Icy Blue Mechanostrider Replacement"] = 7675,
		["White Mechanostrider Replacement"] = 7676,
		["Freedom for All Creatures"] = 2969,
		["Doling Justice"] = 	{
			["Jer'kai Moonweaver"] = 2970,
			["Tyrande Whisperwind"] = 2972
		},
		["Reception from Tyrande"] = 1081,
		["Gordunni Cobalt"] = 2987,
		["Thadius Grimshade"] = 2990,
		["Nekrum's Medallion"] = 2991,
		["The Divination"] = 2992,
		["Velinde Starsong"] = 1037,
		["Velinde's Effects"] = 1038,
		["Answered Questions"] = 1044,
		["Return to Witch Doctor Uzer'i"] = 3122,
		["Testing the Vessel"] = 3123,
		["Hippogryph Muisek"] = 3124,
		["Faerie Dragon Muisek"] = 3125,
		["Treant Muisek"] = 3126,
		["Mountain Giant Muisek"] = 3127,
		["Natural Materials"] = 3128,
		["Weapons of Spirit"] = 3129,
		["Clamlette Surprise"] = 6610,
		["To Gadgetzan You Go!"] = 6611,
		["I Know A Guy..."] = 6612,
		["Never Ask Me About My Business"] = 8584,
		["The Isle of Dread!"] = 8585,
		["Dirge's Kickin' Chimaerok Chops"] = 8586,
		["Goblin Engineering"] = 3526,
		["Proof of Deed"] = 3182,
		["Suntara Stones"] = 	{
			["Curator Thorius"] = 3368,
			["Singed Letter"] = 3367
		},
		["Rise, Obsidion!"] = 3566,
		["Ride to Thunder Bluff"] = 6362,
		["Delivery to Archmage Xylem"] = 3561,
		["Sealed Azure Bag"] = 8234,
		["Encoded Fragments"] = 8235,
		["Magic Dust"] = 8251,
		["The Siren's Coral"] = 8252,
		["Destroy Morphaz"] = 8253,
		["Warlord Krellian"] = 9362,
		["Fragmented Magic"] = 9364,
		["A Crew Under Fire"] = 3382,
		["Mura Runetotem"] = 3301,
		["Seeping Corruption"] = 	{
			["Chemist Cuely"] = 		{
				["Wonderful. You're back before she died. Good, good. Let's get started on this then, shall we? I've pleasant odor. Give me just a moment to put something together to test on our... friend."] = 3568,
				["I never dreamed the elixir would take hold that quickly. Thank you, $N. I will away. I'm sure they'll be usable by the Lady Sylvanas and the Forsaken soon enough."] = 3570
			},
			["Thersa Windsong"] = 3569
		},
		["Arcane Runes"] = 3449,
		["Return Trip"] = 3421,
		["The Jeremiah Blues"] = 5049,
		["A Refugee's Quandary"] = 3361,
		["Dwarven Justice"] = 3371,
		["The Glowing Shard"] = 6981,
		["Kim'jael Indeed!"] = 3601,
		["Kim'jael's 'Missing' Equipment"] = 5534,
		["Shadoweaver"] = 3379,
		["Divine Retribution"] = 3441,
		["The Flawless Flame"] = 3442,
		["Forging the Shaft"] = 3443,
		["The Flame's Casing"] = 3452,
		["The Torch of Retribution"] = 	{
			["Kalaran Windblade"] = 3453,
			["Torch of Retribution"] = 3454
		},
		["Marvon's Workshop"] = 4147,
		["Volcanic Activity"] = 4502,
		["Passing the Burden"] = 	{
			["Mage Tymor"] = 3448,
			["Tymor"] = 3448
		},
		["Return to Tymor"] = 	{
			["Mage Tymor"] = 3461,
			["Tymor"] = 3461
		},
		["Squire Maltrake"] = 3462,
		["Set Them Ablaze!"] = 3463,
		["Scourge of the Downs"] = 3523,
		["Extinguishing the Idol"] = 	{
			["Belnistrasz"] = 3525,
			["Belnistrasz's Brazier"] = 3525
		},
		["An Easy Pickup"] = 3450,
		["Signal for Pickup"] = 	{
			["Xiggs Fuselighter"] = 		{
				["Here's my standard issue flare gun, and be patient after you fire off the gun--there to sea I am. Just look out to sea after you fire off the flare."] = 3451,
				["Ah, another flare gun, huh? That I can do. And don't forget, southern tip of Azshara. turned into a landing pad. You can't miss it if you're in the right spot."] = 3483
			}
		},
		["Screecher Spirits"] = 3520,
		["The Prophecy of Mosh'aru"] = 3527,
		["The God Hakkar"] = 3528,
		["The Ancient Egg"] = 4787,
		["Confront Yeh'kinya"] = 8181,
		["The Runed Scroll"] = 3513,
		["Horde Presence"] = 3514,
		["Report to Kadrak"] = 6541,
		["The Warsong Reports"] = 6543,
		["A Friend in Need"] = 3519,
		["Iverron's Antidote"] = 	{
			["Dirania Silvershine"] = 3521,
			["Iverron"] = 3522
		},
		["A Good Friend"] = 4495,
		["Stealing Knowledge"] = 3517,
		["Magatha's Payment to Jediga"] = 3562,
		["Jes'rimon's Payment to Jediga"] = 3563,
		["Andron's Payment to Jediga"] = 3564,
		["Xylem's Payment to Jediga"] = 3565,
		["In Eranikus' Own Words"] = 3512,
		["Delivery to Jes'rimon"] = 3541,
		["Bone-Bladed Weapons"] = 4300,
		["It's a Secret to Everybody"] = 	{
			["Linken"] = 3845,
			["Donova Snowden"] = 3908,
			["A Small Pack"] = 3844
		},
		["Linken's Sword"] = 3914,
		["Linken's Adventure"] = 3961,
		["It's Dangerous to Go Alone"] = 3962,
		["The Smoldering Ruins of Thaurissan"] = 	{
			["Royal Historian Archesonus"] = 		{
				["Oh my! This information explains quite a lot about Thaurissan. There is much more to learn! Oh my! This information explains quite a lot about Thaurissan. There is much more to learn!"] = 3701,
				["Shall we proceed? Shall we proceed?"] = 3702
			}
		},
		["Dark Iron Legacy"] = 	{
			["Franclorn Forgewright"] = 3801,
			["Monument of Franclorn Forgewright"] = 3802
		},
		["The Royal Rescue"] = 4003,
		["The Fate of the Kingdom"] = 4362,
		["Researching the Corruption"] = 1275,
		["The Corruption Abroad"] = 3765,
		["Commander Gor'shak"] = 3981,
		["Kharan Mighthammer"] = 4341,
		["Kharan's Tale"] = 4342,
		["Marshal Windsor"] = 4241,
		["A Crumpled Up Note"] = 4264,
		["A Shred of Hope"] = 4282,
		["Un'Goro Soil"] = 	{
			["Jenal"] = 3764,
			["Ghede"] = 3761
		},
		["KILL ON SIGHT: Dark Iron Dwarves"] = 4081,
		["KILL ON SIGHT: High Ranking Dark Iron Officials"] = 4082,
		["Operation: Death to Angerforge"] = 4132,
		["Warlord's Command"] = 4903,
		["Vivian Lagrave"] = 4133,
		["Lost Thunderbrew Recipe"] = 4134,
		["The Darkstone Tablet"] = 4768,
		["Vivian Lagrave and the Darkstone Tablet"] = 4769,
		["The Last Element"] = 7201,
		["Precarious Predicament"] = 4121,
		["Bijou's Reconnaissance Report"] = 4983,
		["The Pack Mistress"] = 4724,
		["Krom'Grul"] = 3822,
		["Disharmony of Flame"] = 3906,
		["Disharmony of Fire"] = 3907,
		["Morrowgrain to Thunder Bluff"] = 3804,
		["Flute of Xavaric"] = 939,
		["Linken's Memory"] = 3942,
		["Silver Heart"] = 4084,
		["The Corruption of the Jadefire"] = 4421,
		["Felbound Ancients"] = 4441,
		["Purified!"] = 4442,
		["Further Corruption"] = 4906,
		["A Gnome's Assistance"] = 3941,
		["Aquementas"] = 4005,
		["Crystals of Power"] = 4284,
		["The Northern Pylon"] = 4285,
		["The Eastern Pylon"] = 4287,
		["The Western Pylon"] = 4288,
		["Making Sense of It"] = 4321,
		["Larion and Muigin"] = 4145,
		["Zapper Fuel"] = 4146,
		["Bloodpetal Zapper"] = 4148,
		["Muigin and Larion"] = 4141,
		["Haze of Evil"] = 4143,
		["Bloodpetal Sprouts"] = 4144,
		["Dreadmaul Rock"] = 3821,
		["Extinguish the Firegut"] = 3823,
		["Gor'tesh the Brute Lord"] = 3824,
		["Ogre Head On A Stick = Party"] = 3825,
		["FIFTY! YEP!"] = 4283,
		["The Good Stuff"] = 4286,
		["An Orphan Looking For a Home"] = 3841,
		["A Short Incubation"] = 3842,
		["Expedition Salvation"] = 3881,
		["Williden's Journal"] = 3884,
		["Alien Ecology"] = 3883,
		["Roll the Bones"] = 3882,
		["Milly Osworth"] = 3903,
		["Milly's Harvest"] = 3904,
		["The New Springs"] = 980,
		["Strange Sources"] = 4842,
		["Threat of the Winterfall"] = 5082,
		["Winterfall Firewater"] = 5083,
		["Mystery Goo"] = 5085,
		["Toxic Horrors"] = 5086,
		["Winterfall Runners"] = 5087,
		["High Chief Winterfall"] = 5121,
		["The Final Piece"] = 5123,
		["Trouble in Winterspring!"] = 6603,
		["Meet at the Grave"] = 3912,
		["Wenikee Boltbucket"] = 3921,
		["Nugget Slugs"] = 3922,
		["Rilli Greasygob"] = 3923,
		["Samophlange Manual"] = 3924,
		["Rocknot's Ale"] = 4295,
		["Grark Lorkrub"] = 4122,
		["Cleansing Felwood"] = 	{
			["Arathandris Silversky"] = 4101,
			["Maybess Riverbreeze"] = 4102
		},
		["Salve via Hunting"] = 	{
			["Arathandris Silversky"] = 4103,
			["Maybess Riverbreeze"] = 4108
		},
		["Salve via Mining"] = 	{
			["Arathandris Silversky"] = 4104,
			["Maybess Riverbreeze"] = 4109
		},
		["Salve via Gathering"] = 	{
			["Arathandris Silversky"] = 4105,
			["Maybess Riverbreeze"] = 4110
		},
		["Salve via Skinning"] = 	{
			["Arathandris Silversky"] = 		{
				["This is exactly what I need. Here - take these plant salves and use them plant salves and use them to reclaim Felwood from the corruption. We must persevere, $n!"] = 4106,
				["This is exactly what I need. Here - take these plant salves and use them plant salves and use them to reclaim Felwood from the corruption. We must persevere, $N!"] = 5885
			},
			["Maybess Riverbreeze"] = 		{
				["This is exactly what I need. Here - take these plant salves and use them plant salves and use them to reclaim Felwood from the corruption. We must persevere, $n!"] = 4111,
				["This is exactly what I need. Here - take these plant salves and use them plant salves and use them to reclaim Felwood from the corruption. We must persevere, $N!"] = 5890
			}
		},
		["Salve via Disenchanting"] = 	{
			["Arathandris Silversky"] = 4107,
			["Maybess Riverbreeze"] = 4112
		},
		["The Heart of the Mountain"] = 4123,
		["Tablet of the Seven"] = 4296,
		["Ribbly Screwspigot"] = 4136,
		["Yuka Screwspigot"] = 4324,
		["Abandoned Hope"] = 4242,
		["Jail Break!"] = 4322,
		["Message to Maxwell"] = 5002,
		["Maxwell's Mission"] = 5081,
		["General Drakkisath's Command"] = 5089,
		["General Drakkisath's Demise"] = 5102,
		["Overmaster Pyron"] = 4262,
		["Incendius!"] = 4263,
		["Dragonkin Menace"] = 4182,
		["Put Her Down"] = 4701,
		["Mother's Milk"] = 4866,
		["Doomrigger's Clasp"] = 4764,
		["Mayara Brightwing"] = 4766,
		["A Little Slime Goes a Long Way"] = 	{
			["Laris Geardawdle"] = 		{
				["Amazing results, $N! You got close enough to take a sample of the corrupted things, that it wasn't a mistake to allow us gnomes into Ironforge after the Gnomeregan incident."] = 4512,
				["You've found it? $N, you are a treasure unto yourself. Your dedication and aid has a later time, I'll have need of your services again. Thank you. Thank you so much."] = 4513
			}
		},
		["Chasing A-Me 01"] = 	{
			["Karna Remtravel"] = 4245,
			["A-Me 01"] = 		{
				["As you look A-Me 01 over, you see two huge dents tarnishing what Karna obviously on her head. No power seems to be running through her components as you investigate further."] = 4243,
				["You remove the panel from A-Me 01's back yet again and carefully remove the old to flip the switch to the 'Off' position, and then back to the 'On' position."] = 4244
			}
		},
		["The Apes of Un'Goro"] = 4289,
		["The Fare of Lar'korwi"] = 4290,
		["The Scent of Lar'korwi"] = 4291,
		["The Bait for Lar'korwi"] = 4292,
		["The Mighty U'cha"] = 4301,
		["Toxic Test"] = 9051,
		["Bloodpetal Poison"] = 9052,
		["A Better Ingredient"] = 9053,
		["Torwa Pathfinder"] = 9063,
		["A Husband's Last Battle"] = 6162,
		["The Newest Member of the Family"] = 3843,
		["Food for Baby"] = 4297,
		["Becoming a Parent"] = 4298,
		["Galgar's Cactus Apple Surprise"] = 4402,
		["Well of Corruption"] = 4505,
		["Corrupted Sabers"] = 4506,
		["A Strange One"] = 6605,
		["A Little Help From My Friends"] = 4491,
		["Beware of Pterrordax"] = 4501,
		["Shizzle's Flyer"] = 4503,
		["Lost!"] = 4492,
		["Return to Nessa"] = 6343,
		["Nessa Shadowsong"] = 6344,
		["A Sample of Slime..."] = 4293,
		["... and a Batch of Ooze"] = 4294,
		["Melding of Influences"] = 4642,
		["The Blightcaller Cometh"] = 6186,
		["Order Must Be Restored"] = 6187,
		["The Great Masquerade"] = 6403,
		["Victory for the Alliance"] = 7495,
		["The Champion of the Horde"] = 6567,
		["Ascension..."] = 6601,
		["Blood of the Black Dragon Champion"] = 6602,
		["Fruit of the Sea"] = 1138,
		["The Family and the Fishing Pole"] = 1141,
		["Washed Ashore"] = 	{
			["Gwennyth Bly'Leggonde"] = 		{
				["I hope the murloc did not give you much trouble in collecting this for us! you a chance to aid the Temple of the Moon further, if you are interested..."] = 3524,
				["You've been a tremendous help here today; we now have a solid chance at unlocking Moon, please accept this as thanks for the effort you have given. Thank you, $N!"] = 4681
			}
		},
		["Beached Sea Turtle"] = 	{
			["Gwennyth Bly'Leggonde"] = 		{
				["Another discovery for us to research - well done $N! These remains will be properly accept this small honorarium in exchange for the remains you have provided for our study."] = 4722,
				["I have heard of the kinds of carriages found on the back of the turtle rest of your discoveries. This is for you - thank you again for your assistance."] = 4725,
				["It is interesting that the murlocs were not present at this site; we will keep the Moon would like for me to give you this, as compensation for your time."] = 4727,
				["I have heard of the kinds of carriages found on the back of that turtle. rest of your discoveries. This is for you - thank you again for your assistance."] = 4731,
				["You've found even more beached creatures, $N? Sea turtles were commonly found frolicking along the us. Please accept this in exchange for the remains you have provided for our study."] = 4732
			}
		},
		["Beached Sea Creature"] = 	{
			["Gwennyth Bly'Leggonde"] = 		{
				["Another discovery - well done $N! These remains will be properly studied once they get accept this small honorarium in exchange for the remains you have provided for our study."] = 4723,
				["Ah, I believe you discovered one that was originally being examined by the Explorer's League. have not. Please - accept this honorarium on behalf of the Temple of the Moon."] = 4728,
				["The bones you have are from gentle sea mammals that are known to inhabit the thank you for your aid. Please accept this honorarium from the Temple of the Moon."] = 4730,
				["The dimensions of the thresher you mention are mind-boggling. Even the eldest of the threshers us, please accept this on behalf of the Temple of the Moon. Thank you, $N."] = 4733
			}
		},
		["Operative Bijou"] = 4981,
		["Bijou's Belongings"] = 	{
			["Bijou"] = 		{
				["You've done it! Once Lexlort has these plans, he'll forget all about the nasty things forget all about the nasty things he wanted to do to me. $N, you're my hero!"] = 4982,
				["Well I'll be! Where were they?? Well I'll be! Where were they??"] = 5001
			}
		},
		["Kibler's Exotic Pets"] = 4729,
		["En-Ay-Es-Tee-Why"] = 4862,
		["Broodling Essence"] = 4726,
		["Egg Freezing"] = 4734,
		["Egg Collection"] = 4735,
		["Return to Tinkee"] = 4810,
		["Tinkee Steamboil"] = 4907,
		["Seal of Ascension"] = 	{
			["Vaelan"] = 		{
				["<Vaelan's image blurs for a moment.> <The pieces that you had collected have disappeared.> The Unforged Seal disappeared.> The Unforged Seal of Ascension is now ready. It is time for the final step."] = 4742,
				["Stand steady while I cast the final invocation of protection. <Vaelan's eyes turn to twin orbs appears to be lost, the might of the red flight will be at your disposal."] = 4743
			}
		},
		["Find Ranshalla"] = 979,
		["Enraged Wildkin"] = 	{
			["Jaron Stoneshaper"] = 		{
				["Well, I expected to hear as much, $Glad:lass;. I figured that the crazed beasts destroyed fiercely defended this item... In any case, I'll think twice before heading their way again!"] = 4864,
				["Aye, what can I do for you? Aye, what can I do for you?"] = 6604
			},
			["Damaged Crate"] = 4861,
			["Jaron's Wagon"] = 4863
		},
		["The Ruins of Kel'Theril"] = 5244,
		["Finding the Source"] = 974,
		["Ursius of the Shardtooth"] = 5054,
		["Brumeran of the Chillwind"] = 5055,
		["Shy-Rotam"] = 5056,
		["Are We There, Yeti?"] = 	{
			["Umi Rumplesnicker"] = 		{
				["I can't wait to show my friends! Now, just wait a moment while I attach can't wait to show my friends! Now, just wait a moment while I attach these... Perfect!"] = 977,
				["These furs are perfect, $N. We're off to a great start here! These furs are perfect, $N. We're off to a great start here!"] = 3783,
				["Hah! They'll think twice before making fun of my ideas again! Thanks for your help, $N. ideas again! Thanks for your help, $N. I couldn't have had so much fun without you!"] = 5163
			}
		},
		["A Yeti of Your Own"] = 8798,
		["Wild Guardians"] = 	{
			["Trull Failbane"] = 		{
				["This is excellent news, $N. With these beasts out of the way, we can begin the way, we can begin to adventure further into Winterspring. Are you ready for more?"] = 4521,
				["Hard work is something I have great respect for, $N. Now we can move forward have great respect for, $N. Now we can move forward with our plans for Winterspring."] = 4721,
				["I sense that you are enjoying your work. And I believe that we are onto that you are enjoying your work. And I believe that we are onto something here."] = 4741
			}
		},
		["Luck Be With You"] = 969,
		["Cache of Mau'ari"] = 975,
		["Frostsaber E'ko"] = 4801,
		["Winterfall E'ko"] = 4802,
		["Shardtooth E'ko"] = 4803,
		["Chillwind E'ko"] = 4804,
		["Ice Thistle E'ko"] = 4805,
		["Frostmaul E'ko"] = 4806,
		["Wildkin E'ko"] = 4807,
		["A Little Luck"] = 6606,
		["Wind Rider"] = 4767,
		["Homeward Bound"] = 4770,
		["Serpent Wild"] = 4865,
		["Arikara"] = 5088,
		["The Final Tablets"] = 4788,
		["The Lost Tablets of Mosh'aru"] = 5065,
		["Felnok Steelspring"] = 4808,
		["Chillwind Horns"] = 4809,
		["Message to Freewind Post"] = 4542,
		["Pacify the Centaur"] = 4841,
		["Grimtotem Spying"] = 5064,
		["Wanted - Arnak Grimtotem"] = 5147,
		["Alien Egg"] = 4821,
		["A Bundle of Trouble"] = 5545,
		["Frostsaber Provisions"] = 4970,
		["Winterfall Intrusion"] = 5201,
		["Rampaging Giants"] = 5981,
		["Favor Amongst the Brotherhood, Dark Iron Ore"] = 6642,
		["Favor Amongst the Brotherhood, Fiery Core"] = 6643,
		["Favor Amongst the Brotherhood, Lava Core"] = 6644,
		["Favor Amongst the Brotherhood, Core Leather"] = 6645,
		["Favor Amongst the Brotherhood, Blood of the Mountain"] = 6646,
		["A Binding Contract"] = 7604,
		["Assassination Plot"] = 4881,
		["Protect Kanati Greycloud"] = 4966,
		["Free at Last"] = 4904,
		["Gordo's Task"] = 5481,
		["Doom Weed"] = 5482,
		["A Matter of Time"] = 4971,
		["Counting Out Time"] = 	{
			["Chromie"] = 		{
				["These are exactly what I need, $N. Thank you. Allow me to suitably reward you with choose to hold on to it until then... this, my friend, is up to you."] = 4972,
				["Again, I think you for your assistance. Please accept this gift. While you still may intentions to you. You could say that I've seen as such happening to you, $N."] = 4973
			}
		},
		["A Strange Historian"] = 5153,
		["The Annals of Darrowshire"] = 5154,
		["Return to Chromie"] = 5941,
		["The Wildlife Suffers Too"] = 	{
			["Mulgris Deepriver"] = 		{
				["I... I sense that the souls of those wolves you have put down now have their suffering within this damnable place, $N. Please, I have need of you once more."] = 4984,
				["'I know that the grizzles have been put down, their torment at an end. I... by what sounds like a death rattle. His body lies motionless on the cottage floor."] = 4985
			}
		},
		["Good Luck Charm"] = 5050,
		["Two Halves Become One"] = 5051,
		["Better Late Than Never"] = 	{
			["Royal Overseer Bauhaus"] = 5023,
			["Royal Factor Bathrilor"] = 5022,
			["Janice's Parcel"] = 5021
		},
		["Alas, Andorhal"] = 	{
			["High Executor Derrington"] = 105,
			["Commander Ashlam Valorfist"] = 211
		},
		["A Call to Arms: The Plaguelands!"] = 	{
			["High Executor Derrington"] = 5093,
			["Commander Ashlam Valorfist"] = 		{
				["Welcome to the Plaguelands, hero. This is one of most dangerous frontiers in Azeroth, especially plenty for willing and able heroes to do here on the edge of the Plaguelands."] = 5066,
				["Welcome to the Plaguelands, hero. This is one of the most dangerous frontiers in Azeroth, plenty for willing and able heroes to do here on the edge of the Plaguelands."] = 5090
			}
		},
		["Scarlet Diversions"] = 5096,
		["All Along the Watchtowers"] = 	{
			["High Executor Derrington"] = 5098,
			["Commander Ashlam Valorfist"] = 5097
		},
		["Mission Accomplished!"] = 	{
			["High Executor Derrington"] = 5238,
			["Commander Ashlam Valorfist"] = 5237
		},
		["Clear the Way"] = 5092,
		["Chillwind Point"] = 8415,
		["Inert Scourgestones"] = 8416,
		["Forging the Mightstone"] = 8418,
		["Argent Dawn Commission"] = 	{
			["Argent Officer Garush"] = 5405,
			["Argent Officer Pureheart"] = 5401,
			["Duke Nicholas Zverenhoff"] = 5503
		},
		["Corruptor's Scourgestones"] = 	{
			["Argent Officer Garush"] = 5406,
			["Argent Officer Pureheart"] = 5404,
			["Duke Nicholas Zverenhoff"] = 5508
		},
		["Invader's Scourgestones"] = 	{
			["Argent Officer Garush"] = 5407,
			["Argent Officer Pureheart"] = 5403,
			["Duke Nicholas Zverenhoff"] = 5509
		},
		["Minion's Scourgestones"] = 	{
			["Argent Officer Garush"] = 5408,
			["Argent Officer Pureheart"] = 5402,
			["Duke Nicholas Zverenhoff"] = 5510
		},
		["The Everlook Report"] = 	{
			["Argent Officer Garush"] = 6029,
			["Argent Officer Pureheart"] = 6028
		},
		["Mantles of the Dawn"] = 	{
			["Argent Quartermaster Hasana"] = 5504,
			["Argent Quartermaster Lightspark"] = 5507,
			["Quartermaster Miranda Breechlock"] = 5513
		},
		["Chromatic Mantle of the Dawn"] = 	{
			["Argent Quartermaster Hasana"] = 5524,
			["Argent Quartermaster Lightspark"] = 5521,
			["Quartermaster Miranda Breechlock"] = 5517
		},
		["The Medallion of Faith"] = 5122,
		["Aurius' Reckoning"] = 5125,
		["Words of the High Chief"] = 5128,
		["Verifying the Corruption"] = 5156,
		["Forces of Jaedenar"] = 5155,
		["Collection of the Corrupt Water"] = 5157,
		["Cleansed Water Returns to Felwood"] = 5159,
		["Dousing the Flames of Protection"] = 5165,
		["A Final Blow"] = 5242,
		["Blood of Morphaz"] = 8257,
		["Auntie Marlene"] = 5152,
		["Hypercapacitor Gizmo"] = 5151,
		["A Strange Red Key"] = 5202,
		["Rescue From Jaedenar"] = 5203,
		["The Remains of Trey Lightforge"] = 5385,
		["Retribution of the Light"] = 5204,
		["Barov Family Fortune"] = 	{
			["Alexi Barov"] = 5341,
			["Weldon Barov"] = 5343
		},
		["The Last Barov"] = 	{
			["Alexi Barov"] = 5342,
			["Weldon Barov"] = 5344
		},
		["The Great Fras Siabi"] = 5214,
		["That's Asking A Lot"] = 6026,
		["When Smokey Sings, I Get Violent"] = 6041,
		["Lord Maxwell Tyrosus"] = 5264,
		["Secrets of the Colossus - Zora"] = 8859,
		["Dawn's Gambit"] = 4771,
		["The Flesh Does Not Lie"] = 5212,
		["The Active Agent"] = 5213,
		["Plagued Hatchlings"] = 5529,
		["Betina Bigglezink"] = 5531,
		["Healthy Dragon Scale"] = 5582,
		["Houses of the Holy"] = 5243,
		["The Dying, Ras Frostwhisper"] = 5462,
		["Menethil's Gift"] = 	{
			["Leonid Barthalomew the Revered"] = 5464,
			["Menethil's Gift"] = 5463
		},
		["Leonid Barthalomew"] = 5522,
		["Zaeldarr the Outcast"] = 6021,
		["The Archivist"] = 5251,
		["The Truth Comes Crashing Down"] = 5262,
		["Above and Beyond"] = 5263,
		["Duke Nicholas Zverenhoff"] = 6030,
		["The Scourge Cauldrons"] = 	{
			["High Priestess MacDonnell"] = 5215,
			["Shadow Priestess Vandis"] = 5228
		},
		["Return to Chillwind Camp"] = 	{
			["High Priestess MacDonnell"] = 		{
				["Well done $N - it should take Alchemist Arbington no time at all to analyze up, we will have a huge advantage over Scourge when the time comes for battle!"] = 5217,
				["Ah, there is plenty in here for study. Well done, $N! For now, the next step more information on that, so be sure to speak with him at your earliest convenience."] = 5220,
				["Another finely executed mission, $N! This makes three cauldrons available to us to turn against the time has come to bring the last cauldron of the west under our influence!"] = 5223,
				["Congratulations $N, you've unlocked the last cauldron for us! Alchemist Arbington will soon know what Without you, our struggle against the Scourge would have been nearly insurmountable. Thank you, hero!"] = 5226
			}
		},
		["Return to the Bulwark"] = 	{
			["Shadow Priestess Vandis"] = 		{
				["Well done $N - it should take Apothecary Dithers no time at all to analyze up, we will have a huge advantage over Scourge when the time comes for battle!"] = 5230,
				["Ah, there is plenty in here for study. Well done, $N! For now, the next step more information on that, so be sure to speak with him as soon as possible."] = 5232,
				["Another finely executed mission, $N! This makes three cauldrons available to us to turn against the time has come to bring the last cauldron of the west under our influence!"] = 5234,
				["Congratulations $N, you've unlocked the last cauldron for us! Apothecary Dithers will soon know what our struggle against the Scourge would have been nearly insurmountable. I thank you, mighty $c."] = 5236
			}
		},
		["The Key to Scholomance"] = 	{
			["Alchemist Arbington"] = 5505,
			["Apothecary Dithers"] = 5511
		},
		["Scholomance"] = 	{
			["Alchemist Arbington"] = 5533,
			["Apothecary Dithers"] = 838
		},
		["Skeletal Fragments"] = 	{
			["Alchemist Arbington"] = 5537,
			["Apothecary Dithers"] = 964
		},
		["Fire Plume Forged"] = 	{
			["Alchemist Arbington"] = 5801,
			["Apothecary Dithers"] = 5802
		},
		["Araj's Scarab"] = 	{
			["Alchemist Arbington"] = 5803,
			["Apothecary Dithers"] = 5804
		},
		["Heroes of Darrowshire"] = 5168,
		["Villains of Darrowshire"] = 5181,
		["Marauders of Darrowshire"] = 5206,
		["Brother Carlin"] = 5210,
		["Defenders of Darrowshire"] = 5211,
		["Uncle Carlin"] = 5241,
		["To Winterspring!"] = 5249,
		["Starfall"] = 5250,
		["Remorseful Highborne"] = 5252,
		["The Restless Souls"] = 	{
			["Egan"] = 		{
				["Alen has finally found someone brave enough, eh? Alen has finally found someone brave enough, eh?"] = 5281,
				["<Egan wipes a tear from his eye.> Did you see my mother, $N? Did you free mother, $N? Did you free her? You are a shining example of decency. For your troubles..."] = 5282
			}
		},
		["The Way of the Weaponsmith"] = 	{
			["Ironus Coldsteel"] = 5284,
			["Borgosh Corebender"] = 5302
		},
		["Sweet Serenity"] = 5305,
		["Snakestone of the Shadow Huntress"] = 5306,
		["Corruption"] = 5307,
		["Doctor Theolen Krastinov, the Butcher"] = 5382,
		["Kirtonos the Herald"] = 5384,
		["Krastinov's Bag of Horrors"] = 5515,
		["The Sleeper Has Awakened"] = 5321,
		["Family Tree"] = 5361,
		["Catch of the Day"] = 5386,
		["The Human, Ras Frostwhisper"] = 5461,
		["Soulbound Keepsake"] = 5465,
		["The Lich, Ras Frostwhisper"] = 5466,
		["Fish in a Bucket"] = 5421,
		["Lazy Peons"] = 5441,
		["Thazz'ril's Pick"] = 6394,
		["Stars of Elune"] = 5627,
		["Returning Home"] = 	{
			["Priestess Alathea"] = 		{
				["Wonderful, you've returned home, $N. It always pleases Tyrande and myself when those we've trained speak more about the business at hand, you could tell me more of your travels."] = 5628,
				["Wonderful, you've returned, $N. It always pleases Tyrande and myself when those we've trained go speak more about the business at hand, you could tell me more of your travels."] = 5629,
				["Wonderful, you've returned home, $n. It always pleases Tyrande and myself when those we've trained speak more about the business at hand, you could tell me more of your travels."] = 5630
			}
		},
		["Elune's Grace"] = 	{
			["Priestess Alathea"] = 		{
				["By devoting yourself to Elune and our people, you have attained a state that not tradition that you then be taught even greater abilities for your devotion. Do you accept?"] = 5672,
				["Elune bless you for returning so quickly to us. This is an important time in then discuss the continuation of your training and where your path will lead you next."] = 5673
			}
		},
		["A Lack of Fear"] = 	{
			["High Priest Rohan"] = 		{
				["You've got the makings of a great $C, $N. Keep up the good work! You've already shown you're ready for battle. Perhaps it's time we taught ya a little somethin' more."] = 5641,
				["It is good you've come, $n. Our race is proud and strong, and it is be so yourself, but to invoke such emotion and confidence in others. You prepared, lad?"] = 5645,
				["You've got the makings of a great $c, $n. Keep up the good work! $nYou've already shown you're ready for battle. Perhaps it's time we taught ya a little somethin' more."] = 5647
			}
		},
		["Emphasis on Sacrifice"] = 7637,
		["Bone Collector"] = 5501,
		["Superior Armaments of Battle - Friend of the Dawn"] = 9221,
		["Epic Armaments of Battle - Friend of the Dawn"] = 9222,
		["Superior Armaments of Battle - Honored Amongst the Dawn"] = 9223,
		["Epic Armaments of Battle - Honored Amongst the Dawn"] = 9224,
		["Epic Armaments of Battle - Revered Amongst the Dawn"] = 9225,
		["Superior Armaments of Battle - Revered Amongst the Dawn"] = 9226,
		["Superior Armaments of Battle - Exalted Amongst the Dawn"] = 9227,
		["Epic Armaments of Battle - Exalted Amongst the Dawn"] = 9228,
		["Spiritual Unrest"] = 5535,
		["A Land Filled with Hatred"] = 5536,
		["Kodo Roundup"] = 5561,
		["Bodyguard for Hire "] = 5821,
		["Gizelton Caravan"] = 5943,
		["Unfinished Business"] = 	{
			["Kirsta Deepshadow"] = 		{
				["Well done, $N. I'm amazed you dealt with them so quickly. Thank you. I have yet demonstrated that they only want to kill anyone not loyal to their movement... even innocents."] = 6004,
				["Thank you, $N. You've been more help than I could have hoped for. The air matter, before you leave, here, take this... as payment for your help. Thank you again."] = 6023,
				["You've done it, $N! Thank you! I'll return to Elling... I mean Stormwind as soon as do for you. You're a credit to your people, $N. Thank you and good luck."] = 6025
			}
		},
		["Hand of Iruxos"] = 5381,
		["Portals of the Legion"] = 5581,
		["Vyletongue Corruption"] = 	{
			["Talendria"] = 7041,
			["Vark Battlescar"] = 7029
		},
		["The Dunemaul Compound"] = 5863,
		["Trial of the Lake"] = 28,
		["Rabine Saturna"] = 	{
			["Rabine Saturna"] = 		{
				["I am Rabine Saturna, and on behalf of Keeper Remulos and all of the denizens preservation of Azeroth is a common goal we both share. You are among friends here, $N."] = 1123,
				["I am Rabine Saturna, and on behalf of Keeper Remulos and all of the denizens from any ill-conceived repercussions you may be the target of. You are among friends here, $N."] = 6762
			}
		},
		["Shards of the Felvine"] = 5526,
		["A Reliquary of Purity"] = 5527,
		["Uncovering Past Secrets"] = 6845,
		["A Lesson to Learn"] = 26,
		["Trial of the Sea Lion"] = 30,
		["Moonglade"] = 	{
			["Dendrite Starblaze"] = 		{
				["'And so it begins, Father Cenarius. And so it begins.' Dendrite makes a quick, invisible gesture but it is you that must embrace it and propagate it - now and forever!'"] = 5921,
				["Ah I see that you have already mastered the form of the Bear. Good, good. the form of the Bear. Good, good. You are well on your way, young $c."] = 94914
			}
		},
		["Great Bear Spirit"] = 5929,
		["Lessons Anew"] = 6121,
		["Curing the Sick"] = 	{
			["Dendrite Starblaze"] = 		{
				["You have done well in tending to the sickly deer of Darkshore; they are unwitting a friend of nature and the Circle - take this as a symbol of such."] = 6124,
				["You have done well in tending to the sickly gazelles of the Barrens; they are an friend of nature and the Circle - take this as a symbol of such."] = 6129
			}
		},
		["One Shot.  One Kill."] = 5713,
		["Azuregos's Magical Ledger"] = 8575,
		["Translating the Ledger"] = 8576,
		["Scrying Goggles? No Problem!"] = 8578,
		["Return to Narain"] = 8587,
		["rAnS0m"] = 8598,
		["Love Song for Narain"] = 8599,
		["Decoy!"] = 8606,
		["The Only Prescription"] = 8620,
		["The Good News and The Bad News"] = 8728,
		["Warsong Supplies"] = 6571,
		["Testing an Enemy's Strength"] = 5723,
		["Returning the Lost Satchel"] = 5724,
		["Searching for the Lost Satchel"] = 5722,
		["Protect Kaya"] = 6523,
		["Avenge My Village"] = 6548,
		["Kill Grundig Darkcloud"] = 6629,
		["Harpies Threaten"] = 6282,
		["Bloodfury Bloodline"] = 6283,
		["Arachnophobia"] = 6284,
		["Boulderslide Ravine"] = 6421,
		["Earthen Arise"] = 6481,
		["Sceptre of Light"] = 5741,
		["Book of the Ancients"] = 6027,
		["Cycle of Rebirth"] = 6301,
		["New Life"] = 6381,
		["Kaya's Alive"] = 6401,
		["Find Myranda"] = 5861,
		["The Testament of Rexxar"] = 6568,
		["Oculus Illusions"] = 6569,
		["The Champion of the Banshee Queen"] = 5961,
		["To Kill With Purpose"] = 6022,
		["Un-Life's Little Annoyances"] = 6042,
		["The Ranger Lord's Behest"] = 6133,
		["Duskwing, Oh How I Hate Thee..."] = 6135,
		["The Corpulent One"] = 6136,
		["The Crimson Courier"] = 6145,
		["Return to Nathanos"] = 6147,
		["The Scarlet Oracle, Demetria"] = 6148,
		["Ramstein"] = 6163,
		["Nathanos' Ruse"] = 6146,
		["Under the Chitin Was..."] = 1185,
		["Umber, Archivist"] = 6844,
		["Welcome!"] = 	{
			["Merissa Stilwell"] = 5805,
			["Yori Crackhelm"] = 5841,
			["Orenthil Whisperwind"] = 5842,
			["Magga"] = 5843,
			["Vorn Skyseer"] = 5844,
			["Claire Willower"] = 5847
		},
		["Clam Bait"] = 6142,
		["Irondeep Supplies"] = 	{
			["Stormpike Quartermaster"] = 5892,
			["Frostwolf Quartermaster"] = 6985
		},
		["Coldtooth Supplies"] = 	{
			["Stormpike Quartermaster"] = 6982,
			["Frostwolf Quartermaster"] = 5893
		},
		["The Quartermaster"] = 7121,
		["Speak with our Quartermaster"] = 7123,
		["In Dreams"] = 5944,
		["Other Fish to Fry "] = 6143,
		["Augustus' Receipt Book"] = 6164,
		["Flint Shadowmore"] = 6184,
		["The Eastern Plagues"] = 6185,
		["Calling in the Reserves"] = 5881,
		["Stormwind Rendezvous"] = 6402,
		["Sharptalon's Claw"] = 2,
		["Ursangous's Paw"] = 23,
		["Shadumbra's Head"] = 24,
		["The Ashenvale Hunt"] = 	{
			["Senani Thunderheart"] = 		{
				["Welcome to the new frontier, $N. Ashenvale is a land of opportunity, one where a hunt. Listen close, and I will gladly share with you what you need to know."] = 235,
				["There are three legendary creatures that make up the Ashenvale Hunt; you may seek them in bringing them down. If you should best them, bring me proof of your deed."] = 6383
			}
		},
		["The Hunt Completed"] = 247,
		["The Lost Pages"] = 6504,
		["Naga at the Zoram Strand"] = 6442,
		["Troll Charm"] = 6462,
		["Satyr Horns"] = 6441,
		["Warsong Saw Blades"] = 6581,
		["Je'neu of the Earthen Ring"] = 824,
		["Baron Aquanis"] = 909,
		["Trouble in the Deeps"] = 6562,
		["The Essence of Aku'Mai"] = 6563,
		["Allegiance to the Old Gods"] = 	{
			["Je'neu Sancrea"] = 		{
				["This is interesting indeed. I am glad you have brought it to my attention. Now we have brought it to my attention. Now we have a name for our troubles... Lorgus Jett."] = 6564,
				["Very good!! Thank you, $N. We may not have stopped the Twilight's Hammer completely, but power. Who knows what other plans they have manifesting, but we can rest easy for now."] = 6565
			}
		},
		["Amongst the Ruins"] = 6921,
		["Stonetalon Standstill"] = 25,
		["The Befouled Element"] = 1918,
		["Bring Back the Mug"] = 3365,
		["Between a Rock and a Thistlefur"] = 216,
		["King of the Foulweald"] = 6621,
		["Blood Feeders"] = 6461,
		["Freedom to Ruul"] = 6482,
		["Warsong Scout Update"] = 6547,
		["Warsong Runner Update"] = 6545,
		["Vorsha the Lasher"] = 6641,
		["Warsong Outrider Update"] = 6546,
		["A Host of Evil"] = 6626,
		["Ashenvale Outrunners"] = 6503,
		["Torek's Assault"] = 6544,
		["Nat Pagle, Angler Extreme"] = 6607,
		["You Too Good."] = 6608,
		["I Got Nothin' Left!"] = 6609,
		["Nat's Measuring Tape"] = 8227,
		["Triage"] = 	{
			["Doctor Gregory Victor"] = 6622,
			["Doctor Gustaf VanHowzen"] = 6624
		},
		["Horde Trauma"] = 6623,
		["Alliance Trauma"] = 6625,
		["Deeprun Rat Roundup"] = 6661,
		["Me Brother, Nipsy"] = 6662,
		["Fallen Sky Lords"] = 	{
			["Commander Mulfort"] = 7302,
			["Commander Duffy"] = 7301
		},
		["Brotherly Love"] = 	{
			["Commander Louis Philips"] = 7281,
			["Commander Karl Philips"] = 7282
		},
		["The Human Condition"] = 7363,
		["I've Got A Fever For More Bone Chips"] = 7423,
		["More Booty!"] = 6741,
		["Enemy Booty"] = 7224,
		["Call of Air - Guse's Fleet"] = 6825,
		["Call of Air - Jeztor's Fleet"] = 6826,
		["Call of Air - Mulverick's Fleet"] = 6827,
		["Wasteland"] = 1124,
		["The Spirits of Southwind"] = 1125,
		["Hive in the Tower"] = 1126,
		["Lokholar the Ice Lord"] = 6801,
		["A Gallon of Blood"] = 7385,
		["More Armor Scraps"] = 6781,
		["Armor Scraps"] = 7223,
		["The Archbishop's Mercy"] = 7366,
		["One Man's Love"] = 7426,
		["Material Assistance"] = 7667,
		["The Darkreaver Menace"] = 7668,
		["A More Fitting Reward"] = 8259,
		["You're a Mean One..."] = 	{
			["Kaymard Copperpinch"] = 6983,
			["Wulmort Jinglepocket"] = 7043
		},
		["Metzen the Reindeer"] = 	{
			["Kaymard Copperpinch"] = 		{
				["You did it! Huzzah! Metzen flew back into Great-father Winter's stables - yes Metzen can really have a mount, I think you'll get a kick out of it. Happy Winter Veil!"] = 8746,
				["You did it! Huzzah! Metzen flew back into Great-father Winter's stables - yes Metzen can have a mount, I think you'll get a kick out of it. Happy Winter Veil!"] = 79495
			},
			["Wulmort Jinglepocket"] = 		{
				["You did it! Huzzah! Metzen flew back into Greatfather Winter's stables - yes Metzen can really have a mount, I think you'll get a kick out of it. Happy Winter Veil!"] = 8762,
				["You did it! Huzzah! Metzen flew back into Greatfather Winter's stables - yes Metzen can have a mount, I think you'll get a kick out of it. Happy Winter Veil!"] = 79492
			}
		},
		["Call of Air - Ichman's Fleet"] = 6943,
		["Call of Air - Slidore's Fleet"] = 6942,
		["Call of Air - Vipore's Fleet"] = 6941,
		["Ram Hide Harnesses"] = 7002,
		["Ivus the Forest Lord"] = 6881,
		["Crystal Cluster"] = 7386,
		["Greatfather Winter is Here!"] = 7022,
		["Treats for Greatfather Winter"] = 7025,
		["A Smokywood Pastures' Thank You!"] = 	{
			["Greatfather Winter"] = 7045,
			["Great-father Winter"] = 6984
		},
		["Winter's Presents"] = 	{
			["Greatfather Winter"] = 8827,
			["Great-father Winter"] = 8828
		},
		["Great-father Winter is Here!"] = 6961,
		["Treats for Great-father Winter"] = 6962,
		["Begin the Attack!"] = 6846,
		["Wanted: ORCS!"] = 7402,
		["Wanted: MORE ORCS!"] = 7428,
		["Wanted: DWARVES!"] = 7401,
		["Wanted: MORE DWARVES!"] = 7427,
		["Launch the Attack!"] = 6901,
		["Ram Riding Harnesses"] = 7026,
		["Empty Stables"] = 	{
			["Frostwolf Stable Master"] = 7001,
			["Stormpike Stable Master"] = 7027
		},
		["The Graveyards of Alterac"] = 7082,
		["Towers and Bunkers"] = 	{
			["Corporal Teeka Bloodsnarl"] = 7101,
			["Sergeant Durgen Stormpike"] = 7102
		},
		["Capture a Mine"] = 	{
			["Corporal Teeka Bloodsnarl"] = 7124,
			["Sergeant Durgen Stormpike"] = 7122
		},
		["Alterac Valley Graveyards"] = 7081,
		["The Battle of Alterac"] = 7141,
		["Hero of the Stormpike"] = 8271,
		["The Battle for Alterac"] = 7142,
		["Hero of the Frostwolf"] = 8272,
		["Proving Grounds"] = 	{
			["Warmaster Laggrond"] = 7161,
			["Lieutenant Haggerdin"] = 7162
		},
		["Rise and Be Recognized"] = 	{
			["Warmaster Laggrond"] = 7163,
			["Lieutenant Haggerdin"] = 7168
		},
		["Honored Amongst the Clan"] = 7164,
		["Earned Reverence"] = 	{
			["Warmaster Laggrond"] = 7165,
			["Lieutenant Haggerdin"] = 7170
		},
		["Legendary Heroes"] = 	{
			["Warmaster Laggrond"] = 7166,
			["Lieutenant Haggerdin"] = 7171
		},
		["The Eye of Command"] = 	{
			["Warmaster Laggrond"] = 7167,
			["Lieutenant Haggerdin"] = 7172
		},
		["In Defense of Frostwolf"] = 7241,
		["Honored Amongst the Guard"] = 7169,
		["The Sovereign Imperative"] = 7261,
		["Korrak the Everliving"] = 7382,
		["A Fair Trade"] = 7341,
		["Arrows Are For Sissies"] = 7342,
		["Favor Amongst the Darkspear"] = 7361,
		["Darkspear Defense"] = 7421,
		["Ally of the Tauren"] = 7362,
		["Tuft it Out"] = 7422,
		["Gnomeregan Bounty"] = 7364,
		["What the Hoof?"] = 7424,
		["The Gordok Ogre Suit"] = 	{
			["Knot Thimblejack"] = 		{
				["Yeah, this will do the trick. Just a slip here, and tuck here... heh - only will make him think that YOU are an ally - not your group mates!"] = 5518,
				["Here ya go $N - put this thing on, and you'll have ten minutes to find a key to get me out of here, BY ALL MEANS LET ME KNOW!!!"] = 5519
			}
		},
		["Free Knot!"] = 	{
			["Knot Thimblejack"] = 		{
				["You - ranked number one. Everyone else - ranked number two or lower. Oh, thank knew my life was destined for more than just being an appetizer to some ogre!"] = 5525,
				["Oh, thank you for freeing me! You - ranked number one. Everyone else - ranked knew my life was destined for more than just being an appetizer to some ogre!"] = 7429
			}
		},
		["Examine the Vessel"] = 7785,
		["Thunderaan the Windseeker"] = 7786,
		["Rise, Thunderfury!"] = 7787,
		["Pusillin and the Elder Azj'Tordin"] = 7441,
		["The Madness Within"] = 7461,
		["Arcane Refreshment"] = 7463,
		["Libram of Rapidity"] = 7478,
		["Libram of Focus"] = 7479,
		["Libram of Protection"] = 7480,
		["Foror's Compendium"] = 7507,
		["The Forging of Quel'Serrar"] = 	{
			["Lorekeeper Lydros"] = 		{
				["If you manage to enter the lair of the dragon, heat the blade under her and ultimately temper it in her blood, I shall bind the blade for your use."] = 7508,
				["<Lydros murmurs something unintelligible.> As promised, $C, the blade of Quel'Serrar. <Lydros murmurs something unintelligible.> As promised, $C, the blade of Quel'Serrar."] = 7509
			}
		},
		["Enchanted Thorium Platemail: Volume I"] = 7649,
		["Enchanted Thorium Platemail: Volume II"] = 7650,
		["Enchanted Thorium Platemail: Volume III"] = 7651,
		["Elven Legends"] = 	{
			["Sage Korolusk"] = 7481,
			["Scholar Runethorn"] = 7482
		},
		["Holy Bologna: What the Light Won't Tell You"] = 7504,
		["Frost Shock and You"] = 7505,
		["The Emerald Dream..."] = 7506,
		["The Light and How To Swing It"] = 7501,
		["Harnessing Shadows"] = 7502,
		["The Greatest Race of Hunters"] = 7503,
		["Garona: A Study on Stealth and Treachery"] = 7498,
		["Codex of Defense"] = 7499,
		["The Arcanist's Cookbook"] = 7500,
		["For All To See"] = 7491,
		["The Journey Has Just Begun"] = 	{
			["Overlord Runthak"] = 7493,
			["Major Mattingly"] = 7497
		},
		["Celebrating Good Times"] = 7496,
		["Mor'zul Bloodbringer"] = 7562,
		["Rage of Blood"] = 7563,
		["Wildeyes"] = 7564,
		["Xorothian Stardust"] = 7625,
		["Bell of Dethmoora"] = 7626,
		["Wheel of the Black March"] = 7627,
		["Doomsday Candle"] = 7628,
		["Imp Delivery"] = 7629,
		["Arcanite"] = 7630,
		["A Warden of the Horde"] = 5502,
		["The Prison's Bindings"] = 7581,
		["The Prison's Casing"] = 7582,
		["Suppression"] = 7583,
		["Kroshius' Infernal Core"] = 7603,
		["A Warning"] = 7621,
		["The Balance of Light and Shadow"] = 7622,
		["Arena Master"] = 7810,
		["Arena Grandmaster"] = 7838,
		["A Blue Light Bargain"] = 7652,
		["Imperial Plate Belt"] = 7653,
		["Imperial Plate Boots"] = 7654,
		["Imperial Plate Bracer"] = 7655,
		["Imperial Plate Chest"] = 7656,
		["Imperial Plate Helm"] = 7657,
		["Imperial Plate Leggings"] = 7658,
		["Imperial Plate Shoulders"] = 7659,
		["What the Flux?"] = 7722,
		["Restoring Fiery Flux Supplies via Kingsblood"] = 7736,
		["Gaining Acceptance"] = 7737,
		["Restoring Fiery Flux Supplies via Iron"] = 8241,
		["Restoring Fiery Flux Supplies via Heavy Leather"] = 8242,
		["Secrets of the Colossus - Regal"] = 8858,
		["STOLEN: Smithing Tuyere and Lookout's Spyglass"] = 7728,
		["JOB OPPORTUNITY: Culling the Competition"] = 7729,
		["Curse These Fat Fingers"] = 7723,
		["Fiery Menace!"] = 7724,
		["Incendosaurs? Whateverosaur is More Like It"] = 7727,
		["WANTED: Overseer Maltorius"] = 7701,
		["Zapped Giants"] = 7003,
		["Fuel for the Zapping"] = 7721,
		["Again With the Zapped Giants"] = 7725,
		["Refuel for the Zapping"] = 7726,
		["A Donation of Wool"] = 	{
			["Clavicus Knavingham"] = 7791,
			["Mistina Steelshield"] = 7802,
			["Bubulo Acerbus"] = 7807,
			["Raedon Duskstriker"] = 7792,
			["Rashona Straglash"] = 7826,
			["Vehena"] = 7833,
			["Rumstag Proudstrider"] = 7820,
			["Ralston Farnsley"] = 7813
		},
		["A Donation of Silk"] = 	{
			["Clavicus Knavingham"] = 7793,
			["Mistina Steelshield"] = 7803,
			["Bubulo Acerbus"] = 7808,
			["Raedon Duskstriker"] = 7798,
			["Rashona Straglash"] = 7827,
			["Vehena"] = 7834,
			["Rumstag Proudstrider"] = 7821,
			["Ralston Farnsley"] = 7814,
			["Belanaa Velovento"] = 99192
		},
		["A Donation of Mageweave"] = 	{
			["Clavicus Knavingham"] = 7794,
			["Mistina Steelshield"] = 7804,
			["Bubulo Acerbus"] = 7809,
			["Raedon Duskstriker"] = 7799,
			["Rashona Straglash"] = 7831,
			["Vehena"] = 7835,
			["Rumstag Proudstrider"] = 7822,
			["Ralston Farnsley"] = 7817
		},
		["A Donation of Runecloth"] = 	{
			["Clavicus Knavingham"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7795,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7795
			},
			["Mistina Steelshield"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7805,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7805
			},
			["Bubulo Acerbus"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7811,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7811
			},
			["Raedon Duskstriker"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7800,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7800
			},
			["Rashona Straglash"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7824,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7824
			},
			["Vehena"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7836,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7836
			},
			["Rumstag Proudstrider"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7823,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7823
			},
			["Ralston Farnsley"] = 		{
				["With all the donations you've made, I would certainly process any additional runecloth donations you in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7818,
				["Fantastic - these will go right to use, I assure you. Thank you again for in with me, and I'll personally make sure that your good deeds won't go unrecognized!"] = 7818
			}
		},
		["Additional Runecloth"] = 	{
			["Clavicus Knavingham"] = 7796,
			["Mistina Steelshield"] = 7806,
			["Bubulo Acerbus"] = 7812,
			["Raedon Duskstriker"] = 7801,
			["Rashona Straglash"] = 7832,
			["Vehena"] = 7837,
			["Rumstag Proudstrider"] = 7825,
			["Ralston Farnsley"] = 7819
		},
		["Vanquish the Invaders!"] = 	{
			["Sentinel Farsong"] = 		{
				["You have proven your value to our efforts in Warsong Gulch. Continue to aid the more Talismans of Merit. Do this, and you will earn even more of our trust."] = 7788,
				["You have proven your value to our efforts in Warsong Gulch. Continue to aid the more Marks of Honor. Do this, and you will earn even more of our trust."] = 7788
			}
		},
		["Talismans of Merit"] = 7886,
		["Ribbons of Sacrifice"] = 	{
			["Sentinel Farsong"] = 8266,
			["Captain Shatterskull"] = 8267
		},
		["Marks of Honor"] = 	{
			["Sentinel Farsong"] = 8292,
			["Captain Shatterskull"] = 8293
		},
		["Return to Primal Torntusk"] = 7847,
		["Dark Vessels"] = 7850,
		["Wanted: Vile Priestess Hexx and Her Minions"] = 7861,
		["Job Opening: Guard Captain of Revantusk Village"] = 7862,
		["Vilebranch Hooligans"] = 7839,
		["Message to the Wildhammer"] = 7841,
		["Another Message to the Wildhammer"] = 7842,
		["The Final Message to the Wildhammer"] = 7843,
		["Cannibalistic Cousins"] = 7844,
		["Snapjaws, Mon!"] = 7815,
		["Gammerita, Mon!"] = 7816,
		["Stalking the Stalkers"] = 7828,
		["Hunt the Savages"] = 7829,
		["Avenging the Fallen"] = 7830,
		["Separation Anxiety"] = 7849,
		["Sentinel Basic Care Package"] = 7863,
		["Sentinel Standard Care Package"] = 7864,
		["Sentinel Advanced Care Package"] = 7865,
		["Outrider Basic Care Package"] = 7866,
		["Outrider Standard Care Package"] = 7867,
		["Outrider Advanced Care Package"] = 7868,
		["Kidnapped Elder Torntusk!"] = 7845,
		["Recover the Key!"] = 7846,
		["Quell the Silverwing Usurpers"] = 	{
			["Captain Shatterskull"] = 		{
				["<Captain Shatterskull roars in triumph.> How much more can they withstand? How many more Alliance filth at the hands of the Horde for them to retreat? Only time will tell, $R..."] = 7789,
				["<Captain Shatterskull roars in triumph> How much more can they withstand? How many more Alliance filth at the hands of the Horde for them to retreat? Only time will tell, $R..."] = 7789,
				["<Captain Shatterskull roars in triumph.> How much more can they withstand? How many more Alliance filth at the hands of the Horde for them to retreat? Only time will tell, $R."] = 7874
			}
		},
		["Mark of Honor"] = 	{
			["Captain Shatterskull"] = 		{
				["The Night Elves and their allies must tremble at even the whisper of your name! Warsong Gulch. Continue to rage against the Silverwing Sentinels! Bring me more Marks of Honor!"] = 7922,
				["The night elves and their allies must tremble at even the whisper of your name! and their allies must tremble at even the whisper of your name! For the Horde!"] = 7922
			}
		},
		["The Darkmoon Faire"] = 7905,
		["5 Tickets - Darkmoon Flower"] = 7930,
		["5 Tickets - Minor Darkmoon Prize"] = 7931,
		["12 Tickets - Lesser Darkmoon Prize"] = 7932,
		["40 Tickets - Greater Darkmoon Prize"] = 7933,
		["50 Tickets - Darkmoon Storage Box"] = 7934,
		["10 Tickets - Last Month's Mutton"] = 7935,
		["50 Tickets - Last Year's Mutton"] = 7936,
		["1200 Tickets - Orb of the Darkmoon"] = 7940,
		["1200 Tickets - Amulet of the Darkmoon"] = 7981,
		["Small Furry Paws"] = 7899,
		["Torn Bear Pelts"] = 7900,
		["Soft Bushy Tails"] = 7901,
		["Vibrant Plumes"] = 7902,
		["Evil Bat Eyes"] = 7903,
		["More Bat Eyes"] = 7943,
		["Glowing Scorpid Blood"] = 8222,
		["More Glowing Scorpid Blood"] = 8223,
		["Coarse Weightstone"] = 7889,
		["Heavy Grinding Stone"] = 7890,
		["Green Iron Bracers"] = 7891,
		["Big Black Mace"] = 7892,
		["Rituals of Strength"] = 7893,
		["More Dense Grinding Stones"] = 7939,
		["Carnival Boots"] = 7881,
		["Carnival Jerkins"] = 7882,
		["The World's Largest Gnome!"] = 7883,
		["Crocolisk Boy and the Bearded Murloc"] = 7884,
		["Armor Kits"] = 7885,
		["More Armor Kits"] = 7941,
		["Copper Modulator"] = 7894,
		["Whirring Bronze Gizmo"] = 7895,
		["Green Fireworks"] = 7896,
		["Mechanical Repair Kits"] = 7897,
		["Thorium Widget"] = 7898,
		["More Thorium Widgets"] = 7942,
		["Darkmoon Beast Deck"] = 7907,
		["Darkmoon Portals Deck"] = 7927,
		["Darkmoon Warlords Deck"] = 7928,
		["Darkmoon Elementals Deck"] = 7929,
		["Spawn of Jubjub"] = 7946,
		["The Hand of Rastakhan"] = 8182,
		["The Heart of Hakkar"] = 8183,
		["The Eye of Zuldazar"] = 	{
			["Al'tabim the All-Seeing"] = 		{
				["Accept this talisman as a token of our appreciation, $g priest:priestess;. The Eye of Zuldazar will the trolls of Zandalar strengthens. Return to me periodically and I shall imbue the jewel."] = 8049,
				["Continue in your battle against the Soulflayer and his minions, $N. He must never be and his minions, $N. He must never be permitted to leave the confines of Zul'Gurub."] = 8050,
				["Be resolute in your endeavors, $N. The Soulflayer will attempt to siphon your will to resolute in your endeavors, $N. The Soulflayer will attempt to siphon your will to live."] = 8051
			}
		},
		["The All-Seeing Eye of Zuldazar"] = 8052,
		["Paragons of Power: The Demoniac's Wraps"] = 8059,
		["Paragons of Power: The Illusionist's Wraps"] = 8060,
		["Paragons of Power: The Confessor's Wraps"] = 8061,
		["Paragons of Power: The Illusionist's Mantle"] = 8068,
		["Paragons of Power: The Illusionist's Robes"] = 8069,
		["Paragons of Power: The Confessor's Bindings"] = 8070,
		["Paragons of Power: The Confessor's Mantle"] = 8071,
		["Paragons of Power: The Demoniac's Mantle"] = 8076,
		["Paragons of Power: The Demoniac's Robes"] = 8077,
		["The Pebble of Kajaro"] = 	{
			["Al'tabim the All-Seeing"] = 		{
				["$R, the pebble held within the frame of this talisman comes from Mount Kajaro in of the pebble to strike down our enemies. Be like the mountain: Quick, explosive, deadly..."] = 8101,
				["Be unstoppable, like the molten fronts of Kajaro. Be unstoppable, like the molten fronts of Kajaro."] = 8102,
				["Continue in your decimation of the trolls of Zul'Gurub. Hakkar must see that the world of Zul'Gurub. Hakkar must see that the world will not buckle beneath his indomitable will."] = 8103
			}
		},
		["The Jewel of Kajaro"] = 8104,
		["Kezan's Taint"] = 	{
			["Al'tabim the All-Seeing"] = 		{
				["Accept this talisman, $c. Accept it and use its power to strike down our mutual it held greatness. Still to this day Kezan is considered sacred land to my people."] = 8106,
				["Draw from the darkness, $c. Embrace the shadows. Let Kezan's Taint supplement your dark meddling. Draw from the darkness, $c. Embrace the shadows. Let Kezan's Taint supplement your dark meddling."] = 8107,
				["It is only through our combined efforts that we will stop the Soulflayer. It is only through our combined efforts that we will stop the Soulflayer."] = 8108
			}
		},
		["Kezan's Unstoppable Taint"] = 8109,
		["Paragons of Power: The Augur's Bracers"] = 8056,
		["Paragons of Power: The Haruspex's Bracers"] = 8057,
		["Paragons of Power: The Haruspex's Belt"] = 8064,
		["Paragons of Power: The Haruspex's Tunic"] = 8065,
		["Paragons of Power: The Augur's Belt"] = 8074,
		["Paragons of Power: The Augur's Hauberk"] = 8075,
		["Enchanted South Seas Kelp"] = 	{
			["Maywiki of Zuldazar"] = 		{
				["See this here seaweed, mon? It be from the South Seas. We just add a neck and think of nature or squirrels or whatever it be that you people like."] = 8110,
				["The neck piece not be for smokin', mon! You got to use it to fight neck piece not be for smokin', mon! You got to use it to fight evil."] = 8111,
				["Now you take the evil trolls in Zul'Gurub and show them what your nature powers the evil trolls in Zul'Gurub and show them what your nature powers can do, mon!"] = 8112
			}
		},
		["Pristine Enchanted South Seas Kelp"] = 8113,
		["Vision of Voodress"] = 	{
			["Maywiki of Zuldazar"] = 		{
				["You and Maywiki have something in common, mon. We both be shaman! Although, Maywiki is and see the village of Voodress in the South Seas! Let it lift your spirits!"] = 8116,
				["Beware the evil Hakkari spirits, mon. Honestly, they be spooky. Beware the evil Hakkari spirits, mon. Honestly, they be spooky."] = 8117,
				["Take a look at it now, $n. Voodress come in even clearer now, yea? Let Voodress come in even clearer now, yea? Let the primal power flow through you, mon."] = 8118
			}
		},
		["The Unmarred Vision of Voodress"] = 8119,
		["Paragons of Power: The Predator's Bracers"] = 8062,
		["Paragons of Power: The Madcap's Bracers"] = 8063,
		["Paragons of Power: The Predator's Belt"] = 8066,
		["Paragons of Power: The Predator's Mantle"] = 8067,
		["Paragons of Power: The Madcap's Mantle"] = 8072,
		["Paragons of Power: The Madcap's Tunic"] = 8073,
		["Zandalarian Shadow Talisman"] = 	{
			["Falthir the Sightless"] = 		{
				["You progress swiftly, young $c. Perhaps it is time to initiate you into the Shera Blood God and his minions! Wear this talisman and let it assist you in your journeys."] = 8141,
				["There is only one enhancement left that can be placed on the talisman, $c. When placed on the talisman, $c. When the time is right, I shall apply that enhancement."] = 8142,
				["An assassin of your caliber should be given a wide berth. Your foes must learn just that when the enemy sees the glint of Death's Hand - all too late..."] = 8143
			}
		},
		["Zandalarian Shadow Mastery Talisman"] = 8144,
		["The Maelstrom's Tendril"] = 	{
			["Falthir the Sightless"] = 		{
				["Amongst the Zandalarians, the profession of hunter is revered. Our greatest hunters travel to the Tendril. As your bond with Zandalar grows, I shall weave more power into the talisman."] = 8145,
				["Let them seek atonement at the end of your munitions. Let them seek atonement at the end of your munitions."] = 8146
			}
		},
		["Maelstrom's Wrath"] = 8148,
		["A Collection of Heads"] = 8201,
		["Essence Mangoes"] = 8196,
		["Zanza's Potent Potables"] = 8243,
		["Signets of the Zandalar"] = 8246,
		["The Battle for Arathi Basin!"] = 	{
			["Field Marshal Oslight"] = 8105,
			["Deathmaster Dwire"] = 		{
				["A Defiler scout came to me with a report of your success, $n. Well done. As and crush any attempts at Alliance expansion. Do this, and our victory here is ensured."] = 8120,
				["A Defiler scout came to me with a report of your success, $N. Well done. As and crush any attempts at Alliance expansion. Do this, and our victory here is ensured."] = 8170
			}
		},
		["Control Four Bases"] = 8114,
		["Arathi Basin Resources!"] = 8080,
		["Arathi Basin Mark of Honor!"] = 8080,
		["More Resource Crates"] = 	{
			["Sergeant Maclear"] = 8081,
			["Deathstalker Mortis"] = 8124
		},
		["More Arathi Basin Marks of Honor"] = 	{
			["Sergeant Maclear"] = 8298,
			["Deathstalker Mortis"] = 8300
		},
		["Honoring a Hero"] = 	{
			["Wagner Hammerstrike"] = 8149,
			["Javnir Nashak"] = 8150
		},
		["Cut Arathor Supply Lines"] = 8123,
		["Presence of Might"] = 8184,
		["Syncretist's Sigil"] = 8185,
		["Death's Embrace"] = 8186,
		["Falcon's Call"] = 8187,
		["Vodouisant's Vigilant Embrace"] = 8188,
		["Presence of Sight"] = 8189,
		["Hoodoo Hex"] = 8190,
		["Prophetic Aura"] = 8191,
		["Animist's Caress"] = 8192,
		["The Savage Guard - Arcanum of Protection"] = 9208,
		["The Savage Guard - Arcanum of Rapidity"] = 9209,
		["The Savage Guard - Arcanum of Focus"] = 9210,
		["Zulian, Razzashi, and Hakkari Coins"] = 8195,
		["Gurubashi, Vilebranch, and Witherbark Coins"] = 8238,
		["Sandfury, Skullsplitter, and Bloodscalp Coins"] = 8239,
		["A Bijou for Zanza"] = 8240,
		["Master Angler"] = 8193,
		["Apprentice Angler"] = 8194,
		["Could I get a Fishing Flier?"] = 	{
			["Grinkle"] = 8229,
			["Barrus"] = 8228
		},
		["Defiler's Basic Care Package"] = 8263,
		["Defiler's Standard Care Package"] = 8264,
		["Defiler's Advanced Care Package"] = 8265,
		["Arathor Basic Care Package"] = 8260,
		["Arathor Standard Care Package"] = 8261,
		["Arathor Advanced Care Package"] = 8262,
		["Pirate Hats Ahoy!"] = 8365,
		["Brann Bronzebeard's Lost Letter"] = 8308,
		["Glyph Chasing"] = 8309,
		["Breaking the Code"] = 8310,
		["Sharing the Knowledge"] = 8313,
		["Kitchen Assistance"] = 8317,
		["Volunteer's Battlegear"] = 8548,
		["Veteran's Battlegear"] = 8572,
		["Champion's Battlegear"] = 8573,
		["Stalwart's Battlegear"] = 8574,
		["Cenarion Battlegear"] = 8800,
		["What Tomorrow Brings"] = 8286,
		["Only One May Rise"] = 8288,
		["The Path of the Righteous"] = 8301,
		["The Hand of the Righteous"] = 8302,
		["A Terrible Purpose"] = 8287,
		["Dearest Natalia"] = 8304,
		["Into The Maw of Madness"] = 8306,
		["Twilight Battle Orders"] = 8498,
		["Target: Hive'Ashi Stingers"] = 8501,
		["Target: Hive'Ashi Workers"] = 8502,
		["The Four Dukes"] = 8538,
		["Target: Hive'Zora Hive Sisters"] = 8539,
		["Target: Hive'Ashi Defenders"] = 8770,
		["Target: Hive'Ashi Sandstalkers"] = 8771,
		["Target: Hive'Zora Waywatchers"] = 8772,
		["Target: Hive'Zora Reavers"] = 8773,
		["Target: Hive'Regal Ambushers"] = 8774,
		["Target: Hive'Regal Spitfires"] = 8775,
		["Target: Hive'Regal Slavemakers"] = 8776,
		["Target: Hive'Regal Burrowers"] = 8777,
		["The Fall of Ossirian"] = 8791,
		["Wanted - Deathclasp, Terror of the Sands"] = 8283,
		["The Twilight Mystery"] = 8284,
		["Unraveling the Mystery"] = 8314,
		["The Calling"] = 8315,
		["Armaments of War"] = 8316,
		["Deadly Desert Venom"] = 8277,
		["Noggle's Last Hope"] = 8278,
		["Noggle's Lost Satchel"] = 8282,
		["Taking Back Silithus"] = 8275,
		["Securing the Supply Lines"] = 8280,
		["Stepping Up Security"] = 8281,
		["Hive'Zora Scout Report"] = 8534,
		["Hive'Regal Scout Report"] = 8738,
		["Hive'Ashi Scout Report"] = 8739,
		["Twilight Marauders"] = 8740,
		["The Twilight Lexicon"] = 8279,
		["The Deserter"] = 8285,
		["True Believers"] = 8323,
		["Still Believing"] = 8324,
		["Stinking Up Southshore"] = 1657,
		["Ruined Kegs"] = 8409,
		["Crashing the Wickerman Festival"] = 1658,
		["The Power of Pine"] = 8373,
		["Twilight Geolords"] = 8320,
		["Vyral the Vile"] = 8321,
		["Aurel Goldleaf"] = 8331,
		["Dukes of the Council"] = 8332,
		["Medallion of Station"] = 8333,
		["Lords of the Council"] = 8341,
		["Twilight Ring of Lordship"] = 8342,
		["Goldleaf's Discovery"] = 8343,
		["A Humble Offering"] = 9248,
		["Secret Communication"] = 8318,
		["Encrypted Twilight Texts"] = 8319,
		["Signet of the Dukes"] = 8348,
		["Bor Wildmane"] = 8349,
		["Bor Wishes to Speak"] = 8351,
		["Scepter of the Council"] = 8352,
		["Abyssal Contacts"] = 8361,
		["Abyssal Crests"] = 8362,
		["Abyssal Signets"] = 8363,
		["Abyssal Scepters"] = 8364,
		["Hoary Templar"] = 8535,
		["Earthen Templar"] = 8536,
		["Crimson Templar"] = 8537,
		["Azure Templar"] = 8737,
		["For Great Honor"] = 	{
			["Horde Warbringer"] = 		{
				["Your trials have not been easy, but your courage did not escape you and your up straight, $N. Today you will walk with great pride for you are a hero!"] = 8367,
				["You continue to honor the Horde, $N. I'm glad to see you haven't turned soft. You continue to honor the Horde, $N. I'm glad to see you haven't turned soft."] = 8388
			}
		},
		["Battle of Warsong Gulch"] = 	{
			["Horde Warbringer"] = 		{
				["Excellent! You've shown your worth by defending our operations in Warsong Gulch! May word of in Warsong Gulch! May word of your honor spread far and wide across our lands."] = 8368,
				["Well done, $c! You've helped ensure the Horde's ownership over Warsong Gulch! Well done, $c! You've helped ensure the Horde's ownership over Warsong Gulch!"] = 8432
			}
		},
		["Invaders of Alterac Valley"] = 	{
			["Horde Warbringer"] = 		{
				["You've shown great bravery in protecting our lands in Alterac Valley! I will tell my in protecting our lands in Alterac Valley! I will tell my superiors of your deeds."] = 8369,
				["Good work, $N! You should be proud of yourself. The Alliance invaders must be expelled $N! You should be proud of yourself. The Alliance invaders must be expelled from Alterac!"] = 8387
			}
		},
		["Conquering Arathi Basin"] = 	{
			["Horde Warbringer"] = 		{
				["Securing our resources in Arathi is an important task! You've done well, $N. Securing our resources in Arathi is an important task! You've done well, $N."] = 8370,
				["Excellent work, $N! As long as Arathi Basin stays under our control our supplies will As long as Arathi Basin stays under our control our supplies will be well stocked."] = 8440,
				["Excellent work, $n! As long as Arathi Basin stays under our control our supplies will As long as Arathi Basin stays under our control our supplies will be well stocked."] = 8443
			}
		},
		["Past Victories in Arathi"] = 	{
			["Horde Warbringer"] = 8566,
			["Alliance Brigadier General"] = 8565
		},
		["Past Victories in Warsong Gulch"] = 	{
			["Horde Warbringer"] = 8568,
			["Alliance Brigadier General"] = 8567
		},
		["Past Efforts in Warsong Gulch"] = 	{
			["Horde Warbringer"] = 8570,
			["Alliance Brigadier General"] = 8569
		},
		["Concerted Efforts"] = 	{
			["Alliance Brigadier General"] = 		{
				["You're not one to disappoint, $N! What you've learned goes beyond petty medals and commendations. in the field of battle. You've done well, $c. You're a true hero of the Alliance!"] = 8371,
				["You live up to yer reputation, $N. Without people like you, the Alliance wouldn't stand like you, the Alliance wouldn't stand a chance against the savage forces of the Horde."] = 8385
			}
		},
		["Fight for Warsong Gulch"] = 	{
			["Alliance Brigadier General"] = 		{
				["Well done, $N! You've served the Alliance well. Well done, $N! You've served the Alliance well."] = 8372,
				["Good work, $N. Thanks to you, our natural defenses in Ashenvale will remain intact for $N. Thanks to you, our natural defenses in Ashenvale will remain intact for another day."] = 8399
			}
		},
		["Claiming Arathi Basin"] = 	{
			["Alliance Brigadier General"] = 		{
				["Good work, soldier! Keep it up and we'll have the Horde running all the way Keep it up and we'll have the Horde running all the way back to Orgrimmar."] = 8374,
				["Excellent work, $c! Your efforts will help provide the Alliance with the resources it needs. Excellent work, $c! Your efforts will help provide the Alliance with the resources it needs."] = 8392
			}
		},
		["Remember Alterac Valley!"] = 	{
			["Alliance Brigadier General"] = 		{
				["You've done your part, $N. The Alliance cannot let the Horde's uncivilized acts to go done your part, $N. The Alliance cannot let the Horde's uncivilized acts to go unchallenged!"] = 8375,
				["You continue to honor the Alliance, $N. The Horde will be crushed before long if Alliance, $N. The Horde will be crushed before long if we keep our efforts up."] = 8383
			}
		},
		["Imperial Qiraji Regalia"] = 8790,
		["C'Thun's Legacy"] = 8801,
		["Imperial Qiraji Armaments"] = 8789,
		["Arms for the Field"] = 	{
			["Janela Stouthammer"] = 8781,
			["Merok Longstride"] = 8786
		},
		["The Ironforge Brigade Needs Explosives!"] = 8778,
		["Conqueror's Spaulders"] = 8544,
		["Conqueror's Crown"] = 8561,
		["Tiara of the Oracle"] = 8592,
		["Mantle of the Oracle"] = 8594,
		["Stormcaller's Pauldrons"] = 8602,
		["Stormcaller's Diadem"] = 8623,
		["Enigma Shoulderpads"] = 8625,
		["Avenger's Crown"] = 8628,
		["Avenger's Pauldrons"] = 8630,
		["Enigma Circlet"] = 8632,
		["Deathdealer's Helm"] = 8639,
		["Deathdealer's Spaulders"] = 8641,
		["Striker's Diadem"] = 8657,
		["Striker's Pauldrons"] = 8659,
		["Doomcaller's Circlet"] = 8662,
		["Doomcaller's Mantle"] = 8664,
		["Genesis Helm"] = 8667,
		["Genesis Shoulderpads"] = 8669,
		["Secrets of the Qiraji"] = 8784,
		["Conqueror's Greaves"] = 8559,
		["Conqueror's Legguards"] = 8560,
		["Mortal Champions"] = 	{
			["Kandrostrasz"] = 		{
				["I see that you're no ordinary mortal, $N. Your chances against the Old God, however you'll gain our trust. Only then we shall make a true champion out of you."] = 8579,
				["You continue to serve us well, $N. Our pact remains in place. You continue to serve us well, $N. Our pact remains in place."] = 8595
			}
		},
		["Trousers of the Oracle"] = 8593,
		["Footwraps of the Oracle"] = 8596,
		["Stormcaller's Footguards"] = 8621,
		["Stormcaller's Leggings"] = 8624,
		["Striker's Footguards"] = 8626,
		["Avenger's Legguards"] = 8629,
		["Enigma Leggings"] = 8631,
		["Enigma Boots"] = 8634,
		["Deathdealer's Boots"] = 8637,
		["Deathdealer's Leggings"] = 8640,
		["Avenger's Greaves"] = 8655,
		["Striker's Leggings"] = 8658,
		["Doomcaller's Footwraps"] = 8660,
		["Doomcaller's Trousers"] = 8663,
		["Genesis Boots"] = 8665,
		["Genesis Trousers"] = 8668,
		["Conqueror's Breastplate"] = 8562,
		["Vestments of the Oracle"] = 8603,
		["Stormcaller's Hauberk"] = 8622,
		["Avenger's Breastplate"] = 8627,
		["Enigma Robes"] = 8633,
		["Deathdealer's Vest"] = 8638,
		["Striker's Hauberk"] = 8656,
		["Doomcaller's Robes"] = 8661,
		["Genesis Vest"] = 8666,
		["Field Duty Papers"] = 	{
			["Krug Skullsplit"] = 8732,
			["Captain Blackanvil"] = 8508
		},
		["Armor Kits for the Field"] = 8787,
		["The Orgrimmar Legion Needs Mojo!"] = 8785,
		["Robe of Faith"] = 9111,
		["Leggings of Faith"] = 9112,
		["Circlet of Faith"] = 9113,
		["Shoulderpads of Faith"] = 9114,
		["Sandals of Faith"] = 9115,
		["Gloves of Faith"] = 9116,
		["Belt of Faith"] = 9117,
		["Bindings of Faith"] = 9118,
		["Dreadnaught Breastplate"] = 9034,
		["Dreadnaught Legplates"] = 9036,
		["Dreadnaught Helmet"] = 9037,
		["Dreadnaught Pauldrons"] = 9038,
		["Dreadnaught Sabatons"] = 9039,
		["Dreadnaught Gauntlets"] = 9040,
		["Dreadnaught Waistguard"] = 9041,
		["Dreadnaught Bracers"] = 9042,
		["Binding the Dreadnaught"] = 9131,
		["Dark Iron Scraps"] = 9132,
		["The Fate of Ramaladni"] = 9229,
		["Ramaladni's Icy Grasp"] = 9230,
		["Echoes of War"] = 9033,
		["Redemption Tunic"] = 9043,
		["Redemption Legguards"] = 9044,
		["Redemption Headpiece"] = 9045,
		["Redemption Spaulders"] = 9046,
		["Redemption Boots"] = 9047,
		["Redemption Handguards"] = 9048,
		["Redemption Girdle"] = 9049,
		["Redemption Wristguards"] = 9050,
		["Frostfire Robe"] = 9095,
		["Frostfire Leggings"] = 9096,
		["Frostfire Circlet"] = 9097,
		["Frostfire Shoulderpads"] = 9098,
		["Frostfire Sandals"] = 9099,
		["Frostfire Gloves"] = 9100,
		["Frostfire Belt"] = 9101,
		["Frostfire Bindings"] = 9102,
		["The Dread Citadel - Naxxramas"] = 9121,
		["The Elemental Equation"] = 9128,
		["Core of Elements"] = 9129,
		["Bonescythe Breastplate"] = 9077,
		["Bonescythe Legplates"] = 9078,
		["Bonescythe Helmet"] = 9079,
		["Bonescythe Pauldrons"] = 9080,
		["Bonescythe Sabatons"] = 9081,
		["Bonescythe Gauntlets"] = 9082,
		["Bonescythe Waistguard"] = 9083,
		["Bonescythe Bracers"] = 9084,
		["Bonescythe Digs"] = 9126,
		["Bone Fragments"] = 9127,
		["Cryptstalker Tunic"] = 9054,
		["Cryptstalker Legguards"] = 9055,
		["Cryptstalker Headpiece"] = 9056,
		["Cryptstalker Spaulders"] = 9057,
		["Cryptstalker Boots"] = 9058,
		["Cryptstalker Handguards"] = 9059,
		["Cryptstalker Girdle"] = 9060,
		["Cryptstalker Wristguards"] = 9061,
		["Cryptstalker Armor Doesn't Make Itself..."] = 9124,
		["Crypt Fiend Parts"] = 9125,
		["Plagueheart Robe"] = 9103,
		["Plagueheart Leggings"] = 9104,
		["Plagueheart Circlet"] = 9105,
		["Plagueheart Shoulderpads"] = 9106,
		["Plagueheart Sandals"] = 9107,
		["Plagueheart Gloves"] = 9108,
		["Plagueheart Belt"] = 9109,
		["Plagueheart Bindings"] = 9110,
		["The Ice Guard"] = 9211,
		["The Shadow Guard"] = 9213,
		["Earthshatter Tunic"] = 9068,
		["Earthshatter Legguards"] = 9069,
		["Earthshatter Headpiece"] = 9070,
		["Earthshatter Spaulders"] = 9071,
		["Earthshatter Boots"] = 9072,
		["Earthshatter Handguards"] = 9073,
		["Earthshatter Girdle"] = 9074,
		["Earthshatter Wristguards"] = 9075,
		["Dreamwalker Tunic"] = 9086,
		["Dreamwalker Legguards"] = 9087,
		["Dreamwalker Headpiece"] = 9088,
		["Dreamwalker Spaulders"] = 9089,
		["Dreamwalker Boots"] = 9090,
		["Dreamwalker Handguards"] = 9091,
		["Dreamwalker Girdle"] = 9092,
		["Dreamwalker Wristguards"] = 9093,
		["Savage Flora"] = 9136,
		["Savage Fronds"] = 9137,
		["An Earnest Proposition"] = 	{
			["Mokvar"] = 		{
				["Ah, yes. Mux will be quite happy with this. Those bracers were part of a larger me with further assistance, I'd be willing to consider parting with the rest of it."] = 8913,
				["Ah, yes. Mux will be quite happy with this. Those bindings were part of a larger me with further assistance, I'd be willing to consider parting with the rest of it."] = 8914,
				["Ah, yes. That old goblin shall be quite happy with this blood. Those bracers were part me with further assistance I'd be willing to consider parting with the rest of it."] = 8918
			},
			["Deliana"] = 8905
		},
		["Just Compensation"] = 	{
			["Mokvar"] = 8927,
			["Deliana"] = 8926
		},
		["Anthion's Parting Words"] = 	{
			["Mokvar"] = 		{
				["I can't believe our lives are all but forfeit all because of a stupid medallion! mentioned Bodley? Well, you've done your job so let's get your reward out of the way."] = 8957,
				["This curse was bestowed upon us but for a mere medallion. Lord Valthalak certainly knows before I meet an untimely demise. But before that, let us see about your reward."] = 9016
			},
			["Deliana"] = 8951
		},
		["Return to Mokvar"] = 8978,
		["Back to the Beginning"] = 	{
			["Mokvar"] = 8998,
			["Deliana"] = 8997
		},
		["Saving the Best for Last"] = 	{
			["Mokvar"] = 9007,
			["Deliana"] = 8999
		},
		["Return to Deliana"] = 8977,
		["The Ectoplasmic Distiller"] = 8921,
		["A Supernatural Device"] = 	{
			["Mux Manascrambler"] = 		{
				["Excellent! Just as I was running low! You say Deliana sent you? Excellent! Just as I was running low! You say Deliana sent you?"] = 8922,
				["Excellent! Just as I was running low! You say Mokvar sent you? Excellent! Just as I was running low! You say Mokvar sent you?"] = 8923
			}
		},
		["Hunting for Ectoplasm"] = 8924,
		["A Portable Power Source"] = 8925,
		["A Shifty Merchant"] = 8928,
		["In Search of Anthion"] = 	{
			["Anthion Harmon"] = 		{
				["Deliana had you contact me? I'll do my best to help you, but first I my best to help you, but first I must ask a great favor of you."] = 8929,
				["Mokvar had you contact me? I'll do my best to help you, but first I my best to help you, but first I must ask a great favor of you."] = 8930
			}
		},
		["Proof of Life"] = 8946,
		["Anthion's Strange Request"] = 8947,
		["The Challenge"] = 9015,
		["Dead Man's Plea"] = 8945,
		["Anthion's Old Friend"] = 8948,
		["Falrin's Vendetta"] = 8949,
		["The Instigator's Enchantment"] = 8950,
		["Bodley's Unfortunate Fate"] = 8960,
		["Three Kings of Flame"] = 8961,
		["Components of Importance"] = 	{
			["Bodley"] = 		{
				["A job well done, $N. I will imbue the essence of the remains into the former cohort, Mor Grayhoof. He cannot rest until the amulet piece is taken from him."] = 8962,
				["A job well done, $N. I will imbue the essence of the relic into the possession of the piece of Valthalak's amulet, and the portion of his soul within it."] = 8963,
				["A job well done, $N. I will imbue the essence of the sword into the have been twisted further by their possession of Valthalak's amulet piece and his spirit within."] = 8964,
				["A job well done, $N. I will imbue the essence of the ashes into the him even further, and he will not rest until you forcibly take it from him."] = 8965
			}
		},
		["The Left Piece of Lord Valthalak's Amulet"] = 	{
			["Bodley"] = 		{
				["You have done a great thing, $N. One spirit rests in peace, but there is task for you, which is going to enable us to ferret out the final piece."] = 8966,
				["Thank you, $N, for putting Isalien's spirit to rest. Now, perhaps, she will find peace task for you, which is going to enable us to ferret out the final piece."] = 8967,
				["I suppose it's for the best that the souls of those two have finally been task for you, which is going to enable us to ferret out the final piece."] = 8968,
				["Good work, $N! Kormok wasn't all that bad for an ogre, at least not while task for you, which is going to enable us to ferret out the final piece."] = 8969
			}
		},
		["I See Alcaz Island In Your Future..."] = 8970,
		["More Components of Importance"] = 	{
			["Bodley"] = 		{
				["A job well done, $N. I will imbue the essence of the relic into the to Alcaz Isle, so I made it into some potions for you. Take your pick!"] = 8985,
				["A job well done, $N. I will imbue the essence of the remains into the to Alcaz Isle, so I made it into some potions for you. Take your pick!"] = 8986,
				["A job well done, $N. I will imbue the essence of the sword into the to Alcaz Isle, so I made it into some potions for you. Take your pick!"] = 8987,
				["A job well done, $N. I will imbue the essence of the ashes into the to Alcaz Isle, so I made it into some potions for you. Take your pick!"] = 8988
			}
		},
		["The Right Piece of Lord Valthalak's Amulet"] = 	{
			["Bodley"] = 		{
				["Thank you for helping Mor Grayhoof, $N. Another spirit rests in peace, and we now a few more items that need to be gathered and brought back to me here."] = 8989,
				["Thank you, $N, for putting Isalien's spirit to rest. Now, perhaps, she will find peace a few more items that need to be gathered and brought back to me here."] = 8990,
				["I suppose it's for the best that the souls of those two have finally been a few more items that need to be gathered and brought back to me here."] = 8991,
				["Good work, $N! Kormok wasn't all that bad for an ogre, at least not while a few more items that need to be gathered and brought back to me here."] = 8992
			}
		},
		["Final Preparations"] = 8994,
		["Return to Bodley"] = 8996,
		["The Only Song I Know..."] = 9232,
		["Omarion's Handbook"] = 9233,
		["Icebane Gauntlets"] = 9234,
		["Icebane Bracers"] = 9235,
		["Icebane Breastplate"] = 9236,
		["Glacial Cloak"] = 9237,
		["Glacial Wrists"] = 9238,
		["Glacial Gloves"] = 9239,
		["Glacial Vest"] = 9240,
		["Polar Bracers"] = 9241,
		["Polar Gloves"] = 9242,
		["Polar Tunic"] = 9243,
		["Icy Scale Bracers"] = 9244,
		["Icy Scale Gauntlets"] = 9245,
		["Icy Scale Breastplate"] = 9246,
		["Report to General Kirika"] = 9416,
		["Scouring the Desert"] = 	{
			["General Kirika"] = 9422,
			["Marshal Bluewall"] = 9419
		},
		["Report to Marshal Bluewall"] = 9415,
		["Field Duty"] = 	{
			["Windcaller Kaldon"] = 		{
				["Very well, $N I've prepared a set of tasks that should make optimal use of vanquished once and for all! Should you require a new mission briefing, return to Captain Blackanvil."] = 8507,
				["I can tell that Krug has little use for paperwork. He signed this in silithid the continued efforts of you and people like you, our enemy will soon be crushed!"] = 8731
			}
		},
		["Allegiance to Cenarion Circle"] = 9338,
		["Signet of Unyielding Strength"] = 8556,
		["Ring of Infinite Wisdom"] = 8697,
		["Ring of the Gathering Storm"] = 8698,
		["Band of Vaulted Secrets"] = 8699,
		["Band of Unending Life"] = 8700,
		["Band of Veiled Shadows"] = 8701,
		["Ring of Unspoken Names"] = 8702,
		["Ring of Eternal Justice"] = 8703,
		["Signet of the Unseen Path"] = 8704,
		["Sickle of Unyielding Strength"] = 8558,
		["Gavel of Infinite Wisdom"] = 8705,
		["Hammer of the Gathering Storm"] = 8706,
		["Blade of Vaulted Secrets"] = 8707,
		["Mace of Unending Life"] = 8708,
		["Dagger of Veiled Shadows"] = 8709,
		["Kris of Unspoken Names"] = 8710,
		["Blade of Eternal Justice"] = 8711,
		["Scythe of the Unseen Path"] = 8712,
		["Drape of Unyielding Strength"] = 8557,
		["Shroud of Infinite Wisdom"] = 8689,
		["Cloak of the Gathering Storm"] = 8690,
		["Drape of Vaulted Secrets"] = 8691,
		["Cloak of Unending Life"] = 8692,
		["Cloak of Veiled Shadows"] = 8693,
		["Shroud of Unspoken Names"] = 8694,
		["Cape of Eternal Justice"] = 8695,
		["Cloak of the Unseen Path"] = 8696,
		["The Perfect Poison"] = 9023,
		["Shadows of Doom"] = 9085,
		["Under the Shadow"] = 9153,
		["Investigate the Scourge of Stormwind"] = 9260,
		["Cracked Necrotic Crystal"] = 9292,
		["Investigate the Scourge of the Undercity"] = 9265,
		["Faint Necrotic Crystal"] = 9310,
		["Windrun the Elder"] = 8688,
		["Starsong the Elder"] = 8713,
		["Moonstrike the Elder"] = 8714,
		["Bladeleaf the Elder"] = 8715,
		["Starglade the Elder"] = 8716,
		["Moonwarden the Elder"] = 8717,
		["Bladeswift the Elder"] = 8718,
		["Bladesing the Elder"] = 8719,
		["Skygleam the Elder"] = 8720,
		["Starweave the Elder"] = 8721,
		["Meadowrun the Elder"] = 8722,
		["Nightwind the Elder"] = 8723,
		["Morningdew the Elder"] = 8724,
		["Riversong the Elder"] = 8725,
		["Brightspear the Elder"] = 8726,
		["Farwhisper the Elder"] = 8727,
		["Bronzebeard the Elder"] = 8866,
		["High Mountain the Elder"] = 8686,
		["Mistwalker the Elder"] = 8685,
		["Dreamseer the Elder"] = 8684,
		["Dawnstrider the Elder"] = 8683,
		["Skyseer the Elder"] = 8682,
		["Thunderhorn the Elder"] = 8681,
		["Windtotem the Elder"] = 8680,
		["Grimtotem the Elder"] = 8679,
		["Proudhorn the Elder"] = 8678,
		["Darkhorn the Elder"] = 8677,
		["Wildmane the Elder"] = 8676,
		["Skychaser the Elder"] = 8675,
		["Winterhoof the Elder"] = 8674,
		["Bloodhoof the Elder"] = 8673,
		["Stonespire the Elder"] = 8672,
		["Ragetotem the Elder"] = 8671,
		["Runetotem the Elder"] = 8670,
		["Primestone the Elder"] = 8654,
		["Goldwell the Elder"] = 8653,
		["Graveborn the Elder"] = 8652,
		["Ironband the Elder"] = 8651,
		["Snowcrown the Elder"] = 8650,
		["Stormbrow the Elder"] = 8649,
		["Darkcore the Elder"] = 8648,
		["Bellowrage the Elder"] = 8647,
		["Hammershout the Elder"] = 8646,
		["Obsidian the Elder"] = 8645,
		["Stonefort the Elder"] = 8644,
		["Highpeak the Elder"] = 8643,
		["Silvervein the Elder"] = 8642,
		["Rumblerock the Elder"] = 8636,
		["Splitrock the Elder"] = 8635,
		["Morndeep the Elder"] = 8619,
		["The Lost Dwarves"] = 2398,
		["Amulet of Secrets"] = 722,
		["They Call Me 'The Rooster'"] = 9141,
		["Craftsman's Writ"] = 9142,
		["Writ of Safe Passage"] = 9165,
		["One Commendation Signet"] = 	{
			["Officer Vu'Shalay"] = 8816,
			["Officer Lunalight"] = 8811,
			["Officer Porterhouse"] = 8812,
			["Officer Ironbeard"] = 8813,
			["Officer Redblade"] = 8815,
			["Officer Maloof"] = 8814,
			["Officer Thunderstrider"] = 8818,
			["Officer Gothena"] = 8817,
			["Thunder Bluff Commendation Officer"] = 8842,
			["Darnassus Commendation Officer"] = 8830,
			["Gnomeregan Commendation Officer"] = 8838,
			["Ironforge Commendation Officer"] = 8834,
			["Stormwind Commendation Officer"] = 8836,
			["Orgrimmar Commendation Officer"] = 8840,
			["Darkspear Commendation Officer"] = 8844,
			["Undercity Commendation Officer"] = 8832
		},
		["Ten Commendation Signets"] = 	{
			["Officer Vu'Shalay"] = 8824,
			["Officer Lunalight"] = 8819,
			["Officer Porterhouse"] = 8820,
			["Officer Ironbeard"] = 8821,
			["Officer Redblade"] = 8823,
			["Officer Maloof"] = 8822,
			["Officer Thunderstrider"] = 8825,
			["Officer Gothena"] = 8826,
			["Thunder Bluff Commendation Officer"] = 8843,
			["Darnassus Commendation Officer"] = 8831,
			["Gnomeregan Commendation Officer"] = 8839,
			["Ironforge Commendation Officer"] = 8835,
			["Stormwind Commendation Officer"] = 8837,
			["Orgrimmar Commendation Officer"] = 8841,
			["Darkspear Commendation Officer"] = 8845,
			["Undercity Commendation Officer"] = 8833
		},
		["Lunar Fireworks"] = 8867,
		["The Lunar Festival"] = 8870,
		["Craftsman's Writ - Dense Weightstone"] = 9178,
		["Craftsman's Writ - Imperial Plate Chest"] = 9179,
		["Craftsman's Writ - Volcanic Hammer"] = 9181,
		["Craftsman's Writ - Huge Thorium Battleaxe"] = 9182,
		["Craftsman's Writ - Radiant Circlet"] = 9183,
		["Craftsman's Writ - Wicked Leather Headband"] = 9184,
		["Craftsman's Writ - Rugged Armor Kit"] = 9185,
		["Craftsman's Writ - Wicked Leather Belt"] = 9186,
		["Craftsman's Writ - Runic Leather Pants"] = 9187,
		["Craftsman's Writ - Brightcloth Pants"] = 9188,
		["Craftsman's Writ - Runecloth Boots"] = 9190,
		["Craftsman's Writ - Runecloth Bag"] = 9191,
		["Craftsman's Writ - Runecloth Robe"] = 9194,
		["Craftsman's Writ - Goblin Sapper Charge"] = 9195,
		["Craftsman's Writ - Thorium Grenade"] = 9196,
		["Craftsman's Writ - Gnomish Battle Chicken"] = 9197,
		["Craftsman's Writ - Thorium Tube"] = 9198,
		["Craftsman's Writ - Major Mana Potion"] = 9200,
		["Craftsman's Writ - Greater Arcane Protection Potion"] = 9201,
		["Craftsman's Writ - Major Healing Potion"] = 9202,
		["Craftsman's Writ - Flask of Petrification"] = 9203,
		["Craftsman's Writ - Stonescale Eel"] = 9204,
		["Craftsman's Writ - Plated Armorfish"] = 9205,
		["Craftsman's Writ - Lightning Eel"] = 9206,
		["Traitor to the Bloodsail"] = 9259,
		["Making Amends"] = 9266,
		["War at Sea"] = 9268,
		["Mending Old Wounds"] = 9267,
		["Stealing Orgrimmar's Flame"] = 9324,
		["Stealing Thunder Bluff's Flame"] = 9325,
		["Stealing the Undercity's Flame"] = 9326,
		["A Thief's Reward"] = 	{
			["Festival Loremaster"] = 9339,
			["Festival Talespinner"] = 9365
		},
		["The Festival of Fire"] = 	{
			["Festival Loremaster"] = 9367,
			["Festival Talespinner"] = 9368
		},
		["Stealing Stormwind's Flame"] = 9330,
		["Stealing Ironforge's Flame"] = 9331,
		["Stealing Darnassus's Flame"] = 9332,
		["Establishing New Outposts"] = 9664,
		["Bolstering Our Defenses"] = 9665,
		["Treasure of the Timeless One"] = 8745,
		["Elune's Candle"] = 8862,
		["Festival Dumplings"] = 8863,
		["Festive Lunar Dresses"] = 8864,
		["Festive Lunar Pant Suits"] = 8865,
		["Elune's Blessing"] = 8868,
		["Valadar Starsong"] = 8883,
		["Small Rockets"] = 8876,
		["Firework Launcher"] = 8877,
		["Festive Recipes"] = 8878,
		["Large Rockets"] = 8879,
		["Cluster Rockets"] = 8880,
		["Large Cluster Rockets"] = 8881,
		["Cluster Launcher"] = 8882,
		["Dearest Colara,"] = 	{
			["Colara Dean"] = 		{
				["Oh, isn't that sweet! This is the first time he's ever sent me something. Do it has a ring to it. Oh, but I'm getting ahead of myself. Thank you."] = 8897,
				["Tormek? Oh yes, I do remember him. He had quite a nice beard and smile He had quite a nice beard and smile underneath. Ah, I can't believe he remembered me!"] = 8898,
				["I've never received something like this before. How lovely! I've never received something like this before. How lovely!"] = 8899
			}
		},
		["Dearest Elenia,"] = 	{
			["Elenia Haydon"] = 		{
				["You wouldn't expect an orc to be so eloquent. Of course, we never really had had a chance to know them before now. Thank you for bringing this to me."] = 8900,
				["What kind words Temma writes for me. But, as much as his words move me, receive these thoughts of his in person. I could not bear to break his heart."] = 8901,
				["This brings back memories from a lifetime ago, $N. Elenia Tor. That was going to I doubt he'd even see Elenia in me. Only cold flesh and a dead heart..."] = 8902
			}
		},
		["Dangerous Love"] = 	{
			["Aristan Mottar"] = 8903,
			["Fenstad Argyle"] = 8904
		},
		["Morgan's Discovery"] = 9025,
		["The Source Revealed"] = 8984,
		["Zinge's Assessment"] = 8980,
		["The Horde Needs Peacebloom!"] = 8549,
		["The Horde Needs More Peacebloom!"] = 8550,
		["The Horde Needs Firebloom!"] = 8580,
		["The Horde Needs More Firebloom!"] = 8581,
		["The Horde Needs Heavy Leather!"] = 8588,
		["The Horde Needs More Heavy Leather!"] = 8589,
		["The Horde Needs Wool Bandages!"] = 8604,
		["The Horde Needs More Wool Bandages!"] = 8605,
		["The Horde Needs Your Help!"] = 8792,
		["Five Signets for War Supplies"] = 	{
			["Warlord Gorchuk"] = 8851,
			["Field Marshal Snowfall"] = 8846
		},
		["Ten Signets for War Supplies"] = 	{
			["Warlord Gorchuk"] = 8852,
			["Field Marshal Snowfall"] = 8847
		},
		["Fifteen Signets for War Supplies"] = 	{
			["Warlord Gorchuk"] = 8853,
			["Field Marshal Snowfall"] = 8848
		},
		["Twenty Signets for War Supplies"] = 	{
			["Warlord Gorchuk"] = 8854,
			["Field Marshal Snowfall"] = 8849
		},
		["Thirty Signets for War Supplies"] = 	{
			["Warlord Gorchuk"] = 8855,
			["Field Marshal Snowfall"] = 8850
		},
		["Investigate the Scourge of Ironforge"] = 9261,
		["Investigate the Scourge of Thunder Bluff"] = 9264,
		["Investigate the Scourge of Orgrimmar"] = 9263,
		["Investigate the Scourge of Darnassus"] = 9262,
		["Argent Dawn Gloves"] = 	{
			["Argent Quartermaster"] = 9094,
			["Argent Outfitter"] = 9333
		},
		["Consecrated Sharpening Stones"] = 	{
			["Argent Quartermaster"] = 9317,
			["Argent Outfitter"] = 9335
		},
		["Blessed Wizard Oil"] = 	{
			["Argent Quartermaster"] = 9318,
			["Argent Outfitter"] = 9334
		},
		["Major Healing Potion"] = 	{
			["Argent Quartermaster"] = 9321,
			["Argent Outfitter"] = 9336
		},
		["Major Mana Potion"] = 	{
			["Argent Quartermaster"] = 9337,
			["Argent Outfitter"] = 9320
		},
		["Tabard of the Argent Dawn"] = 	{
			["Argent Quartermaster"] = 9341,
			["Argent Outfitter"] = 9343
		},
		["The Alliance Needs Copper Bars!"] = 8492,
		["The Alliance Needs More Copper Bars!"] = 8493,
		["The Alliance Needs Iron Bars!"] = 8494,
		["The Alliance Needs More Iron Bars!"] = 8495,
		["The Alliance Needs Thorium Bars!"] = 8499,
		["The Alliance Needs More Thorium Bars!"] = 8500,
		["The Alliance Needs Stranglekelp!"] = 8503,
		["The Alliance Needs More Stranglekelp!"] = 8504,
		["The Alliance Needs Purple Lotus!"] = 8505,
		["The Alliance Needs More Purple Lotus!"] = 8506,
		["The Alliance Needs Arthas' Tears!"] = 8509,
		["The Alliance Needs More Arthas' Tears!"] = 8510,
		["The Alliance Needs Light Leather!"] = 8511,
		["The Alliance Needs More Light Leather!"] = 8512,
		["The Alliance Needs Medium Leather!"] = 8513,
		["The Alliance Needs More Medium Leather!"] = 8514,
		["The Alliance Needs Thick Leather!"] = 8515,
		["The Alliance Needs More Thick Leather!"] = 8516,
		["The Alliance Needs Linen Bandages!"] = 8517,
		["The Alliance Needs More Linen Bandages!"] = 8518,
		["The Alliance Needs Silk Bandages!"] = 8520,
		["The Alliance Needs More Silk Bandages!"] = 8521,
		["The Alliance Needs Runecloth Bandages!"] = 8522,
		["The Alliance Needs More Runecloth Bandages!"] = 8523,
		["The Alliance Needs Rainbow Fin Albacore!"] = 8524,
		["The Alliance Needs More Rainbow Fin Albacore!"] = 8525,
		["The Alliance Needs Roast Raptor!"] = 8526,
		["The Alliance Needs More Roast Raptor!"] = 8527,
		["The Alliance Needs Spotted Yellowtail!"] = 8528,
		["The Alliance Needs More Spotted Yellowtail!"] = 8529,
		["The Alliance Needs Your Help!"] = 8795,
		["The Horde Needs Copper Bars!"] = 8532,
		["The Horde Needs More Copper Bars!"] = 8533,
		["The Horde Needs Tin Bars!"] = 8542,
		["The Horde Needs More Tin Bars!"] = 8543,
		["The Horde Needs Mithril Bars!"] = 8545,
		["The Horde Needs More Mithril Bars!"] = 8546,
		["The Horde Needs Purple Lotus!"] = 8582,
		["The Horde Needs More Purple Lotus!"] = 8583,
		["The Horde Needs Thick Leather!"] = 8590,
		["The Horde Needs More Thick Leather!"] = 8591,
		["The Horde Needs Rugged Leather!"] = 8600,
		["The Horde Needs More Rugged Leather!"] = 8601,
		["The Horde Needs Mageweave Bandages!"] = 8607,
		["The Horde Needs More Mageweave Bandages!"] = 8608,
		["The Horde Needs Runecloth Bandages!"] = 8609,
		["The Horde Needs More Runecloth Bandages!"] = 8610,
		["The Horde Needs Lean Wolf Steaks!"] = 8611,
		["The Horde Needs More Lean Wolf Steaks!"] = 8612,
		["The Horde Needs Spotted Yellowtail!"] = 8613,
		["The Horde Needs More Spotted Yellowtail!"] = 8614,
		["The Horde Needs Baked Salmon!"] = 8615,
		["The Horde Needs More Baked Salmon!"] = 8616,
		["Light's Hope Chapel"] = 9154,
		["Letter from the Front"] = 9295,
		["Note from the Front"] = 9299,
		["Page from the Front"] = 9300,
		["Envelope from the Front"] = 9301,
		["Missive from the Front"] = 9302,
		["Document from the Front"] = 9304,
		["A Light in Dark Places"] = 	{
			["Festival Flamekeeper"] = 		{
				["Your essence sings with the energy of the flames you found, $n. The fire you glowing bottle.> Ah! Here we are. May this light your path, no matter where you tread."] = 9319,
				["You have proven that you are not entirely useless, mortal. You have proven that you are not entirely useless, mortal."] = 9386
			}
		},
		["Wild Fires in Kalimdor"] = 9322,
		["Wild Fires in the Eastern Kingdoms"] = 9323,
		["Flickering Flames in Kalimdor"] = 9388,
		["Flickering Flames in the Eastern Kingdoms"] = 9389,
		["Finkle Einhorn, At Your Service!"] = 5047,
		["Cap of the Scarlet Savant"] = 5063,
		["Leggings of Arcana"] = 5067,
		["Breastplate of Bloodthirst"] = 5068,
		["Hot Fiery Death"] = 5103,
		["Fiery Plate Gauntlets"] = 5124,
		["Twisted Evils"] = 7028,
		["Staghelm's Requiem"] = 7365,
		["Staghelm's Mojo Jamboree"] = 7425,
		["Find the Lost Guards"] = 37,
		["Discover Rolf's Fate"] = 45,
		["A Watchful Eye"] = 94,
		["Sven's Revenge"] = 95,
		["Captain Sander's Hidden Treasure"] = 	{
			["Captain's Footlocker"] = 136,
			["Broken Barrel"] = 138,
			["Old Jug"] = 139,
			["Locked Chest"] = 140
		},
		["Bookie Herod"] = 200,
		["A Daughter's Love"] = 231,
		["Looking Further"] = 248,
		["Digging Through the Dirt"] = 254,
		["Until Death Do Us Part"] = 264,
		["Reclaiming Goods"] = 281,
		["The Search Continues"] = 284,
		["Search More Hovels"] = 285,
		["Lifting the Curse"] = 290,
		["Bitter Rivals"] = 	{
			["Unguarded Thunderbrew ale barrel"] = 310,
			["Unguarded Thunder Ale Barrel"] = 310
		},
		["Lightforge Iron"] = 321,
		["The Hidden Key"] = 328,
		["Guarded Thunderbrew Barrel"] = 	{
			["Guarded Thunderbrew ale barrel"] = 403,
			["Guarded Thunder Ale Barrel"] = 403
		},
		["The Dormant Shade"] = 410,
		["The Lost Pilot"] = 419,
		["Candles of Beckoning"] = 431,
		["The Decrepit Ferry"] = 438,
		["Resting in Pieces"] = 460,
		["The Hidden Niche"] = 461,
		["Nek'rosh's Gambit"] = 465,
		["Border Crossings"] = 477,
		["Bloodscalp Clan Heads"] = 584,
		["Speaking with Nezzliok"] = 585,
		["Speaking with Gan'zulah"] = 586,
		["Enticing Negolash"] = 619,
		["Cortello's Riddle"] = 	{
			["A Soggy Scroll"] = 624,
			["Musty Scroll"] = 625,
			["Cortello's Treasure"] = 626
		},
		["Crystal in the Mountains"] = 635,
		["The Princess Trapped"] = 642,
		["Stones of Binding"] = 651,
		["Breaking the Keystone"] = 652,
		["Summoning the Princess"] = 656,
		["Find Agmond"] = 738,
		["Seal of the Earth"] = 779,
		["Flawed Power Stone"] = 	{
			["Flawed Power Stone"] = 926,
			["Flawed Power Stones"] = 926
		},
		["Planting the Heart"] = 941,
		["The Master's Glaive"] = 944,
		["The Twilight Camp"] = 949,
		["Buzzbox 827"] = 983,
		["Corrupted Windblossom"] = 996,
		["Buzzbox 411"] = 1001,
		["Buzzbox 323"] = 1002,
		["Buzzbox 525"] = 1003,
		["The Den"] = 1089,
		["Keeping Pace"] = 1190,
		["A Broken Trap"] = 1193,
		["Galen's Escape"] = 1393,
		["Essence of the Exile"] = 1714,
		["The Sprouted Fronds"] = 2399,
		["Corrupted Songflower"] = 2523,
		["The Super Egg-O-Matic"] = 2741,
		["Rin'ji is Trapped!"] = 2742,
		["The Ruins of Solarsal "] = 2866,
		["The Stave of Equinex"] = 2879,
		["Cuergo's Gold"] = 2882,
		["Woodpaw Investigation"] = 2902,
		["Grime-Encrusted Ring"] = 2945,
		["Seeing What Happens"] = 2946,
		["The Sparklematic 5200!"] = 	{
			["The Sparklematic 5200"] = 		{
				["You insert the grime-encrusted item and three silver coins into the Sparklematic 5200. The machine metal frame of the beast creaks and groans as it lurches from side to side..."] = 2951,
				["As quickly as it started, the Sparklematic 5200 comes to an abrupt halt. A simple box. Well, there is one way to find out if it cleaned the item or not..."] = 2952
			}
		},
		["More Sparklematic Action"] = 2953,
		["The Stone Watcher"] = 2954,
		["Release Them"] = 3372,
		["The Essence of Eranikus"] = 	{
			["Essence Font"] = 3373,
			["Itharius"] = 3374
		},
		["Into the Depths"] = 3446,
		["Secret of the Circle"] = 3447,
		["Trinkets..."] = 3481,
		["A Grave Situation"] = 3913,
		["The Spectral Chalice"] = 4083,
		["Corrupted Whipper Root"] = 4117,
		["Corrupted Night Dragon"] = 4119,
		["The Woodpaw Gnolls"] = 4131,
		["The Writhing Deep"] = 4135,
		["Crystal Spire"] = 4386,
		["Crystal Charge"] = 4385,
		["Crystal Yield"] = 4384,
		["Crystal Force"] = 4382,
		["Crystal Ward"] = 4383,
		["Crystal Restore"] = 4381,
		["Caught!"] = 4449,
		["The Key to Freedom"] = 4451,
		["Testing for Impurities - Un'Goro Crater"] = 4561,
		["Testing for Corruption - Felwood"] = 4661,
		["As Water Cascades"] = 4812,
		["Mrs. Dalson's Diary"] = 5058,
		["Locked Away"] = 	{
			["Outhouse"] = 5059,
			["Locked Cabinet"] = 5060
		},
		["Falling to Corruption"] = 5084,
		["Catalogue of the Wayward"] = 5164,
		["Target: Felstone Field"] = 	{
			["Scourge Cauldron"] = 		{
				["The key taken from Cauldron Lord Bilemaw is a perfect fit in unlocking the access under, allowing you to draw a sample for High Priestess MacDonnell back at Chillwind Point."] = 5216,
				["The key taken from Cauldron Lord Bilemaw is a perfect fit in unlocking the access under, allowing you to draw a sample for Shadow Priestess Vandis back at the Bulwark."] = 5229
			}
		},
		["Target: Dalson's Tears"] = 	{
			["Scourge Cauldron"] = 		{
				["The macabre key found on the cauldron lord easily slides into a keyhole and then under, allowing you to draw a sample for High Priestess MacDonnell back at Chillwind Point."] = 5219,
				["The skeletal key found on the cauldron lord easily slides into a keyhole and then under, allowing you to draw a sample for Shadow Priestess Vandis back at the Bulwark."] = 5231
			}
		},
		["Target: Writhing Haunt"] = 	{
			["Scourge Cauldron"] = 		{
				["The cauldron lord's key unlocks the access panel to this cauldron and then disappears, much under, allowing you to draw a sample for High Priestess MacDonnell back at Chillwind Point."] = 5222,
				["The cauldron lord's key unlocks the access panel to this cauldron and then disappears, much under, allowing you to draw a sample for Shadow Priestess Vandis back at the Bulwark."] = 5233
			}
		},
		["Target: Gahrron's Withering"] = 	{
			["Scourge Cauldron"] = 		{
				["Cauldron Lord Soulwrath's key disintegrates as it touches the lock on the access panel at under, allowing you to draw a sample for High Priestess MacDonnell back at Chillwind Point."] = 5225,
				["Cauldron Lord Soulwrath's key disintegrates as it touches the lock on the access panel at under, allowing you to draw a sample for Shadow Priestess Vandis back at the Bulwark."] = 5235
			}
		},
		["The Argent Hold"] = 5265,
		["Hidden Treasures"] = 5942,
		["Hameya's Plea"] = 6024,
		["Claim Rackmore's Treasure!"] = 6161,
		["The Treasure of the Shen'dralar"] = 7462,
		["A Hero's Reward"] = 7486,
		["Blackhand's Command"] = 7761,
		["Your Fortune Awaits You..."] = 	{
			["Mysterious Eastvale Haystack"] = 7937,
			["Mysterious Deadmines Chest"] = 7938,
			["Mysterious Wailing Caverns Chest"] = 7944,
			["Mysterious Tree Stump"] = 7945
		},
		["Long Forgotten Memories"] = 8305,
		["Desert Recipe"] = 8307,
		["Rotten Eggs"] = 	{
			["Beer Keg"] = 8322,
			["Doodad_BeerKeg101"] = 8322,
			["Keg"] = 8322
		},
		["Gahrron's Withering Cauldron"] = 5227,
		["Writhing Haunt Cauldron"] = 5224,
		["Felstone Field Cauldron"] = 5218,
		["Dalson's Tears Cauldron"] = 5221,
		["Stewvul, Ex-B.F.F."] = 8577,
		["Draconic for Dummies"] = 8597,
		["Bang a Gong!"] = 8743,
		["A Carefully Wrapped Present"] = 8744,
		["The Hero of the Day"] = 8763,
		["A Gently Shaken Gift"] = 8767,
		["A Gaily Wrapped Present"] = 8768,
		["A Ticking Present"] = 8769,
		["A Festive Gift"] = 8803,
		["A Bubbling Cauldron"] = 9029,
		["Back to Billy"] = 84,
		["Lost Necklace"] = 85,
		["Ghost Hair Thread"] = 149,
		["Keeper of the Flame"] = 103,
		["The Coastal Menace"] = 104,
		["The Coast Isn't Clear"] = 152,
		["CLUCK!"] = 3861,
		["Blisters on The Land"] = 275,
		["Tramping Paws"] = 276,
		["Fire Taboo"] = 277,
		["The Greenwarden"] = 463,
		["Package for Thurman"] = 334,
		["You Have Served Us Well"] = 397,
		["Draenethyst Crystals"] = 1389,
		["Noboru the Cudgel"] = 1392,
		["The Woodland Protector"] = 	{
			["Tarindrella"] = 		{
				["I see you found me, young $r. Melithar is a wise druid to have sent see you found me, young $r. Melithar is a wise druid to have sent you."] = 458,
				["Your service to the creatures of Shadowglen is worthy of reward, $N. You confirmed my fears, knowledgeable druid, Athridas Bearmantle. He shares our concern for the well being of the forest."] = 459
			}
		},
		["Zenn's Bidding"] = 488,
		["Seek Redemption!"] = 489,
		["The Crown of Will"] = 	{
			["Sharlindra"] = 521,
			["Melisara"] = 		{
				["You were sent by Shalindra? Very well then, you'll find I don't waste much time chatter. Mug'Thol is an irritant, and we will deal with him quickly, thoroughly, and without incident."] = 495,
				["The snow blooms red with the blood of the ogres, but we cannot cease our and numbers of the Crushridge have been crushed and ground into the dirt and snow."] = 518,
				["...and I thought ogres smelled foul enough to begin with. When you bring me Mug'Thol's head, pikes above Alterac. A fitting monument to those who go against the Dark Lady's wishes."] = 519,
				["You have done your duty well, $n. Mug'Thol's head shall adorn the highest peak of of Alterac, and the Deathguard will sweep the remnants of the Crushridge into the ground."] = 520
			}
		},
		["Into The Scarlet Monastery"] = 1048,
		["The Power to Destroy..."] = 5725,
		["The Call to Command"] = 6144,
		["An Unholy Alliance"] = 	{
			["Varimathras"] = 		{
				["Good. Well done, $c. Now that Malcin is dead, we can at least know that the Scourges influence within the Downs, I am sure we will discover their plots soon enough."] = 6521,
				["I recognize the insignia on this scroll, $N. You found this on that crone who trying to gain a foothold in Kalimdor, then it is up to us to act."] = 6522
			}
		},
		["The Captain's Chest"] = 614,
		["Facing Negolash"] = 618,
		["The Monogrammed Sash"] = 620,
		["Avast Ye, Scallywag"] = 1036,
		["Avast Ye, Admiral!"] = 4621,
		["Dressing the Part"] = 9272,
		["Land Ho!"] = 663,
		["Death From Below"] = 667,
		["Tremors of the Earth"] = 	{
			["Garek"] = 		{
				["No longer will the Kirin Tor need to worry over the prisoners of Lethlor. I I will return to report success to my master. Krasus will no doubt be pleased."] = 717,
				["Good tidings you bring bearing the Sign, $n. The Sign of the Earth was created of Angor Fortress to bind two of Deathwing's ruthless lieutenants, the twins Blacklash and Hematus."] = 732
			}
		},
		["Tribes at War"] = 878,
		["Spirit of the Wind"] = 889,
		["Agamaggan's Strength"] = 5042,
		["Agamaggan's Agility"] = 5043,
		["Wisdom of Agamaggan"] = 5044,
		["Rising Spirit"] = 5045,
		["Razorhide"] = 5046,
		["Blood Shards of Agamaggan"] = 5052,
		["Ignition"] = 858,
		["Therylune's Escape"] = 945,
		["Onu"] = 948,
		["Return to Onu"] = 950,
		["Mathystra Relics"] = 951,
		["Grove of the Ancients"] = 952,
		["Onu is meditating"] = 	{
			["Onu"] = 		{
				["I am meditating on your task, $N. Meditating on reasons why the Twilight's Hammer and me through the bowl. If you have lost your phial of scrying, then here is another."] = 960,
				["The finding of Twilight's Hammer cultists is troubling. I must meditate on their intentions... When you you require a phial of scrying in order to create a bowl, then...here is another."] = 961
			}
		},
		["The Branch of Cenarius"] = 1031,
		["Satyr Slaying!"] = 1032,
		["Vile Satyr! Dryads in Danger!"] = 1021,
		["Journey to Stonetalon Peak"] = 1056,
		["Cenarius' Legacy"] = 1087,
		["Ordanus"] = 1088,
		["Fiora Longears"] = 1132,
		["Highperch Venom"] = 1135,
		["Overlord Mok'Morokk's Concern"] = 1166,
		["The Brood of Onyxia"] = 	{
			["Overlord Mok'Morokk"] = 1170,
			["Draz'Zilb"] = 		{
				["That lazy coward! Mok'Morokk displayed strength when Rexxar was our leader. But soon after Rexxar's departure does not serve his people but rather expects us to serve him. Something must be done."] = 1171,
				["Splendid! It will be sometime before Onyxia can produce more eggs. On behalf of my people, we appoint a new leader to return us to our proper home in the south."] = 1172
			}
		},
		["Identifying the Brood"] = 1169,
		["Challenge Overlord Mok'Morokk"] = 1173,
		["Army of the Black Dragon"] = 1168,
		["Hungry!"] = 1177,
		["Devouring Plague"] = 	{
			["Aelthalyste"] = 		{
				["I would teach you Devouring Plague if you feel you are prepared, $N. A spell it will aid you in your coming battles. Practice with it--there will be tests later."] = 5644,
				["Good, you've returned, and not a moment too late. We have great things to discuss, discuss, $N. Your abilities are growing stronger, and we must make sure you are ready."] = 5646
			}
		},
		["Touch of Weakness"] = 	{
			["Aelthalyste"] = 		{
				["Ah, young $c, I am glad you have returned here. I would teach you a would teach you a lesson you would do well to not forget. Are you prepared?"] = 5658,
				["Ah, good, another has arrived. Time may not matter to me, but to you it you. You simply must prove your worth. Do that, and you shall be greatly rewarded."] = 5660
			}
		},
		["Gelkis Alliance"] = 1368,
		["Stealing Supplies"] = 1370,
		["Ongeku"] = 1373,
		["Khan Jehn"] = 1374,
		["Khan Hratha"] = 	{
			["Uthek the Wise"] = 1380,
			["Warug"] = 1381
		},
		["Strange Alliance"] = 1382,
		["Raid on the Kolkar"] = 1384,
		["Magram Alliance"] = 1367,
		["Broken Tears"] = 1369,
		["Gizmo for Warug"] = 1371,
		["Khan Shaka"] = 1375,
		["Brutal Politics"] = 1385,
		["Assault on the Kolkar"] = 1386,
		["Tooga's Quest"] = 1560,
		["Lord Banehollow"] = 7623,
		["Ulathek the Traitor"] = 7624,
		["To Serve Kum'isha"] = 2521,
		["Kum'isha's Endeavors"] = 2522,
		["Everything Counts In Large Amounts"] = 3501,
		["One Draenei's Junk..."] = 3502,
		["Snickerfang Jowls"] = 2581,
		["Rage of Ages"] = 2582,
		["A Boar's Vitality"] = 2583,
		["Spirit of the Boar"] = 2584,
		["The Decisive Striker"] = 2585,
		["Salt of the Scorpok"] = 2586,
		["The Basilisk's Bite"] = 2601,
		["Infallible Mind"] = 2602,
		["Vulture's Vigor"] = 2603,
		["Spiritual Domination"] = 2604,
		["Wandering Shay"] = 2845,
		["Find OOX-17/TN!"] = 351,
		["A Sticky Situation"] = 77,
		["Find OOX-09/HL!"] = 485,
		["Find OOX-22/FE!"] = 2766,
		["A Meeting with the Master"] = 3381,
		["Meeting with the Master"] = 3503,
		["Magecraft"] = 8250,
		["The Hunter's Charm"] = 8151,
		["Courser Antlers"] = 8153,
		["Wavethrashing"] = 8231,
		["The Green Drake"] = 8232,
		["Cenarion Aid"] = 8254,
		["Of Coursers We Know"] = 8255,
		["The Ichor of Undeath"] = 8256,
		["Hilary's Necklace"] = 3741,
		["Dadanga is Hungry!"] = 5150,
		["A Taste of Flame"] = 	{
			["Cyrus Therepentous"] = 		{
				["<Cyrus examines the molt.> You have proven that you are not entirely useless, mortal. <Cyrus examines the molt.> You have proven that you are not entirely useless, mortal."] = 4022,
				["<Cyrus snatches the fiery essence from your hands.> YES! Take your prize and be gone. Leave my fiery essence from your hands.> YES! Take your prize and be gone. Leave my sight at once!"] = 4024
			}
		},
		["The Love Potion"] = 4201,
		["Libram of Rumination"] = 4463,
		["Libram of Constitution"] = 4481,
		["Libram of Tenacity"] = 4482,
		["Libram of Resilience"] = 4483,
		["Libram of Voracity"] = 4484,
		["Troubled Spirits of Kel'Theril"] = 5245,
		["Fragments of the Past"] = 	{
			["Aurora Skycaller"] = 		{
				["The pages have gone untouched for many many years... The pages have gone untouched for many many years..."] = 5246,
				["Using these elements, I can fuse the fragments together... to hopefully what they once were. Using these elements, I can fuse the fragments together... to hopefully what they once were."] = 5247
			}
		},
		["Emberstrife"] = 6570,
		["The Test of Skulls, Scryer"] = 6582,
		["The Test of Skulls, Somnus"] = 6583,
		["The Test of Skulls, Chronalis"] = 6584,
		["The Test of Skulls, Axtroz"] = 6585,
		["Tormented By the Past"] = 5248,
		["Urok Doomhowl"] = 4867,
		["Lorax's Tale"] = 5126,
		["The Demon Forge"] = 5127,
		["Little Pamela"] = 5142,
		["Pamela's Doll"] = 5149,
		["Sister Pamela"] = 5601,
		["The Battle of Darrowshire"] = 5721,
		["The Matron Protectorate"] = 5160,
		["Wrath of the Blue Flight"] = 	{
			["Haleh"] = 5161,
			["Jeziba"] = 5162
		},
		["The Dragon's Eye"] = 6501,
		["Drakefire Amulet"] = 6502,
		["Breastplate of the Chromatic Flight"] = 5166,
		["Legplates of the Chromatic Defier"] = 5167,
		["Timbermaw Ally"] = 	{
			["Grazle"] = 		{
				["We suffer much from the events of the past. Thank you for what you have of the past. Thank you for what you have done to help protect the Timbermaw."] = 6131,
				["We suffer much from the events of the past. Thank you for what you have protect the Timbermaw. As a sign of our growing friendship, please accept this humble offering."] = 8460
			}
		},
		["Deadwood of the North"] = 	{
			["Grazle"] = 6221,
			["Nafien"] = 8461
		},
		["Feathers for Grazle"] = 8466,
		["The Root of All Evil"] = 8481,
		["Winterfall Activity"] = 	{
			["Salfa"] = 		{
				["Thank you for what you have done. Please continue to help us, $N. We have continue to help us, $N. We have very few allies on which to call upon."] = 6241,
				["Thank you for what you have done, as saddening as it is. Accept this as the threats against my tribe would surely be too much for us to handle alone."] = 8464
			}
		},
		["Speak to Salfa"] = 8465,
		["Beads for Salfa"] = 8469,
		["Runecloth"] = 6031,
		["Sacred Cloth"] = 6032,
		["Deadwood Ritual Totem"] = 8470,
		["Winterfall Ritual Totem"] = 8471,
		["Seed of Life"] = 7066,
		["Shrouded in Nightmare"] = 8446,
		["Waking Legends"] = 8447,
		["Tyrande and Remulos"] = 8734,
		["The Nightmare's Corruption"] = 8735,
		["The Nightmare Manifests"] = 8736,
		["Elemental War"] = 6393,
		["Poisoned Water"] = 6804,
		["Stormers and Rumblers"] = 6805,
		["Eye of the Emberseer"] = 6821,
		["The Molten Core"] = 6822,
		["Agent of Hydraxis"] = 6823,
		["Hands of the Enemy"] = 6824,
		["Stolen Winter Veil Treats"] = 	{
			["The Abominable Greench"] = 7042,
			["Strange Snowman"] = 6963
		},
		["Corruption of Earth and Seed"] = 	{
			["Keeper Marandis"] = 7065,
			["Selendra"] = 7064
		},
		["Legends of Maraudon"] = 7044,
		["The Scepter of Celebras"] = 7046,
		["The Pariah's Instructions"] = 7067,
		["Jaina's Autograph"] = 558,
		["The Bough of the Eternals"] = 1479,
		["The Stonewrought Dam"] = 1558,
		["Spooky Lighthouse"] = 1687,
		["You Scream, I Scream..."] = 	{
			["Human Orphan"] = 4822,
			["Orcish Orphan"] = 915
		},
		["The Gordok Taste Test"] = 5528,
		["Unfinished Gordok Business"] = 7703,
		["Down at the Docks"] = 910,
		["Gateway to the Frontier"] = 911,
		["Cairne's Hoofprint"] = 925,
		["Lordaeron Throne Room"] = 1800,
		["What Niby Commands"] = 7601,
		["Flawless Fel Essence"] = 7602,
		["An Imp's Request"] = 8419,
		["Hot and Itchy"] = 8420,
		["The Wrong Stuff"] = 8421,
		["Trolls of a Feather"] = 8422,
		["Dreadsteed of Xoroth"] = 7631,
		["The Ancient Leaf"] = 7632,
		["An Introduction"] = 7633,
		["Stave of the Ancients"] = 7636,
		["A Proper String"] = 7635,
		["Ancient Sinew Wrapped Lamina"] = 7634,
		["Ancient Equine Spirit"] = 7643,
		["Judgment and Redemption"] = 7647,
		["Lard Lost His Lunch"] = 7840,
		["Strength of Mount Mugamba"] = 	{
			["Jin'rokh the Breaker"] = 		{
				["Hail, $c. I am Jin'rokh the Breaker, troll of Mugamba. We of the Zandalar tribe of Mount Mugamba flow through your being. Be empowered as you strike down our enemies!"] = 8041,
				["Our paths will cross again, $c. Our paths will cross again, $c."] = 8042,
				["Use your newfound strength to destroy the Gurubashi! Use your newfound strength to destroy the Gurubashi!"] = 8043
			}
		},
		["The Rage of Mugamba"] = 8044,
		["The Heathen's Brand"] = 	{
			["Jin'rokh the Breaker"] = 		{
				["Know this, heathen: A catastrophe has brought us together. Your pagan ways are neither understood to Zandalar. Continue to serve our people and I will amplify the power of the brand."] = 8045,
				["Do what you must to defeat our enemies, $c. Even if it means channeling the you must to defeat our enemies, $c. Even if it means channeling the Light. <Jin'rokh shudders.>"] = 8046,
				["Our beliefs differ but our cause is righteous. Strike down our foes, noble $c. Our beliefs differ but our cause is righteous. Strike down our foes, noble $c."] = 8047
			}
		},
		["The Hero's Brand"] = 8048,
		["Paragons of Power: The Freethinker's Armguards"] = 8053,
		["Paragons of Power: The Freethinker's Belt"] = 8054,
		["Paragons of Power: The Freethinker's Breastplate"] = 8055,
		["Paragons of Power: The Vindicator's Armguards"] = 8058,
		["Paragons of Power: The Vindicator's Belt"] = 8078,
		["Paragons of Power: The Vindicator's Breastplate"] = 8079,
		["Rare Fish - Keefer's Angelfish"] = 8221,
		["Rare Fish - Dezian Queenfish"] = 8224,
		["Rare Fish - Brownell's Blue Striped Racer"] = 8225,
		["Anachronos"] = 8303,
		["A Pawn on the Eternal Board"] = 8519,
		["The Charge of the Dragonflights"] = 8555,
		["The Wrath of Neptulon"] = 8729,
		["Nefarius's Corruption"] = 8730,
		["The Might of Kalimdor"] = 8742,
		["The Path of the Protector"] = 	{
			["Anachronos"] = 		{
				["Impressive, little one. You have gone through much trouble to gain the favor of the you have chosen your path, you will have no recourse should you change your mind."] = 8747,
				["Your rise amongst the rank of the Brood is most impressive, $n. May you never Brood is most impressive, $n. May you never stray from the path of the protector!"] = 8748
			}
		},
		["The Protector of Kalimdor"] = 8751,
		["The Path of the Conqueror"] = 	{
			["Anachronos"] = 		{
				["Impressive, little one. You have gone through much trouble to gain the favor of the you have chosen your path, you will have no recourse should you change your mind."] = 8752,
				["Your rise amongst the rank of the Brood is most impressive, $n. May you never Brood is most impressive, $n. May you never stray from the path of the conqueror!"] = 8753
			}
		},
		["The Qiraji Conqueror"] = 8756,
		["The Path of the Invoker"] = 	{
			["Anachronos"] = 		{
				["Impressive, little one. You have gone through much trouble to gain the favor of the you have chosen your path, you will have no recourse should you change your mind."] = 8757,
				["Your rise amongst the rank of the Brood is most impressive, $n. May you never Brood is most impressive, $n. May you never stray from the path of the invoker!"] = 8758
			}
		},
		["The Grand Invoker"] = 8761,
		["The Changing of Paths - Protector No More"] = 8764,
		["The Changing of Paths - Invoker No More"] = 8765,
		["The Changing of Paths - Conqueror No More"] = 8766,
		["The Savior of Kalimdor"] = 8802,
		["Frame of Atiesh"] = 9250,
		["Atiesh, the Befouled Greatstaff"] = 9251,
		["Atiesh, Greatstaff of the Guardian"] = 9257,
		["Hallow's End Treats for Spoops!"] = 8312,
		["Hallow's End Treats for Jesper!"] = 8311,
		["Mea Culpa, Lord Valthalak"] = 8995,
		["Speak to Nafien"] = 8462,
		["Feathers for Nafien"] = 8467,
		["Eranikus, Tyrant of the Dream"] = 8733,
		["Gift Giving"] = 8981,
		["Coming of Age"] = 92460,
		["Aggressive Encroachment"] = 92473,
		["Foul Matriarch"] = 92470,
		["Aetheen of the Gales"] = 92471,
		["Return to Rorian"] = 92469,
		["The Gift of Skysight"] = 92598,
		["The Cirrusfly Queen"] = 92463,
		["Harvesting Windstones"] = 93552,
		["Al'Aketh Thugs"] = 92544,
		["Welcome to Shen'dar Village"] = 	{
			["Constable Aonda"] = 		{
				["Checked in with Illaya then? Great. Lots of tension between the High Order and the and I've got a bandit problem that I was hoping you could help me with."] = 92514,
				["Checked in with Rathiril then? Great. Lots of tension between the High Order and the a few things that need doing, if you are game for a bit of work?"] = 93461
			}
		},
		["The Windshapers"] = 92595,
		["The Next Step"] = 92472,
		["Camping 101: Cooking"] = 	{
			["Zerril Softbreeze"] = 96646,
			["Tomas"] = 96626,
			["Zarrin"] = 96634,
			["Pyall Silentstride"] = 96661,
			["William Pickman"] = 96658,
			["Gremlock Pilsnor"] = 96629,
			["Cook Torka"] = 96655
		},
		["The Great Outdoors"] = 	{
			["Raan Wildwind"] = 96101,
			["Сэм Сарсапарилла"] = 95998,
			["Eleanor Shackleton"] = 96607,
			["Eric Brighthammer"] = 96608,
			["Kaga Wildhoof"] = 96605,
			["Lyreena Duskblade"] = 96606,
			["Brakk"] = 96604
		},
		["The Adventurer"] = 	{
			["Raan Wildwind"] = 96638,
			["Сэм Сарсапарилла"] = 96627,
			["Eric Brighthammer"] = 96628,
			["Eleanor Shackleton"] = 96656,
			["Kaga Wildhoof"] = 96659,
			["Lyreena Duskblade"] = 96630,
			["Brakk"] = 96652
		},
		["Agitators"] = 92465,
		["Elemental Unrest"] = 92464,
		["Nibbled-On Book"] = 91741,
		["Legging It"] = 96821,
		["An Enticing Offer"] = 99130,
		["Forgotten Loa Idols"] = 97225,
		["Bloodtalon Matriarch"] = 97223,
		["Book Return"] = 91775,
		["Shhh! We're Hunting Kobolds"] = 91772,
		["Camping 101: Leatherworking"] = 	{
			["Adele Fielder"] = 97922,
			["Nadyia Maneweaver"] = 97946,
			["Shelene Rhobart"] = 97958,
			["Chaw Stronghide"] = 97934,
			["Karolek"] = 97906,
			["Gretta Finespindle"] = 96031,
			["Indari Sunseam"] = 97969
		},
		["The Goddess Provides"] = 97979,
		["Prompt Potion Runner"] = 97891,
		["Reading Room"] = 97234,
		["Rare Books"] = 91777,
		["Unending Torment"] = 	{
			["Master Apothecary Faranell"] = 		{
				["Not cooperating, eh? Excellent. I always love a challenge. Not cooperating, eh? Excellent. I always love a challenge."] = 97290,
				["Oho! I believe I know this head. A cruel joke by our Dark Lady. A Dark Lady. A delicious one at that. I think I have a use for this."] = 97288,
				["Excellent. We'll let his flesh simmer for awhile. Give him time to acclimate to his but we shall keep an eye on him. I have many plans for Othmar's future."] = 97292,
				["These will do nicely. We will see how much bravado our honored guest retains after see how much bravado our honored guest retains after he is subjected to my masterpiece."] = 97291
			},
			["Unfinished Abomination"] = 97289
		},
		["A Man About a Murloc"] = 99129,
		["Bottles and Baubles"] = 99143,
		["Camping 101: First Aid"] = 	{
			["Michelle Belle"] = 97919,
			["Nurse Neela"] = 97955,
			["Thamner Pol"] = 96047,
			["Byancie"] = 97942,
			["Vira Younghoof"] = 97931,
			["Rawrk"] = 97903,
			["Naleeia Tattermend"] = 97965
		},
		["A Token of Good Faith"] = 95803,
		["That Shadowvale Green Elixir"] = 95314,
		["Ukor's Lost Pack"] = 96876,
		["Wrongly Blamed, Justly Corrected"] = 97250,
		["Stormy Potential"] = 97282,
		["A Simmering Storm"] = 97281,
		["Threat from Below"] = 	{
			["Orgnil Soulscar"] = 		{
				["Ha! I could hear his body fall from here! Be proud of your kill today, your kill today, not many can claim they survived a fight with a sea giant."] = 99052,
				["Hopefully that sends them packing back to the north. I'll have some grunts keep an north. I'll have some grunts keep an eye out for any stragglers or funny business."] = 99051,
				["This banner and blade piece belong to the naga! They must have come down the a foothold here. The pressure from both directions would be too much for Razor Hill."] = 99049
			}
		},
		["Camping 101: Tailoring"] = 	{
			["Snang"] = 96102,
			["Uthrar Threx"] = 96057,
			["Bowen Brisboise"] = 97961,
			["Trianna"] = 97950,
			["Eldrin"] = 97925,
			["Taleen Shimmerthread"] = 97973
		},
		["It's All Fun and Games Until..."] = 98042,
		["The Big Picture"] = 91752,
		["Chakuyak"] = 96130,
		["Rascally Rodents"] = 91743,
		["The High Chieftain"] = 99082,
		["Discipline"] = 99134,
		["Camping 101: Fishing"] = 	{
			["Lee Brown"] = 97920,
			["Astaia"] = 97943,
			["Uthan Stillwater"] = 97932,
			["Clyde Kellen"] = 97956,
			["Lau'Tiki"] = 97904,
			["Paxton Ganter"] = 96050,
			["Fenn Fairweather"] = 97967
		},
		["Stop the Spread"] = 98299,
		["Watching the Roads"] = 95981,
		["Parts and Pieces"] = 97253,
		["Never Saddle on Quality"] = 95212,
		["Harmony in Balance"] = 92461,
		["Falling With Style"] = 92474,
		["Infestation Investigation"] = 92462,
		["Grund and Gozwin"] = 97277,
		["Among the Faithful"] = 92528,
		["Baited for Success"] = 99131,
		["The Criminal Element"] = 92517,
		["Pilfered Windstones"] = 93319,
		["Hippogryph Harrassment"] = 92516,
		["Rough Wolf Pelts"] = 91751,
		["Restocking the Larders"] = 92553,
		["A Last Request"] = 93927,
		["Havoc in the Highlands"] = 92550,
		["Meal Appeal"] = 97246,
		["Treacherous Cold"] = 99162,
		["Camping 101: Skinning"] = 	{
			["Helene Peltskinner"] = 97924,
			["Balthus Stoneflayer"] = 96056,
			["Mendalass Tattermend"] = 97971,
			["Radnaal Maneweaver"] = 97949,
			["Rand Rhobart"] = 97960,
			["Yonn Deepcut"] = 97936,
			["Thuwd"] = 97908
		},
		["Slimy Menace"] = 99128,
		["A Net Disaster"] = 99127,
		["Craftsman's Writ: Minor Recombobulator"] = 94232,
		["The Apothecary's Metaphysical Primer"] = 79095,
		["Bounty: Gnarlpine Furbolg"] = 490,
		["Rime's Wrath"] = 	{
			["Father Gavin"] = 		{
				["Light bless you, $c. Your efforts make this area much safer and hopefully will prevent you, $c. Your efforts make this area much safer and hopefully will prevent unnecessary deaths."] = 99161,
				["I wish we could have simply placated them. Unfortunately it was beyond my knowledge and them. Unfortunately it was beyond my knowledge and they were too dangerous to leave unchecked."] = 99160
			}
		},
		["Meddlesome Mages"] = 94411,
		["Archmage Theocritus' Research Journal"] = 79092,
		["The Way of the Hunter"] = 92482,
		["Camping 101: Herbalism"] = 	{
			["Faruza"] = 97957,
			["Komin Winterhoof"] = 97933,
			["Jandi"] = 97905,
			["Malorne Bladeleaf"] = 97944,
			["Herbalist Pomeroy"] = 97921,
			["Reyna Stonebranch"] = 96055,
			["Syriel Nightrain"] = 97968
		},
		["Follow That Kobold!"] = 91758,
		["Nip 'Em in the Bud"] = 96390,
		["Touring the Grounds"] = 91294,
		["Farsen's Watch"] = 96392,
		["A Visitor to Dun Morogh"] = 96408,
		["Downstream"] = 91733,
		["Book Inventory"] = 92124,
		["Sticks and Bones"] = 86784,
		["Mining Consultant"] = 91745,
		["Secure the Mountain"] = 	{
			["Mountaineer Gretchen"] = 		{
				["Ach, the fool... Thank ye for the help, $N. Guess we have our report. Ach, the fool... Thank ye for the help, $N. Guess we have our report."] = 98319,
				["Ol' Whitebeard sent ya, aye? I got his report, alright. This whole situation's a mess! Ol' Whitebeard sent ya, aye? I got his report, alright. This whole situation's a mess!"] = 98322
			},
			["Senir Whitebeard"] = 98323
		},
		["Good Steel"] = 91732,
		["Stolen Enchanting Supplies"] = 91725,
		["Making Repairs"] = 91316,
		["Underground Map"] = 96391,
		["Delicate Instruments"] = 	{
			["Hamish Bergwort"] = 		{
				["It seems like everything is working properly. Thank you, $N. It seems like everything is working properly. Thank you, $N."] = 91724,
				["Well done, my friend. Let me try my calibrations again... Well done, my friend. Let me try my calibrations again..."] = 91723
			}
		},
		["A Light in the Darkness"] = 98389,
		["The Cult of the Damned"] = 96897,
		["Seeking Refuge"] = 99144,
		["The Tarnished"] = 91317,
		["Archaic Rune"] = 98581,
		["A Lesson in Divinity"] = 	{
			["Tanis Alderwood"] = 		{
				["This is very kind of you, $c. Very kind indeed. This is very kind of you, $c. Very kind indeed."] = 94434,
				["You... you are a $c? Please, do not hurt me. I-I know I'm not supposed I have no quarrel with you or your order. Leave me be, I beg you!"] = 94427
			},
			["Deathguard Billmuth"] = 		{
				["Thank you for saving my friend,$N. I will take these plans back to my commander won't forget this, and I'll make sure others know of what you did here today."] = 94440,
				["So you'll help me, then? Good, good. I'll admit I'm not proud of resorting to... priests waved me away and you might be my friend's only chance. Please, help me."] = 94436
			},
			["Deathguard Falgan"] = 94438,
			["Danitha Morr"] = 		{
				["The Symbol of Life is only able to be used by a $c who is minds of our fellow Forsaken is well worth the effort. Go with the light, $N."] = 94441,
				["You have done well, $N. It was a small thing, but even small acts of people prosper once again. Take this symbol, you will need it for what comes next."] = 94435
			}
		},
		["Harvesting the Harvesters"] = 	{
			["Ozwin Ironsprocket"] = 		{
				["Thanks a bunch! I'll get to work on an escape plan. In the meantime, take a bunch! I'll get to work on an escape plan. In the meantime, take this!"] = 92909,
				["Here it is, $n! Should work great. Go give it a try! ...Me? No, I'll it a try! ...Me? No, I'll stay here. It's starting to feel like home, anyway."] = 92911,
				["What's this? What's this?"] = 92910
			}
		},
		["Rediscovering the Light"] = 90902,
		["Murloc Gills"] = 92744,
		["A Difficult Path"] = 98601,
		["Leonid's Letter"] = 98545,
		["Stolen Blasting Powder"] = 	{
			["Quarrymaster Thesten"] = 		{
				["<The $r turns pale as he sees the empty keg.> ...Where did you find this? <The $r turns pale as he sees the empty keg.> ...Where did you find this?"] = 95213,
				["That should be all the stolen powder. Thank you, $c. Please accept this reward, and... accept this reward, and... I'd appreciate if you didn't mention this little incident to anyone."] = 95214
			}
		},
		["Free the Hollows"] = 93172,
		["The Forest's Bounty"] = 93160,
		["The Strange Hermit"] = 93159,
		["A Frightened Request"] = 92401,
		["Silver of the Waves"] = 86614,
		["The Restless Dead"] = 96394,
		["Shipping Label"] = 	{
			["Dokimi"] = 98248,
			["Marcy Baker"] = 98247
		},
		["Your Package Has Arrived"] = 97263,
		["Easing Suffering"] = 99073,
		["Eyes of the Sentinels"] = 98067,
		["Coming to Terms"] = 91208,
		["Remnants of War"] = 96898,
		["The Argent Emissary"] = 96895,
		["Continue Your Training"] = 91209,
		["Testing the Wells"] = 92742,
		["As Above, So Below"] = 99152,
		["An Unfortunate End"] = 98372,
		["The One That Got Away"] = 99153,
		["The Lost Runner"] = 99046,
		["Camping 101: Engineering"] = 	{
			["Strange Hermit"] = 98285,
			["Graham Van Talen"] = 97954,
			["Jenna Lemkenilli"] = 97941,
			["Sprite Jumpsprocket"] = 97918,
			["Mukdrak"] = 97902,
			["Bronk Guzzlegear"] = 96058
		},
		["Field to Clear"] = 98093,
		["Traditions of the Bluff"] = 97485,
		["For Honor"] = 96822,
		["Fishin' Time"] = 95065,
		["Explosive Consultation"] = 	{
			["Alba Fairmoon"] = 92752,
			["Sprite Jumpsprocket"] = 92748
		},
		["Moonbrook Espionage"] = 92747,
		["The State of the Mines"] = 92745,
		["A Scribbled Letter"] = 92479,
		["The Wrath of Rath'mael"] = 92422,
		["Flintfire's Shipment"] = 98321,
		["The Treaty of Understanding"] = 98423,
		["Old Ironforge Incursion"] = 96393,
		["Welcome to Azeroth"] = 	{
			["Highlord Bolvar Fordragon"] = 94947,
			["Thrall"] = 95350
		},
		["Tomb Weed"] = 99142,
		["Hides for the Forsaken"] = 97558,
		["WANTED: Jai'vhanel"] = 98025,
		["Expanding Horizons"] = 97914,
		["Whispering Horror Residue"] = 95328,
		["Camping 101: Mining"] = 	{
			["Gelman Stonehand"] = 97923,
			["Brom Killian"] = 97959,
			["Brek Stonehoof"] = 97935,
			["Messana Crestavento"] = 97970,
			["Kurdram Stonehammer"] = 97948,
			["Krunn"] = 97907,
			["Yarr Hammerstone"] = 96046
		},
		["Twisting the Knife"] = 86758,
		["Fang of Githyiss"] = 97236,
		["Drive Them Out"] = 99080,
		["Grim Tidings"] = 99081,
		["Thunderhorn's Report"] = 98435,
		["Fizsprocket's Notes"] = 98424,
		["Patience"] = 99141,
		["Camping 101: Alchemy"] = 	{
			["Whuut"] = 97899,
			["Carolai Anise"] = 97951,
			["Cyndra Kindwhisper"] = 97938,
			["Kray"] = 97927,
			["Alchemist Mallory"] = 97915,
			["Vosur Brakthel"] = 96045,
			["Nyassa Swiftdraught"] = 97963
		},
		["This Fruit Could Bite Back"] = 96825,
		["Lost in the Shadows"] = 99123,
		["Not Dead Yet"] = 99047,
		["Our Ancient Enemy"] = 99101,
		["Sparring Match"] = 99108,
		["Blessings of the Great Cat Spirit"] = 98739,
		["Tainted Tablet"] = 98575,
		["Hallowed Memorandum"] = 98574,
		["Unrequited Love"] = 98461,
		["The Longwalkers"] = 98430,
		["Ceasing Operations"] = 98427,
		["Show of Force"] = 98407,
		["To Darnassus"] = 98397,
		["The Great Cat Spirit"] = 	{
			["Dendrite Starblaze"] = 98393,
			["Great Cat Spirit"] = 		{
				["I see you have come to learn to draw upon my spirit. Good. Let us upon my spirit. Good. Let us see if you are ready to take my shape."] = 98394,
				["Excellent. You have shown you understand the true nature of the cat, and are able needed to take my shape. I now deem you worthy of my blessing, young $c."] = 98396
			}
		},
		["Darkness in the Glade"] = 98392,
		["The Sisterhood of Elune"] = 98391,
		["Blackrock Blockade"] = 98387,
		["To Thunder Bluff"] = 98362,
		["Journey to Sentinel Hill"] = 98021,
		["Camping 101: Enchanting"] = 	{
			["Vance Undergloom"] = 97953,
			["Betty Quin"] = 97917,
			["Jhag"] = 97901,
			["Thonys Pillarstone"] = 96059,
			["Nasalanna Windsinger"] = 98286,
			["Alanna Raveneye"] = 97940
		},
		["Camping 101: Blacksmithing"] = 	{
			["Basil Frye"] = 97952,
			["Thrag Stonehoof"] = 97928,
			["Smith Argus"] = 97916,
			["Dwukk"] = 97900,
			["Tognus Flintfire"] = 96044,
			["Aedi Thriceforged"] = 97964
		},
		["Making Do"] = 97926,
		["Business in Auberdine"] = 97894,
		["Whuut's the Rush"] = 97275,
		["Philmor's Favor"] = 97220,
		["Gatehouse Goods"] = 97222,
		["Halikor's Hoof"] = 96877,
		["Beasts of Thunder Ridge"] = 96875,
		["This Is Spinal Axe"] = 96874,
		["The Valor Family"] = 96139,
		["WANTED: Incinerator Gar'im"] = 95999,
		["Her Name Is Olgra"] = 95774,
		["The New Plague"] = 95216,
		["Crest of Lordaeron"] = 	{
			["Oran Snakewrithe"] = 95204,
			["Lady Dena Kennedy"] = 95189
		},
		["Bloodied Insignia"] = 95195,
		["Data Hoarders"] = 95041,
		["Child of Nature"] = 	{
			["Sheldras Moontree"] = 94912,
			["Turak Runetotem"] = 94911
		},
		["Divine Grace"] = 	{
			["High Priestess Laurena"] = 		{
				["I'm glad you've arrived, Ander. There are many things we will have to discuss, but the Light must learn. If you are ready, we'll begin discussing some of those now."] = 94774,
				["You have done the Light a great service by becoming a shining example to those dangerous lands and beyond. Please, accept this lesson as a thanks for all you've done."] = 94773
			}
		},
		["Craftsman's Writ: Lesser Troll's Blood Elixir"] = 94217,
		["Exploring the Alliance"] = 93963,
		["Of Mice and Milk"] = 93928,
		["Detonation at a Distance"] = 	{
			["Sprite Jumpsprocket"] = 92751,
			["Jasper Fel"] = 92750
		},
		["A Dynamite Plan"] = 92749,
		["WANTED: Bruuz"] = 92706,
		["Remember That I Love You"] = 	{
			["Orphan Matron Nightingale"] = 92415,
			["Avette Fellwood"] = 95161
		},
		["Return to Quinn (Again)"] = 91921,
		["Wild Eyes"] = 91920,
		["An Enchanting Lesson"] = 91753,
		["Holy Diver"] = 87760,
		["Excavation Tools"] = 86613,
		["Banner of the Fallen"] = 86585,
		["The Great Tree Provides"] = 99050,
		["Glyphic Parchment"] = 98576,
		["Spoils of War"] = 98197,
		["Soft Saber Pelts"] = 87288,
		["Escaping Ban'ethil"] = 99053,
		["Dawn in the Mountains"] = 99158,
		["Finding Warmth"] = 99159,
		["Frosthowl"] = 98326,
		["Yelmak's Medley"] = 97242,
		["Vrang's Game"] = 95507,
		["Bruised Pride and Lion Hides"] = 95494,
		["The Quarry's Smith"] = 95217,
		["Elmpaw's Head"] = 91746,
		["Al'Aketh Assassins"] = 98512,
		["Reading the Ley Lines"] = 92597,
		["Bugged"] = 93949,
		["Infiltrating the Cult"] = 93036,
		["WANTED: Vulgara the Insatiable"] = 93318,
		["The Problem With Prideclaws"] = 92515,
		["A Little Beauty"] = 93951,
		["A Student of the Arcane"] = 92481,
		["Ornery Ornery Galestriders"] = 92684,
		["Standing Our Ground"] = 92693,
		["The Hills Have Eyes"] = 92685,
		["Falaath Village"] = 92529,
		["The High Order"] = 92596,
		["Fillion's Mission"] = 99260,
		["The Missing Scholar"] = 	{
			["Fillion Flamebreeze"] = 		{
				["Thank you again, $N. Thank you again, $N."] = 92850,
				["Th... thank you, stranger. I was returning from an assignment at the Overlook Standing Stones if you hadn't come along, I'd have been dinner for that beast and its younglings."] = 92849
			},
			["Dondallion Whisperwind"] = 92850,
			["Bloodstained Satchel"] = 92727
		},
		["Unwanted and Unworthy"] = 94487,
		["Deliver the Signet"] = 93948,
		["Stolen Supplies"] = 92551,
		["The Western Watch"] = 93926,
		["A Magical Affront"] = 94413,
		["Bandarion Keep"] = 96899,
		["A Grand Adventure"] = 	{
			["Elaadrin Evengale"] = 92709,
			["Ayessa Dawnsinger"] = 92708
		},
		["Unwelcome Visitors"] = 92741,
		["The Fate of a Loved One"] = 94897,
		["Aid For The Refugees"] = 94896,
		["Ripped Missive"] = 94490,
		["The Wounds of Betrayal"] = 94489,
		["Feathers for Binding"] = 94486,
		["Mercy Falls on Deaf Ears"] = 93165,
		["The High Elder's Request"] = 92881,
		["Return to Valanaar"] = 92880,
		["Breaking the Breaker"] = 92645,
		["Disrupting Logistics"] = 92642,
		["Tower Defense"] = 93320,
		["What Is My Purpose?"] = 92698,
		["Flutterfly Dust"] = 92683,
		["Make Yourself Useful"] = 92682,
		["Blood Tithe"] = 92679,
		["The Supreme Magister"] = 92699,
		["Unnerving Silence"] = 94484,
		["To Valanaar"] = 92701,
		["Important Heirlooms"] = 96403,
		["The Magical City of Dalaran"] = 94946,
		["The Ties That Bind"] = 94488,
		["Tears of the Lady"] = 94485,
		["The Fate of Zephras"] = 94369,
		["What Comes Next"] = 	{
			["Elaadrin Evengale"] = 93089,
			["Ayessa Dawnsinger"] = 93090
		},
		["Confront Lorthuna"] = 	{
			["Elaadrin Evengale"] = 93835,
			["Ayessa Dawnsinger"] = 92646
		},
		["Desperate Times"] = 92640,
		["The Cult's True Plans"] = 94568,
		["Unfortunate News"] = 92644,
		["Avenged Tenfold"] = 92834,
		["Catching Wind"] = 92840,
		["Crab Season"] = 93317,
		["A Missing Hand"] = 99048,
		["Diplomatic Incident"] = 91858,
		["The Fate of the Den"] = 94491,
		["In Service of Zephras"] = 	{
			["Valennia Stormfist"] = 		{
				["I am sorry to hear about Belathaan. He was actually my cousin and he was You seem eager to lend aid immediately. Come, let's speak further on the current situation."] = 92860,
				["You seem eager to lend aid immediately. Come, let's speak further on the current situation. You seem eager to lend aid immediately. Come, let's speak further on the current situation."] = 92871
			}
		},
		["Boughs in the Wind"] = 93797,
		["Speak with Belann"] = 93791,
		["Longwalker Malah"] = 99079,
		["The Broken Construct"] = 	{
			["Riaani Nightwind"] = 		{
				["<Riaani's face is buried under the heaving armor plates of the construct, attempting to work the Gyrozephyr as well? It's a miracle this construct's winds haven't dissipated entirely by now!"] = 93735,
				["Thank you for scavenging these materials. I imagine that some of this wasn't terribly easy hope that its memory is intact and it can tell us who took its components."] = 93737
			},
			["Ayessa Dawnsinger"] = 93738
		},
		["A Righteous Cause"] = 96896,
		["A Curious Pair"] = 91859,
		["Wayward Weapons"] = 97279,
		["Shelf Picked"] = 97237,
		["Chol'aruk the Ravener"] = 	{
			["Bainham"] = 97005,
			["Gur'ak"] = 97003
		},
		["A Pain in the Neck"] = 96873,
		["The Windshaper's Wrath"] = 96204,
		["Trouble in the Valley"] = 95621,
		["Unwelcome Guests"] = 95508,
		["The Hermit Tanner"] = 95495,
		["Old Fire-Eye"] = 95140,
		["The Moonsilver Blade"] = 95126,
		["Ott's Masterwork"] = 95125,
		["A Moon-Kissed Blade"] = 95036,
		["The Debt"] = 95034,
		["Confounding Flash"] = 	{
			["Hohepriesterin Mims"] = 		{
				["You took your time arriving, Papi. But you can be excused given your dedicated service excused given your dedicated service to the Light. Please pay close attention to this lesson."] = 94824,
				["You took your time arriving, $n. But you can be excused given your dedicated service excused given your dedicated service to the Light. Please pay close attention to this lesson."] = 94822
			},
			["High Priestess Mims"] = 94817
		},
		["A Sacrifice in Vain"] = 94493,
		["The Skybreaker Bulwark"] = 94003,
		["More Al'Aketh Ears"] = 93459,
		["Destruction in Deadmines"] = 	{
			["Alba Fairmoon"] = 		{
				["So you found the forge, and planted the bomb... only one thing remains to be you found the forge, and planted the bomb... only one thing remains to be done."] = 92753,
				["I don't know what to say, $n. To think that Stormwind would put their military To think that Stormwind would put their military ambitions over the livelihood of their people..."] = 92819
			}
		},
		["The Warrior's Path"] = 92532,
		["Embracing the Elements"] = 92484,
		["At Home in the Shadows"] = 92483,
		["Light's Justice"] = 92421,
		["Croaky's Head"] = 91740,
		["An Apple Treat"] = 91738,
		["Murlocs at the Gates"] = 91285,
		["Ingredients for the Forge"] = 86776,
		["Snowbound"] = 86667,
		["The Anchors of Zephras"] = 94414,
		["An Underrated Talent"] = 95111,
		["Blessings of the Great Windborne Cat Spirit"] = 98738,
		["The Inner Sanctum"] = 93958,
		["Making Our Move"] = 92947,
		["Prepare for Battle"] = 93065,
		["A Student of Nature"] = 92485,
		["The Earthen Ring"] = 95349,
		["Craftsman's Writ: Blue Overalls"] = 94248,
		["Craftsman's Writ: Practice Lock"] = 94233,
		["Unwelcome Spirits"] = 93736,
		["Lumina Windsinger"] = 91862,
		["Into Fenris Keep"] = 91861,
		["Deliver the News"] = 92703,
		["The Turncoat"] = 92643,
		["The Grand Skyseer"] = 92700,
		["A Lack of Virtue"] = 98459,
		["A Firm Response"] = 93746,
		["Blood for Blood"] = 93740,
		["Exploring the Horde"] = 93739,
		["A Sealed Crate"] = 	{
			["Marcy Baker"] = 		{
				["Thank you for your hard work, $N. There has been an uprising in bandits and laying around, please bring them here and we'll handle the rest. Here is your payment."] = 91899,
				["Thank you for your hard work, $N. There has been an uprising in bandits and lying around, please bring them here and we'll handle the rest. Here is your payment."] = 91904
			},
			["Dokimi"] = 		{
				["Thank you for your hard work, $N. There has been an uprising in bandits and lying around, please bring them here and we'll handle the rest. Here is your payment."] = 91905,
				["Thank you for your hard work, $N. There has been an uprising in bandits and laying around, please bring them here and we'll handle the rest. Here is your payment."] = 91899
			}
		},
		["A Friend of the Family"] = 	{
			["Lord Grayson Shadowbreaker"] = 98191,
			["Highlord Bolvar Fordragon"] = 98190
		},
		["Alchemical Hazards"] = 98282,
		["Scout Support"] = 98094,
		["Bloom of the Heavens"] = 	{
			["Sylessa Duskwhisper"] = 98208,
			["Thundris Windweaver"] = 98209
		},
		["Kyle's Gone Missing!"] = 99411,
		["Research Access"] = 97286,
		["Baxtan: On Destructive Magics"] = 79097,
		["Nar'thalas Almanac"] = 78124,
		["... and that note you found"] = 	{
			["Burned-Out Remains"] = 79007,
			["Restos quemados"] = 79008
		},
		["Secrets of the Dreamers"] = 78143,
		["The Guns of Northwatch"] = 891,
		["Vengeful Trail"] = 98417,
		["Fallen in the Fen"] = 95795,
		["Heartwoven"] = 95809,
		["Valuable Vantages"] = 98095,
		["Gleaming Crescent Necklace"] = 98027,
		["Never Coming Back"] = 98251,
		["Rumi of Gnomeregan: The Collected Works"] = 79093,
		["Free From the Hold"] = 898,
		["Prehistoric Prism"] = 98824,
		["Grant's Shield"] = 79362,
		["Understanding Our Present"] = 98216,
		["Brewer's Trade"] = 98071,
		["Bloodfury Trinkets"] = 86576,
		["From the Ashes"] = 98221,
		["Love Hurts"] = 65601,
		["Bring Back a Bang"] = 88756,
		["Shared Fury"] = 98418,
		["Slowing the Orc Advance"] = 86757,
		["Seeking Caitlin"] = 95737,
		["Packaged Pristine Pelts"] = 98156,
		["Pristine Pesterhide Pelts"] = 98155,
		["The Dalaran Digest"] = 78127,
		["Eagle's Fist"] = 79975,
		["Stepping Stones"] = 79192,
		["Grace of An'she and Mu'sha"] = 95805,
		["The Oracle Tree"] = 98398,
		["Crocs of the Sky"] = 98072,
		["Trying Times"] = 98246,
		["Razormaw Needling"] = 98245,
		["Carnage"] = 98283,
		["Swelling Forces"] = 98013,
		["A Green Sample"] = 92456,
		["The Shamed Lieutenant"] = 98219,
		["Power Overwhelming"] = 92489,
		["Legacy Reward: Replica Ironforge Air Rifle"] = 96339,
		["For Further Study"] = 98313,
		["This Land Was Their Land"] = 98230,
		["Old Habits"] = 98223,
		["Forced Disarmament"] = 98293,
		["Gleaning Our Future"] = 98310,
		["The Great Windborne Cat Spirit"] = 	{
			["Avatar of Saeyleenan"] = 		{
				["Excellent. You have shown you understand the true nature of the cat, and are able needed to take my shape. I now deem you worthy of my blessing, young $c."] = 98404,
				["Greetings, young shen'dorei. I have come to you because I sense you are ready to my shape you would take, not that of a Azerothian cat spirit. Let us begin."] = 98341
			}
		},
		["A Grim Fate"] = 91860,
		["Heart of Disruption"] = 	{
			["Image of Archmage Modera"] = 92458,
			["Magus Wordeen Voidglare"] = 96984
		},
		["An Alarming Request"] = 92432,
		["My First Real Potion"] = 92110,
		["My First Alchemy Set"] = 92109,
		["WRIGGLE."] = 97583,
		["The Offering of Blood"] = 95885,
		["The Offering Stone"] = 95884,
		["The Tortured Soul"] = 95883,
		["Starving Arcane"] = 92457,
		["Friend of the Kirin Tor"] = 92459,
		["Runes of the Sorcerer-Kings"] = 78148,
		["Stopping the Cycle"] = 98297,
		["Death to the Dragonmaw"] = 98291,
		["Goaz Scrolls"] = 78146,
		["Arcanic Systems Manual"] = 78145,
		["Darkspear Islands Clash"] = 98895,
		["Earthen Echo"] = 98823,
		["Syndicate Sabotage"] = 96779,
		["Open the Maw"] = 95682,
		["The Horn of Xelthos"] = 	{
			["Dead Drop"] = 		{
				["<You place The Horn of Xelthos into the chest> <You place The Horn of Xelthos into the chest>"] = 78261,
				["<A note sits in the chest> For $N. I'll be seeing you. - C <A note sits in the chest> For $N. I'll be seeing you. - C"] = 78307
			}
		},
		["Goblin Lockpicks"] = 78270,
		["Baron Marinous"] = 98028,
		["Stop the Screeching"] = 98070,
		["A Void Path"] = 98252,
		["Dragonmaw Rumors"] = 95663,
		["What Is Love?"] = 65602,
		["Stolen Freewind Supplies"] = 98069,
		["Friend of the Library"] = 78150,
		["Fury of the Land"] = 78149,
		["Word to Ironforge"] = 98300,
		["Hillsbrad's Hoard"] = 98059,
		["The Tempest's Weapons"] = 	{
			["Bath'rah the Windwatcher"] = 		{
				["Ah, this be a powerful artifact, friend! I haven't crafted with some'ting like this in care o' dis now, ya hear? Looks like ya went through plenty to get it!"] = 96016,
				["Tell ya what. No more tricks, no more games. I got somet'in you'd be interested this mighty fine rune that be ready to teach you new tricks. What ya say?"] = 79442
			}
		},
		["Heed My Call"] = 96135,
		["Storm, Earth, and Fire"] = 79358,
		["Elemental Aid"] = 	{
			["Veyric Thunderhame"] = 96264,
			["Rau Cliffrunner"] = 79360
		},
		["Crimson Crate Delivery"] = 98240,
		["Spark of Freedom"] = 87491,
		["Stronger than Steel"] = 96260,
		["Rekindle"] = 80001,
		["Craftsman's Writ: Green Iron Gauntlets"] = 94226,
		["Crimes Against Anatomy"] = 78147,
		["Elder Knowledge"] = 95664,
		["Hearts of the Lost"] = 87318,
		["Changing Tastes"] = 95697,
		["My Little Friends"] = 93176,
		["A Taste of Darkness"] = 95771,
		["Pigments for Paints"] = 97538,
		["Trek Through the Caves"] = 77660,
		["Scramble"] = 79980,
		["Wet Job"] = 79974,
		["This Must Be The Place"] = 79976,
		["Stalk With The Earthmother"] = 	{
			["Boarton Shadetotem"] = 		{
				["This is not the venomous salve I asked for. What you have brought me is a dagger. Although you would be quite formidable against a foe with a nut allergy."] = 76160,
				["Hmm... perhaps disguises are not your strength. Hmm... perhaps disguises are not your strength."] = 76156,
				["That was quite a display, $c. Although unfortunately, not the rogueish precision I hoped for. parting gift. Good luck on your travels, $c. The Horde will need heroes like you."] = 76240
			}
		},
		["Thundering Hearts"] = 97985,
		["Blood in the Streets"] = 92434,
		["Key to the City"] = 93680,
		["Craftsman's Writ: Free Action Potion"] = 94215,
		["Merrick's Bow"] = 96138,
		["Ataeric: On Arcane Curiosities"] = 79096,
		["Ira's Dagger"] = 96137,
		["Geomancy: The Stone-Cold Truth"] = 79947,
		["Silvia's Sword"] = 79363,
		["Stonetalon Supply Run"] = 86574,
		["A Darker Truth"] = 96294,
		["The Broodmother"] = 96261,
		["Defending the Dead"] = 96259,
		["Talkin' bout Toxins, Mon"] = 96241,
		["Craftsman's Writ: Elixir of Wisdom"] = 94212,
		["Craftsman's Writ: Elixir of Lesser Agility"] = 94216,
		["Craftsman's Writ: Dark Leather Tunic"] = 94241,
		["Craftsman's Writ: Lesser Mana Potion"] = 94213,
		["Talk of the Town"] = 98463,
		["The Lessons of Ta'zo"] = 79094,
		["Ain't No Telling"] = 96785,
		["Master of Disguise"] = 96784,
		["A Way In"] = 96783,
		["Craftsman's Writ: Explosive Sheep"] = 94230,
		["Shrewd Negotiations"] = 97287,
		["Applejack Still"] = 91736,
		["The Eye of Bhossca"] = 	{
			["Dead Drop"] = 		{
				["<You place The Eye of Bhossca into the chest> <You place The Eye of Bhossca into the chest>"] = 78676,
				["<A note sits in the chest> For $N. I'll be keeping an 'eye' out for in the chest> For $N. I'll be keeping an 'eye' out for you. - C"] = 78699
			}
		},
		["Sentiments of the Lost"] = 88758,
		["Carved Centaur Totems"] = 93225,
		["Strahnbrad Mystery"] = 95534,
		["The Battle for Darkspear Islands!"] = 	{
			["Brelinda McFarry"] = 98903,
			["Nizuk Buf"] = 98906
		},
		["Contingency Plan"] = 94818,
		["A Second Home"] = 91282,
		["Hallowed Scroll"] = 3097,
		["Source of Power"] = 96988,
		["Defensive Magics 101"] = 79948,
		["The Grave Knight"] = 96986,
		["A Second Opinion"] = 78090,
		["Craftsman's Writ: Goblin Rocket Fuel"] = 94265,
		["Conflict at Darkspear Islands"] = 	{
			["Horde Warbringer"] = 		{
				["Well done, $c! You've helped the Horde gain control of Darkspear Islands! Well done, $c! You've helped the Horde gain control of Darkspear Islands!"] = 98888,
				["The sands of the Darkspear Islands are awash with the blood of the Alliance you've awash with the blood of the Alliance you've killed. Well done, $N. For the Horde!"] = 98887
			}
		},
		["With Wind Beneath Your Wings"] = 79365,
		["Rocks to Rests"] = 97326,
		["Favorite Food"] = 97249,
		["Strength and Mercy"] = 94638,
		["Lost Relic Carry"] = 95810,
		["Highland Hides"] = 98815,
		["Archmage Antonidas: The Unabridged Autobiography"] = 79091,
		["Bewitchments and Glamours"] = 78142,
		["Nature's Call"] = 97977,
		["The Great Ursera Spirit"] = 94006,
		["Horrors in the Highland"] = 95646,
		["Attunement to the Core"] = 7848,
		["Advice From Stormwind"] = 78089,
		["Earning Your Salt"] = 78091,
		["It Must Be Destroyed"] = 78092,
		["Return to Delgren"] = 78093,
		["Dragonslayer's Helm"] = 78132,
		["Dragonslayer's Shield"] = 78133,
		["Dragonslayer's Lance"] = 78134,
		["The Heart of the Void"] = 	{
			["Dawnwatcher Selgorm"] = 78916,
			["Bashana Runetotem"] = 78917
		},
		["Highway Robbery"] = 79229,
		["On the Lam"] = 79235,
		["Cherry for Your Thoughts?"] = 79236,
		["No Honor Among Thieves"] = 79242,
		["Eyes on the Sky"] = 79364,
		["The Troll Scroll"] = 79731
	}
}
