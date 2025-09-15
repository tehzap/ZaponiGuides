-- Arathi 38-39 Guide
-- Based on https://www.sageguide.net/38-39_arathi

LevelingGuide_Arathi = {
  steps = {
    -- Start at Refuge Pointe
    { action="accept", quest=691, name="Worth Its Weight in Gold", npc="Apprentice Kryten", coords={x=46.6,y=47.0} },
    { action="info", quest=642, name="The Princess Trapped", item="Shards of Myzreal", coords={x=63.0,y=34.0}, note="Loot Shards of Myzreal to accept the quest." },
    
    -- Drywhisker Gorge
    { action="info", name="Travel to Drywhisker Gorge", note="Run south of Hammerfall, then east to Drywhisker Gorge.", coords={x=80.0,y=40.0} },
    { action="kill", quest=642, name="The Princess Trapped", mob="Drywhisker", coords={x=80.0,y=40.0}, note="Kill Drywhisker for 12 Mote of Myzrael. Grind through the cave." },
    { action="collect", quest=651, name="Stones of Binding", item="Iridescent Shards", coords={x=80.0,y=40.0}, note="Loot Iridescent Shards from center of cave to complete Princess Trapped and accept Stones of Binding." },
    
    -- Circle of East Binding
    { action="collect", quest=651, name="Stones of Binding", item="Stone of East Binding", coords={x=67.0,y=30.0}, note="Run northwest to Circle of East Binding. Loot Stone of East Binding in the center." },
    
    -- Witherbark Village
    { action="info", name="Travel to Witherbark Village", note="Run south to Witherbark Village and grind to the cave.", coords={x=65.0,y=60.0} },
    { action="kill", quest=691, name="Worth Its Weight in Gold", mob="Witherbark Shadow Hunter", coords={x=65.0,y=60.0}, note="Kill Witherbark Shadow Hunter for 1 Shadow Hunter Knife. Take right path through cave." },
    { action="kill", quest=691, name="Worth Its Weight in Gold", mob="Witherbark Witch Doctor", coords={x=65.0,y=60.0}, note="Kill Witherbark Witch Doctor for 4 Witherbark Medicine Pouch." },
    { action="kill", quest=691, name="Worth Its Weight in Gold", mob="Witherbark Headhunter", coords={x=65.0,y=60.0}, note="Kill Witherbark Headhunter for 10 Witherbark Tusk." },
    
    -- Go'Shek Farm
    { action="turnin", quest=659, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="accept", quest=658, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="info", name="Find Forsaken Courier", note="If you find the Forsaken Courier on the road between Tarren Mill and Go'Shek Farm, kill it for quest progress.", coords={x=60.0,y=54.0} },
    { action="kill", quest=659, name="Hints of a New Plague?", mob="Forsaken Courier", coords={x=60.0,y=54.0}, note="Kill Forsaken Courier if found patrolling the road." },
    { action="turnin", quest=658, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="accept", quest=657, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="turnin", quest=657, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="accept", quest=660, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="info", name="Escort Kinelory", note="Escort Kinelory for Hints of a New Plague quest.", coords={x=60.0,y=54.0} },
    { action="turnin", quest=660, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    { action="accept", quest=661, name="Hints of a New Plague?", npc="Quae", coords={x=60.0,y=54.0} },
    
    -- Circle of Outer Binding
    { action="collect", quest=651, name="Stones of Binding", item="Stone of Outer Binding", coords={x=52.0,y=51.0}, note="Run northwest to Circle of Outer Binding. Loot Stone of Outer Binding in the center." },
    
    -- Return to Refuge Pointe
    { action="turnin", quest=691, name="Worth Its Weight in Gold", npc="Apprentice Kryten", coords={x=46.6,y=47.0} },
    { action="accept", quest=693, name="Wand over Fist", npc="Skuerto", coords={x=46.2,y=47.0} },
    { action="info", name="Repair and Sell", note="Repair and sell items at Jannos Ironwill.", coords={x=46.4,y=47.8} },
    
    -- Boulderfist Hall
    { action="info", name="Travel to Boulderfist Hall", note="Run southeast to Boulderfist Hall. Grind through the cave, take left path.", coords={x=54.0,y=77.0} },
    { action="kill", quest=693, name="Wand over Fist", mob="Kor'gresh Coldrage", coords={x=54.0,y=77.0}, note="Kill Kor'gresh Coldrage for Trelane's Wand of Invocation." },
    
    -- Return to Refuge Pointe
    { action="turnin", quest=693, name="Wand over Fist", npc="Skuerto", coords={x=46.2,y=47.0} },
    { action="accept", quest=681, name="Northfold Manor", npc="Captain Nials", coords={x=45.8,y=47.5}, note="Skip follow up quests." },
    { action="info", name="Repair and Sell", note="Repair and sell items at Jannos Ironwill.", coords={x=46.4,y=47.8} },
    
    -- Northfold Manor
    { action="info", name="Travel to Northfold Manor", note="Run northwest to Northfold Manor.", coords={x=25.0,y=30.0} },
    { action="kill", quest=681, name="Northfold Manor", mob="Syndicate Highwayman", coords={x=25.0,y=30.0}, note="Kill 10 Syndicate Highwayman (stealth)." },
    { action="kill", quest=681, name="Northfold Manor", mob="Syndicate Mercenary", coords={x=25.0,y=30.0}, note="Kill 5 Syndicate Mercenary." },
    
    -- Circle of West Binding
    { action="collect", quest=651, name="Stones of Binding", item="Stone of West Binding", coords={x=25.0,y=30.0}, note="Just southwest of Northfold Manor. Loot Stone of West Binding in the center." },
    
    -- Return to Refuge Pointe
    { action="turnin", quest=681, name="Northfold Manor", npc="Captain Nials", coords={x=45.8,y=47.5} },
    
    -- Optional Elixir of Water Breathing
    { action="info", name="Get Water Breathing Elixirs", note="If you don't have Elixir of Water Breathing, fly to Ironforge and get 2 from Bank/AH.", coords={x=45.8,y=46.2} },
    
    -- Circle of Inner Binding
    { action="turnin", quest=651, name="Stones of Binding", npc="Stones of Binding", coords={x=36.0,y=58.0}, note="Run southwest to Circle of Inner Binding. Loot to complete quest." },
    
    -- Faldir's Cove
    { action="info", name="Travel to Faldir's Cove", note="Run along south outer edge of Stromgarde Keep to (21.2, 75), through cave, then east across water to docks.", coords={x=31.0,y=75.0} },
    { action="accept", quest=663, name="Land Ho!", npc="Lolo the Lookout", coords={x=31.8,y=82.1} },
    { action="turnin", quest=663, name="Land Ho!", npc="Shakes O'Breen", coords={x=32.2,y=81.4} },
    { action="accept", quest=662, name="Deep Sea Salvage", npc="First Mate Nilzlix", coords={x=32.2,y=81.6} },
    
    -- Bonfire area
    { action="accept", quest=664, name="Drowned Sorrows", npc="Captain Steelgut", coords={x=34.0,y=84.0} },
    { action="accept", quest=665, name="Sunken Treasure", npc="Professor Phizzlethorpe", coords={x=33.8,y=84.5} },
    { action="info", name="Escort Professor", note="Escort Professor Phizzlethorpe. Two Level 40 water elementals spawn, kill one at a time.", coords={x=33.8,y=84.5} },
    { action="turnin", quest=665, name="Sunken Treasure", npc="Doctor Draxlegauge", coords={x=34.0,y=84.0} },
    { action="accept", quest=666, name="Sunken Treasure", npc="Doctor Draxlegauge", coords={x=34.0,y=84.0} },
    
    -- Underwater quests (requires Water Breathing)
    { action="info", name="Use Water Breathing", note="Use Elixir of Water Breathing. Equip Goggles of Gem Hunting. Swim west to The Drowned Reef. BE CAREFUL - don't die here.", coords={x=23.0,y=85.0} },
    { action="collect", quest=662, name="Deep Sea Salvage", item="Maiden's Folly Log", coords={x=23.4,y=85.1}, note="East ship, middle floor near junkpile." },
    { action="collect", quest=662, name="Deep Sea Salvage", item="Maiden's Folly Charts", coords={x=23.1,y=84.5}, note="East ship, middle floor near mast." },
    { action="collect", quest=662, name="Deep Sea Salvage", item="Spirit of Silverpine Charts", coords={x=20.5,y=85.6}, note="West ship, middle floor near cannon and crates (swim through leftmost window)." },
    { action="collect", quest=662, name="Deep Sea Salvage", item="Spirit of Silverpine Log", coords={x=20.0,y=85.0}, note="West ship basement (swim down through hole)." },
    { action="kill", quest=664, name="Drowned Sorrows", mob="Daggerspine Raider", coords={x=23.0,y=85.0}, note="Kill 10 Daggerspine Raiders underwater." },
    { action="kill", quest=664, name="Drowned Sorrows", mob="Daggerspine Sorceress", coords={x=23.0,y=85.0}, note="Kill 3 Daggerspine Sorceresses underwater." },
    { action="collect", quest=666, name="Sunken Treasure", item="Calcified Elven Gems", coords={x=23.0,y=85.0}, note="Loot 10 Calcified Elven Gems from seafloor (get safe ones)." },
    { action="info", name="Prince Nazjak (Rare)", note="Check for rare Prince Nazjak at (19.5, 90) - 50% chance for Tidal Charm. Respawn 32-48h.", coords={x=19.5,y=90.0} },
    
    -- Return to Faldir's Cove
    { action="turnin", quest=662, name="Deep Sea Salvage", npc="First Mate Nilzlix", coords={x=32.2,y=81.6} },
    { action="turnin", quest=664, name="Drowned Sorrows", npc="Captain Steelgut", coords={x=34.0,y=84.0} },
    { action="turnin", quest=666, name="Sunken Treasure", npc="Professor Phizzlethorpe", coords={x=33.8,y=84.5} },
    { action="accept", quest=668, name="Sunken Treasure", npc="Professor Phizzlethorpe", coords={x=33.8,y=84.5} },
    { action="info", name="Equip Gnomish Zapper", note="Mage/Priest/Warlock: Equip Gnomish Zapper.", coords={x=33.8,y=84.5} },
    { action="turnin", quest=668, name="Sunken Treasure", npc="Shakes O'Breen", coords={x=32.2,y=81.4} },
    { action="accept", quest=669, name="Sunken Treasure", npc="Shakes O'Breen", coords={x=32.2,y=81.4} },
    { action="info", name="Put helmet back on", note="Put your helmet back on after quest.", coords={x=32.2,y=81.4} },
    
    -- Hearth to Southshore
    { action="info", name="Hearth to Southshore", note="Use Hearthstone to return to Southshore.", coords={x=50.9,y=57.0} },
    { action="turnin", quest=661, name="Hints of a New Plague?", npc="Phin Odelic", coords={x=51.5,y=58.6}, note="Only if you completed the quest. Outside the inn." },
    
    -- Travel to Ironforge
    { action="info", name="Travel to Ironforge", note="Mage: Use Teleport to Ironforge. Others: Fly from Southshore to Ironforge.", coords={x=49.3,y=52.3} },
    
    -- Ironforge quests
    { action="turnin", quest=554, name="Stormpike's Deciphering", npc="Prospector Stormpike", coords={x=75.0,y=25.0}, note="At Hall of Explorers. Skip follow ups." },
    { action="turnin", quest=1050, name="Mythology of the Titans", npc="Librarian Mae Paledust", coords={x=74.6,y=25.2}, note="Only if you did Scarlet Monastery." },
    
    -- Set Hearthstone and learn spells
    { action="info", name="Set Hearthstone", note="Bind your Hearthstone to Ironforge at Innkeeper Firebrew.", coords={x=18.0,y=51.0} },
    { action="info", name="Learn Spells", note="Learn level 38 spells from class trainers.", coords={x=18.0,y=51.0} },
    
    -- Bank and Auction House
    { action="info", name="Bank Management", note="Deposit Sample Elven Gem. Withdraw Fizzle Brassbolts' Letter, 60 Wool Cloth, 60 Silk Cloth.", coords={x=24.0,y=52.0} },
    { action="info", name="Auction House", note="Buy: Patterned Bronze Bracer, Frost Oil, Gyrochronatom, Healing Potion, Lesser Invisibility Potion.", coords={x=24.0,y=52.0} },
    { action="turnin", quest=7807, name="A Donation of Wool", npc="Mistina Steelshield", coords={x=43.2,y=31.9} },
    { action="turnin", quest=7808, name="A Donation of Silk", npc="Mistina Steelshield", coords={x=43.2,y=31.9} },
    { action="info", name="Stock Arrows", note="Hunter: Stock up on arrows - no vendor for a while.", coords={x=43.2,y=31.9} },
    
    -- Travel to Loch Modan
    { action="info", name="Fly to Thelsamar", note="Fly from Ironforge to Thelsamar.", coords={x=55.5,y=47.8} },
    { action="accept", quest=2500, name="Badlands Reagent Run", npc="Ghak Healtouch", coords={x=37.0,y=49.0}, note="In southern middle house." },
    
    -- Ironband's Excavation Site
    { action="info", name="Travel to Ironband", note="Run southeast around the loch, then east to Ironband's Excavation Site.", coords={x=65.9,y=65.6} },
    { action="turnin", quest=707, name="Ironband Wants You!", npc="Prospector Ironband", coords={x=65.9,y=65.6} },
    { action="accept", quest=738, name="Find Agmond", npc="Prospector Ironband", coords={x=65.9,y=65.6} },
    
    -- Level to 39 and head to Badlands
    { action="info", name="Level 39", note="You should reach Level 39 here. Run southwest to Badlands.", coords={x=65.9,y=65.6} },
    
    { nextGuide = "Badlands 39-40.lua" },
  }
}