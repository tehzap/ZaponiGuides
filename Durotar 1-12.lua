-- Horde 1-12 Guide
-- Based on Sevenleaves/Tactics Leveling Guide
-- For Orc and Troll starting areas

LevelingGuide_Durotar = {
  steps = {
    -- Valley of Trials (Level 1-6)
    { action="accept", quest=4641, name="Your Place In The World", npc="Kaltunk", coords={x=43.3,y=68.5}, note="Turn on Auto Loot & Enemy Units in interface options." },
    { action="accept", quest=790, name="Sarkoth", npc="Gornek", coords={x=40.6,y=62.6}, note="Rush to the tree. If other players around, invite them for group loot." },
    { action="kill", quest=790, name="Sarkoth", mob="Sarkoth", coords={x=40.5,y=67.3}, note="Kill and loot Sarkoth." },
    { action="turnin", quest=790, name="Sarkoth", npc="Gornek", coords={x=40.6,y=62.6} },
    { action="accept", quest=804, name="Sarkoth Part 2", npc="Gornek", coords={x=40.6,y=62.6} },
    { action="turnin", quest=4641, name="Your Place In The World", npc="Kaltunk", coords={x=43.3,y=68.5} },
    { action="turnin", quest=804, name="Sarkoth Part 2", npc="Kaltunk", coords={x=43.3,y=68.5} },
    { action="accept", quest=788, name="Cutting Teeth", npc="Kaltunk", coords={x=43.3,y=68.5} },
    { action="accept", quest=792, name="Vile Familiars", npc="Zureetha Fargaze", coords={x=42.6,y=69.0} },
    { action="kill", quest=788, name="Cutting Teeth", mob="Mottled Boar", coords={x=43.0,y=71.0}, note="Kill 10 Mottled Boars." },
    { action="info", name="Grind to Level 2", note="Grind to level 2 (730 exp total).", coords={x=43.0,y=71.0} },
    { action="turnin", quest=788, name="Cutting Teeth", npc="Kaltunk", coords={x=43.3,y=68.5} },
    { action="accept", quest=4402, name="Galgar's Cactus Apple Surprise", npc="Cook Torka", coords={x=43.3,y=68.5} },
    { action="accept", quest=5441, name="Lazy Peons", npc="Foreman Thazz'ril", coords={x=43.3,y=68.5} },
    { action="kill", quest=792, name="Vile Familiars", mob="Vile Familiar", coords={x=43.0,y=71.0}, note="Kill 12 Vile Familiars. Invite other players to complete faster." },
    { action="collect", quest=5441, name="Lazy Peons", item="Foreman's Blackjack", coords={x=43.0,y=71.0}, note="Use Foreman's Blackjack on 5 Lazy Peons. Target sleeping peons and use the item." },
    { action="collect", quest=4402, name="Galgar's Cactus Apple Surprise", item="Cactus Apple", coords={x=43.0,y=71.0}, note="Collect 10 Cactus Apples around the valley." },
    { action="info", name="Die and resurrect", note="Die or walk back to Valley. Take spirit resurrect.", coords={x=43.3,y=68.5} },
    { action="turnin", quest=4402, name="Galgar's Cactus Apple Surprise", npc="Cook Torka", coords={x=43.3,y=68.5} },
    { action="turnin", quest=792, name="Vile Familiars", npc="Zureetha Fargaze", coords={x=42.6,y=69.0} },
    { action="accept", quest=794, name="Burning Blade Medallion", npc="Zureetha Fargaze", coords={x=42.6,y=69.0} },
    { action="turnin", quest=5441, name="Lazy Peons", npc="Foreman Thazz'ril", coords={x=44.63,y=68.67} },
    { action="accept", quest=6394, name="Thazz'ril's Pick", npc="Foreman Thazz'ril", coords={x=44.63,y=68.67} },
    { action="collect", quest=6394, name="Thazz'ril's Pick", item="Thazz'ril's Pick", coords={x=43.0,y=71.0}, note="Get the pick from the back of the cave." },
    { action="kill", quest=794, name="Burning Blade Medallion", mob="Yarrog Baneshadow", coords={x=43.0,y=71.0}, note="Find and kill Yarrog Baneshadow, loot the medallion." },
    { action="info", name="Razor Hill Skip", note="Run to back of cave, drown or die to mobs. Die/unstuck and take spirit res.", coords={x=43.0,y=51.0} },
    { action="accept", quest=784, name="Vanquish the Betrayers", npc="Orgnil Soulscar", coords={x=43.0,y=51.0} },
    { action="info", name="Sell items", note="Sell items you can't use to vendors.", coords={x=51.0,y=42.0} },
    { action="accept", quest=791, name="Carry Your Weight", npc="Ukor", coords={x=49.0,y=40.0} },
    { action="info", name="Hearth back", note="Hearth back to Valley of Trials.", coords={x=43.3,y=68.5} },
    { action="turnin", quest=794, name="Burning Blade Medallion", npc="Zureetha Fargaze", coords={x=42.6,y=69.0} },
    { action="accept", quest=805, name="Report to Sen'jin Village", npc="Zureetha Fargaze", coords={x=42.6,y=69.0} },
    { action="turnin", quest=6394, name="Thazz'ril's Pick", npc="Foreman Thazz'ril", coords={x=44.63,y=68.67} },
    
    -- Sen'jin Village (Level 4-8)
    { action="accept", quest=2161, name="A Peon's Burden", npc="Ukor", coords={x=52.1,y=68.3} },
    { action="info", name="Farm to Level 4", note="Farm until 1815 exp total. Grind until you have 4 silver and 32 copper.", coords={x=52.1,y=68.3} },
    { action="info", name="Buy weapons", note="Buy Stiletto (4 silver) and Balanced Throwing Daggers (30 copper) from vendors.", coords={x=56.47,y=73.11} },
    { action="turnin", quest=805, name="Report to Sen'jin Village", npc="Master Gadrin", coords={x=55.9,y=74.7} },
    { action="accept", quest=823, name="Report to Orgnil", npc="Master Gadrin", coords={x=55.9,y=74.7} },
    { action="accept", quest=817, name="Practical Prey", npc="Zen'tabra", coords={x=55.9,y=74.4} },
    { action="accept", quest=808, name="Minshina's Skull", npc="Gar'Thok", coords={x=56.0,y=74.7} },
    { action="accept", quest=818, name="A Solvent Spirit", npc="Rhinag", coords={x=55.9,y=74.4} },
    { action="accept", quest=826, name="Zalazane", npc="Master Gadrin", coords={x=55.9,y=74.7} },
    { action="accept", quest=786, name="Thwarting Kolkar Aggression", npc="Gar'Thok", coords={x=56.0,y=74.7} },
    
    -- Kolkar Attack Plans
    { action="collect", quest=786, name="Thwarting Kolkar Aggression", item="Attack Plan: Valley of Trials", coords={x=49.81,y=81.31}, note="Grind through Surf Crawlers to collect plans." },
    { action="collect", quest=786, name="Thwarting Kolkar Aggression", item="Attack Plan: Sen'jin Village", coords={x=47.67,y=77.39} },
    { action="collect", quest=786, name="Thwarting Kolkar Aggression", item="Attack Plan: Orgrimmar", coords={x=46.26,y=78.98}, note="Die by campfire and res at Sen'jin." },
    { action="turnin", quest=786, name="Thwarting Kolkar Aggression", npc="Gar'Thok", coords={x=56.0,y=74.7} },
    { action="turnin", quest=818, name="A Solvent Spirit", npc="Rhinag", coords={x=55.9,y=74.4}, note="Turn in if completed." },
    
    -- Tiragarde Keep
    { action="info", name="Go to Tiragarde Keep", note="Travel to Tiragarde Keep for Vanquish the Betrayers and Carry Your Weight.", coords={x=58.17,y=57.13} },
    { action="kill", quest=784, name="Vanquish the Betrayers", mob="Kul Tiras Marine", coords={x=58.17,y=57.13}, note="Kill humans and work way to top of fortress." },
    { action="kill", quest=784, name="Vanquish the Betrayers", mob="Lieutenant Benedict", coords={x=59.73,y=58.28}, note="Kill Lieutenant Benedict and loot his key." },
    { action="collect", quest=830, name="The Admiral's Orders", item="Aged Envelope", coords={x=59.32,y=57.65}, note="Open Benedict's Chest and accept quest from Aged Envelope." },
    { action="kill", quest=791, name="Carry Your Weight", mob="Kul Tiras Sailor", coords={x=58.17,y=57.13}, note="Complete remaining kills for Carry Your Weight." },
    
    -- Return to Razor Hill
    { action="turnin", quest=823, name="Report to Orgnil", npc="Orgnil Soulscar", coords={x=52.2,y=43.1} },
    { action="accept", quest=806, name="Dark Storms", npc="Orgnil Soulscar", coords={x=52.2,y=43.1} },
    { action="turnin", quest=784, name="Vanquish the Betrayers", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="turnin", quest=830, name="The Admiral's Orders", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=825, name="From The Wreckage", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=831, name="The Admiral's Orders (part 2)", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=837, name="Encroachment", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="info", name="Learn skills", note="Learn Sinister Strike (Rank 2) inside the bunker.", coords={x=51.98,y=43.67} },
    { action="accept", quest=815, name="Break a Few Eggs", npc="Kor'ghan", coords={x=51.1,y=42.4}, note="Buy 15 pieces of food." },
    { action="turnin", quest=791, name="Carry Your Weight", npc="Ukor", coords={x=49.9,y=40.4}, note="Go to top of watchtower." },
    { action="info", name="Repair weapon", note="Repair weapon before going to inn.", coords={x=49.9,y=40.4} },
    { action="turnin", quest=2161, name="A Peon's Burden", npc="Innkeeper Grosk", coords={x=51.5,y=41.6} },
    { action="info", name="Set hearthstone", note="Set hearthstone to Razor Hill.", coords={x=51.5,y=41.6} },
    { action="info", name="Learn First Aid", note="Learn First Aid in the Barracks.", coords={x=54.2,y=41.9} },
    
    -- Encroachment Part 1
    { action="kill", quest=837, name="Encroachment", mob="Razormane Quilboar", coords={x=50.02,y=49.37}, note="Do first half of Encroachment - kill quilboars SW of Razor Hill." },
    { action="info", name="Grind to Level 8", note="Grind mobs until you reach level 8.", coords={x=50.0,y=49.0} },
    { action="info", name="Learn skills", note="Learn Gouge, Eviscerate (Rank 2), and Evasion in bunker.", coords={x=51.98,y=43.67} },
    
    -- Beach and Echo Isles
    { action="kill", quest=818, name="A Solvent Spirit", mob="Makrura", coords={x=61.79,y=42.38}, note="Go east to beach, kill crabs and makrura in water." },
    { action="collect", quest=825, name="From The Wreckage", item="Gnomish Toolbox", coords={x=61.79,y=42.38}, note="Loot Gnomish Toolboxes in water." },
    { action="info", name="Go to Echo Isles", note="Travel to Echo Isles for multiple quests.", coords={x=67.0,y=87.0} },
    { action="collect", quest=815, name="Break a Few Eggs", item="Taillasher Egg", coords={x=67.0,y=87.0}, note="Collect Taillasher Eggs." },
    { action="kill", quest=817, name="Practical Prey", mob="Durotar Tiger", coords={x=67.0,y=87.0}, note="Kill Durotar Tigers." },
    { action="collect", quest=808, name="Minshina's Skull", item="Minshina's Skull", coords={x=67.4,y=87.8}, note="Get skull from hill with candles around it." },
    { action="kill", quest=826, name="Zalazane", mob="Zalazane", coords={x=67.19,y=86.98}, note="Kill Zalazane on main isle." },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=67.0,y=87.0} },
    
    -- Return quests to Sen'jin
    { action="turnin", quest=817, name="Practical Prey", npc="Zen'tabra", coords={x=56.0,y=73.9} },
    { action="turnin", quest=808, name="Minshina's Skull", npc="Gar'Thok", coords={x=56.0,y=74.7} },
    { action="turnin", quest=826, name="Zalazane", npc="Master Gadrin", coords={x=56.0,y=74.7} },
    { action="turnin", quest=818, name="A Solvent Spirit", npc="Rhinag", coords={x=55.9,y=74.4} },
    
    -- Return to Razor Hill
    { action="info", name="Return to Razor Hill", note="Hearth or walk to Razor Hill.", coords={x=52.0,y=43.4} },
    { action="turnin", quest=825, name="From The Wreckage", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="turnin", quest=815, name="Break a Few Eggs", npc="Kor'ghan", coords={x=51.1,y=42.4} },
    
    -- Encroachment Part 2 and Lost But Not Forgotten
    { action="kill", quest=837, name="Encroachment", mob="Razormane Dustrunner", coords={x=43.98,y=40.19}, note="Go west of Razor Hill, kill Dustrunners and Battleguards." },
    { action="kill", quest=837, name="Encroachment", mob="Razormane Battleguard", coords={x=43.98,y=40.19} },
    { action="accept", quest=816, name="Lost But Not Forgotten", npc="Private Hendel", coords={x=43.09,y=30.34}, note="Grind north to little house." },
    
    -- Canyon and Harpies
    { action="collect", quest=834, name="Winds in the Desert", item="Stolen Supply Sack", coords={x=47.2,y=29.61}, note="Loot Stolen Supply Sacks around harpies. Multiple locations on map." },
    { action="turnin", quest=834, name="Winds in the Desert", npc="Rezlak", coords={x=46.37,y=23.12} },
    { action="accept", quest=835, name="Securing the Lines", npc="Rezlak", coords={x=46.37,y=23.12} },
    { action="kill", quest=806, name="Dark Storms", mob="Fizzle Darkstorm", coords={x=41.8,y=26.6}, note="Jump into canyon, kill Fizzle's pet first, gouge life drains. Save Blood Fury for after skull/potion." },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=41.8,y=26.6} },
    
    -- Final Level 9-10 preparation
    { action="info", name="Grind to 4975 exp", note="Grind to 4975 exp total. Quests will level you to 10.", coords={x=52.0,y=43.4} },
    { action="info", name="Repair and restock", note="Repair weapons and restock on food.", coords={x=52.0,y=43.4} },
    { action="turnin", quest=806, name="Dark Storms", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="turnin", quest=837, name="Encroachment", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=828, name="Margoz", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=1859, name="Therzok", npc="Orgnil Soulscar", coords={x=52.0,y=43.4} },
    { action="accept", quest=840, name="Conscript of the Horde", npc="Takrin Pathseeker", coords={x=52.0,y=43.4} },
    { action="info", name="Learn spells", note="Learn Dual Wield and Sprint from trainer.", coords={x=51.98,y=43.67} },
    
    -- Skull Rock
    { action="turnin", quest=828, name="Margoz", npc="Margoz", coords={x=56.0,y=20.0} },
    { action="accept", quest=827, name="Skull Rock", npc="Margoz", coords={x=56.0,y=20.0} },
    { action="kill", quest=827, name="Skull Rock", mob="Burning Blade Fanatic", coords={x=52.8,y=28.7}, note="Go to lower level caves and complete quest." },
    { action="turnin", quest=827, name="Skull Rock", npc="Margoz", coords={x=56.0,y=20.0} },
    { action="accept", quest=829, name="Neeru Fireblade", npc="Margoz", coords={x=56.0,y=20.0} },
    { action="kill", quest=835, name="Securing the Lines", mob="Dustwind Harpy", coords={x=52.8,y=28.7}, note="Go back to harpy area and complete remaining kills." },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=52.8,y=28.7} },
    { action="turnin", quest=835, name="Securing the Lines", npc="Rezlak", coords={x=46.37,y=23.12} },
    
    -- Need for a Cure quest
    { action="accept", quest=812, name="Need for a Cure", npc="Dok'Tor", coords={x=41.53,y=18.6}, note="Go NW between large rocks. Don't worry about timer countdown." },
    
    -- Travel to Orgrimmar
    { action="info", name="Buy weapons", note="Buy Keen Throwing Knife (68 copper) from vendor in Orgrimmar.", coords={x=48.2,y=79.4} },
    { action="turnin", quest=831, name="The Admiral's Orders Part 2", npc="Thrall", coords={x=32.8,y=36.2}, note="Go to Thrall's room." },
    { action="turnin", quest=1859, name="Therzok", npc="Therzok", coords={x=42.73,y=53.55} },
    { action="info", name="Repair gear", note="Repair your gear.", coords={x=42.73,y=53.55} },
    { action="accept", quest=1963, name="The Shattered Hand", npc="Therzok", coords={x=42.73,y=53.55} },
    { action="accept", quest=813, name="Finding the Antidote", npc="Kor'geld", coords={x=46.98,y=53.71}, note="Go into Cleft of Shadow." },
    { action="turnin", quest=829, name="Neeru Fireblade", npc="Neeru Fireblade", coords={x=49.0,y=50.0}, note="Close to RFC entrance." },
    { action="accept", quest=809, name="Ak'zeloth", npc="Neeru Fireblade", coords={x=49.0,y=50.0} },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=49.0,y=50.0} },
    
    -- Venomtail Poison Sacs
    { action="collect", quest=813, name="Finding the Antidote", item="Venomtail Poison Sac", coords={x=32.2,y=42.9}, note="Gather 4 Venomtail Poison Sacs. Delete Need for a Cure quest for now." },
    
    -- The Barrens - Final steps
    { action="info", name="Travel to Barrens", note="Follow river to Barrens Orc Outpost.", coords={x=32.2,y=42.9} },
    { action="kill", quest=816, name="Lost But Not Forgotten", mob="Kron", coords={x=32.2,y=42.9}, note="Kill crocodiles for Kron's Amulet. If no drop, delete quest." },
    { action="turnin", quest=816, name="Lost But Not Forgotten", npc="Kron", coords={x=32.2,y=42.9}, note="Only if amulet dropped." },
    { action="turnin", quest=840, name="Conscript of the Horde", npc="Takrin Pathseeker", coords={x=32.2,y=42.9} },
    { action="accept", quest=842, name="Crossroads Conscription", npc="Takrin Pathseeker", coords={x=32.2,y=42.9} },
    { action="turnin", quest=809, name="Ak'zeloth", npc="Ak'zeloth", coords={x=32.2,y=42.9} },
    { action="accept", quest=924, name="The Demon Seed", npc="Ak'zeloth", coords={x=32.2,y=42.9}, note="Pick up Flawed Power Stone from table." },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=32.2,y=42.9} },
    
    -- Crossroads
    { action="accept", quest=870, name="The Forgotten Pools", npc="Tonga Runetotem", coords={x=52.2,y=31.8} },
    { action="turnin", quest=842, name="Crossroads Conscription", npc="Gazrog", coords={x=52.2,y=31.0} },
    { action="accept", quest=844, name="Plainstrider Menace", npc="Gazrog", coords={x=52.2,y=31.0} },
    { action="accept", quest=6365, name="Meats to Orgrimmar", npc="Zargh", coords={x=52.6,y=29.8} },
    { action="info", name="Set hearthstone", note="Make The Crossroads your hearthstone.", coords={x=52.0,y=30.0} },
    { action="accept", quest=869, name="Raptor Thieves", npc="Gazrog", coords={x=51.8,y=30.2} },
    { action="accept", quest=871, name="Disrupt the Attacks", npc="Korran", coords={x=51.6,y=30.8}, note="Bottom of tower." },
    { action="accept", quest=5041, name="Supplies for the Crossroads", npc="Korran", coords={x=51.6,y=30.8} },
    { action="info", name="Get flight path", note="Get the flight path from Devrak.", coords={x=51.5,y=30.3} },
    { action="turnin", quest=6365, name="Meats to Orgrimmar", npc="Devrak", coords={x=51.5,y=30.3} },
    { action="accept", quest=6384, name="Ride to Orgrimmar", npc="Devrak", coords={x=51.5,y=30.3}, note="DO NOT FLY TO ORGRIMMAR YET!" },
    { action="accept", quest=848, name="Fungal Spores", npc="Apothecary Helbrim", coords={x=51.4,y=30.2} },
    { action="info", name="Buy weapon", note="Repair/buy Feral Blade (24 silver) from Nargal Deatheye if you have enough.", coords={x=51.2,y=29.2} },
    
    -- Final quest completion
    { action="kill", quest=844, name="Plainstrider Menace", mob="Greater Plainstrider", coords={x=44.0,y=22.0}, note="Kill Plainstriders for beaks." },
    { action="collect", quest=870, name="The Forgotten Pools", item="Forgotten Pools", coords={x=44.0,y=22.0}, note="Explore pools at bottom of lake." },
    { action="collect", quest=848, name="Fungal Spores", item="Fungal Spore", coords={x=44.0,y=22.0}, note="Gather 4 Fungal Spores." },
    { action="info", name="Optional rare mob", note="Kill Rathorian if up for chance at good dagger (25%).", coords={x=48.0,y=19.1} },
    { action="kill", quest=924, name="The Demon Seed", mob="Burning Blade Fanatic", coords={x=48.0,y=19.1}, note="Run up mountain and complete quest." },
    { action="accept", quest=819, name="Chen's Empty Keg", npc="Chen's Empty Keg", coords={x=55.8,y=20.0}, note="Optional quest item pickup." },
    { action="kill", quest=871, name="Disrupt the Attacks", mob="Razormane Quilboar", coords={x=56.4,y=24.2}, note="Complete if not many people around." },
    { action="collect", quest=819, name="Chen's Empty Keg", item="Chen's Empty Keg", coords={x=55.7,y=27.3}, note="If you didn't get it earlier." },
    { action="kill", quest=844, name="Plainstrider Menace", mob="Adult Plainstrider", coords={x=56.0,y=24.0}, note="Finish plainstrider kills." },
    { action="kill", quest=5041, name="Supplies for the Crossroads", mob="Kolkar Centaur", coords={x=59.3,y=24.9}, note="Try to complete, skip if too difficult." },
    { action="turnin", quest=924, name="The Demon Seed", npc="Ak'zeloth", coords={x=32.2,y=42.9} },
    { action="info", name="Return to Crossroads", note="Hearth or die and take spirit res at Crossroads.", coords={x=52.0,y=30.0} },
    
    -- Final turn-ins
    { action="turnin", quest=844, name="Plainstrider Menace", npc="Gazrog", coords={x=52.2,y=31.0} },
    { action="turnin", quest=870, name="The Forgotten Pools", npc="Tonga Runetotem", coords={x=52.2,y=31.8} },
    { action="turnin", quest=871, name="Disrupt the Attacks", npc="Korran", coords={x=51.6,y=30.8} },
    { action="turnin", quest=5041, name="Supplies for the Crossroads", npc="Korran", coords={x=51.6,y=30.8}, note="Only if completed." },
    { action="info", name="Buy weapon upgrade", note="Repair and buy Feral Blade (24 silver) or Cutlass (20 silver) from Nargal Deatheye.", coords={x=51.2,y=29.2} },
    
    -- Travel to Orgrimmar to complete
    { action="info", name="Fly to Orgrimmar", note="Now fly to Orgrimmar to complete remaining quests.", coords={x=51.5,y=30.3} },
    { action="turnin", quest=6384, name="Ride to Orgrimmar", npc="Doras", coords={x=54.27,y=68.3} },
    { action="accept", quest=6385, name="Doras the Wind Rider Master", npc="Doras", coords={x=54.27,y=68.3} },
    { action="turnin", quest=6385, name="Doras the Wind Rider Master", npc="Doras", coords={x=45.3,y=63.74} },
    { action="accept", quest=6386, name="Return to the Crossroads", npc="Doras", coords={x=45.3,y=63.74} },
    { action="turnin", quest=813, name="Finding the Antidote", npc="Kor'geld", coords={x=46.98,y=53.71}, note="Go into Cleft of Shadow." },
    { action="info", name="Die and resurrect", note="Die/unstuck and take spirit res.", coords={x=46.98,y=53.71} },
    { action="accept", quest=812, name="Need for a Cure", npc="Dok'Tor", coords={x=41.6,y=18.6}, note="Accept and turn in immediately." },
    { action="turnin", quest=812, name="Need for a Cure", npc="Dok'Tor", coords={x=41.6,y=18.6} },
    
    -- Transition to next guide
    { action="info", name="Travel to Brill", note="Head to Zeppelin and travel to Brill. Grind while waiting, make bandages on zep. Use unstuck or jump off at farms to die and res in Brill.", coords={x=41.6,y=18.6} },
    
    { nextGuide = "Brill 12-15.lua" },
  }
}