-- Badlands 39-40 Guide
-- Based on https://www.sageguide.net/39-40_badlands

LevelingGuide_Badlands = {
  steps = {
    { action="info", name="Badlands", note="Go to the Badlands.", coords={x=46.5,y=25.3} },
    { action="accept", quest=718, name="Mirages", npc="Sigrun Ironhew", coords={x=53.8,y=43.3} },
    { action="accept", quest=719, name="A Dwarf and His Tools", npc="Prospector Ryedol", coords={x=53.4,y=43.4} },
    
    -- Hammertoe's Digsite
    { action="info", name="Travel to Hammertoe's Digsite", note="Run north to Hammertoe's Digsite.", coords={x=53,y=34} },
    { action="interact", quest=720, name="A Sign of Hope", target="Crumpled Map", coords={x=53.0,y=33.8}, note="Loot the Crumpled Map at the southern tent to accept A Sign of Hope." },
    { action="collect", quest=719, name="A Dwarf and His Tools", item="Ryedol's Lucky Pick", coords={x=53,y=34}, note="Kill Shadowforge dwarves for Ryedol's Lucky Pick." },
    
    -- Camp Kosh
    { action="info", name="Travel to Camp Kosh", note="Grind northeast to Camp Kosh.", coords={x=70,y=23.5} },
    { action="collect", quest=718, name="Mirages", item="Excavation Supply Crate", coords={x=70.0,y=23.5}, note="Loot Excavation Supply Crate near the cauldron." },
    
    -- Return to digsite camp
    { action="turnin", quest=718, name="Mirages", npc="Sigrun Ironhew", coords={x=53.7,y=43.3}, note="Turn in Mirages to Sigrun Ironhew." },
    { action="accept", quest=733, name="Scrounging", npc="Sigrun Ironhew", coords={x=53.7,y=43.3}, note="Accept Scrounging from Sigrun Ironhew." },
    { action="turnin", quest=719, name="A Dwarf and His Tools", npc="Prospector Ryedol", coords={x=53.7,y=43.6}, note="Turn in A Dwarf and His Tools to Prospector Ryedol." },
    { action="turnin", quest=720, name="A Sign of Hope", npc="Prospector Ryedol", coords={x=53.7,y=43.6}, note="Turn in A Sign of Hope to Prospector Ryedol." },
    { action="accept", quest=721, name="A Sign of Hope", npc="Prospector Ryedol", coords={x=53.7,y=43.6}, note="Accept the follow-up A Sign of Hope quest." },
    
    -- Optional Rogue weapon
    { action="info", name="Rogue Equipment", note="Rogues: Equip Ryedol's Hammer mainhand if obtained.", coords={x=53.7,y=43.6} },
    
    -- Uldaman entrance area
    { action="info", name="Travel to Uldaman", note="GROUP 2+ recommended. Grind northwest to the entrance of Uldaman.", coords={x=42,y=24} },
    { action="turnin", quest=721, name="A Sign of Hope", npc="Hammertoe Grez", coords={x=42.4,y=25.9}, note="Find Hammertoe Grez in the tunnel and turn in A Sign of Hope." },
    { action="accept", quest=722, name="Amulet of Secrets", npc="Hammertoe Grez", coords={x=42.4,y=25.9}, note="Accept Amulet of Secrets from Hammertoe Grez." },
    { action="collect", quest=722, name="Amulet of Secrets", item="Shattered Necklace", coords={x=42,y=24}, note="Kill Shadowforge dwarves for Shattered Necklace. Shadowforge Surveyors are easiest. Keep the necklace for later!" },
    
    -- Dustbowl camp
    { action="info", name="Travel to Dustbowl", note="Grind southwest to the dustbowl camp.", coords={x=26,y=45} },
    { action="accept", quest=710, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept Study of the Elements: Rock from Lotwil Veriatus." },
    { action="turnin", quest=713, name="Coolant Heads Prevail", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in Coolant Heads Prevail if you have it." },
    { action="accept", quest=714, name="Gyro... What?", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept Gyro... What? from Lotwil Veriatus." },
    { action="turnin", quest=714, name="Gyro... What?", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in Gyro... What? if you have the Gyrochronatom." },
    { action="accept", quest=715, name="Liquid Stone", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Accept Liquid Stone from Lucien Tosselwrench." },
    { action="turnin", quest=715, name="Liquid Stone", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Turn in Liquid Stone if you have Frost Oil." },
    
    -- Lesser Rock Elementals
    { action="info", name="Hunt Lesser Rock Elementals", note="Grind west to hunt Lesser Rock Elementals.", coords={x=20,y=45} },
    { action="collect", quest=710, name="Study of the Elements: Rock", item="Small Stone Shard", coords={x=20,y=45}, note="Kill Lesser Rock Elementals for 10 Small Stone Shards." },
    { action="collect", quest=2500, name="Badlands Reagent Run", item="Rock Elemental Shard", coords={x=20,y=45}, note="Kill Lesser Rock Elementals for 5 Rock Elemental Shards for Badlands Reagent Run." },
    
    -- Return to dustbowl camp
    { action="turnin", quest=710, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in Study of the Elements: Rock to Lotwil Veriatus." },
    { action="accept", quest=711, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept the follow-up Study of the Elements: Rock quest." },
    
    -- Fang camp
    { action="info", name="Travel to Fang Camp", note="Grind east to the fang camp.", coords={x=42,y=53} },
    { action="turnin", quest=1106, name="Martek the Exiled", npc="Martek the Exiled", coords={x=42.2,y=52.9}, note="Turn in Martek the Exiled to Martek the Exiled." },
    { action="accept", quest=1108, name="Indurium", npc="Martek the Exiled", coords={x=42.2,y=52.9}, note="Accept Indurium from Martek the Exiled." },
    { action="accept", quest=703, name="Barbecued Buzzard Wings", npc="Rigglefuzz", coords={x=42.4,y=52.5}, note="Accept Barbecued Buzzard Wings from Rigglefuzz." },
    { action="info", name="Repair and Sell", note="Repair and sell items at Jazzrik.", coords={x=42.6,y=52.8} },
    
    -- Agmond's End
    { action="info", name="Travel to Agmond's End", note="Grind southeast to Agmond's End.", coords={x=51,y=62.5} },
    { action="turnin", quest=738, name="Find Agmond", npc="Battered Dwarven Skeleton", coords={x=50.9,y=62.4}, note="Loot Battered Dwarven Skeleton to turn in Find Agmond." },
    { action="accept", quest=739, name="Murdaloc", npc="Battered Dwarven Skeleton", coords={x=50.9,y=62.4}, note="Accept Murdaloc from the skeleton." },
    { action="kill", quest=739, name="Murdaloc", mob="Stonevault Bonesnapper", coords={x=51,y=62}, note="Kill 12 Stonevault Bonesnappers around Agmond's End." },
    { action="kill", quest=739, name="Murdaloc", mob="Murdaloc", coords={x=51,y=62}, note="Kill Murdaloc (rare spawn) if found." },
    { action="collect", quest=1108, name="Indurium", item="Indurium Flake", coords={x=51,y=62}, note="Kill Stonevault mobs for 10 Indurium Flakes." },
    
    -- Rock Elementals area
    { action="info", name="Travel to Rock Elementals", note="Grind southwest to the Rock Elementals area.", coords={x=51,y=77} },
    { action="accept", quest=709, name="Solution to Doom", npc="Theldurin the Lost", coords={x=51.4,y=76.9}, note="Accept Solution to Doom from Theldurin the Lost." },
    { action="collect", quest=711, name="Study of the Elements: Rock", item="Large Stone Slab", coords={x=51,y=77}, note="Kill Rock Elementals for 3 Large Stone Slabs." },
    
    -- Buzzards and Coyotes
    { action="info", name="Hunt in the Valley", note="Grind northeast to the valley between the 5 mesas to hunt buzzards and coyotes.", coords={x=45,y=65} },
    { action="collect", quest=2500, name="Badlands Reagent Run", item="Buzzard Gizzard", coords={x=45,y=65}, note="Kill Buzzards for 5 Buzzard Gizzards." },
    { action="collect", quest=2500, name="Badlands Reagent Run", item="Crag Coyote Fang", coords={x=45,y=65}, note="Kill Feral Crag Coyotes for 10 Crag Coyote Fangs." },
    { action="collect", quest=703, name="Barbecued Buzzard Wings", item="Buzzard Wing", coords={x=45,y=65}, note="Kill Buzzards for 4 Buzzard Wings." },
    
    -- Return to fang camp
    { action="turnin", quest=1108, name="Indurium", npc="Martek the Exiled", coords={x=42.2,y=52.9}, note="Turn in Indurium to Martek the Exiled." },
    { action="accept", quest=1137, name="News for Fizzle", npc="Martek the Exiled", coords={x=42.2,y=52.9}, note="Accept News for Fizzle from Martek the Exiled." },
    { action="turnin", quest=703, name="Barbecued Buzzard Wings", npc="Rigglefuzz", coords={x=42.4,y=52.5}, note="Turn in Barbecued Buzzard Wings to Rigglefuzz." },
    { action="accept", quest=2418, name="Power Stones", npc="Rigglefuzz", coords={x=42.4,y=52.5}, note="Accept Power Stones from Rigglefuzz." },
    { action="info", name="Repair and Sell", note="Repair and sell items at Jazzrik.", coords={x=42.6,y=52.8} },
    
    -- Return to dustbowl camp
    { action="turnin", quest=711, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in Study of the Elements: Rock to Lotwil Veriatus." },
    { action="accept", quest=712, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept the final Study of the Elements: Rock quest." },
    
    -- Dustbelch Grotto
    { action="info", name="Travel to Dustbelch Grotto", note="Grind far southwest to Dustbelch Grotto.", coords={x=15,y=65} },
    { action="collect", quest=733, name="Scrounging", item="Scrap Metal", coords={x=15,y=65}, note="Kill Dustbelcher ogres for 7 Scrap Metal." },
    
    -- Greater Rock Elementals
    { action="info", name="Hunt Greater Rock Elementals", note="Go west up the hill to hunt Greater Rock Elementals.", coords={x=10,y=60} },
    { action="collect", quest=712, name="Study of the Elements: Rock", item="Bracers of Rock Binding", coords={x=10,y=60}, note="Kill Greater Rock Elementals for 5 Bracers of Rock Binding." },
    
    -- Final turn-ins at dustbowl camp
    { action="turnin", quest=712, name="Study of the Elements: Rock", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in Study of the Elements: Rock to Lotwil Veriatus." },
    { action="accept", quest=734, name="This Is Going to Be Hard", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept This Is Going to Be Hard if you did the prereqs." },
    { action="accept", quest=716, name="Stone Is Better than Cloth", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Accept Stone Is Better than Cloth from Lucien Tosselwrench." },
    { action="turnin", quest=716, name="Stone Is Better than Cloth", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Turn in Stone Is Better than Cloth if you have Patterned Bronze Bracers." },
    { action="turnin", quest=734, name="This Is Going to Be Hard", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Turn in This Is Going to Be Hard to Lucien Tosselwrench." },
    { action="accept", quest=777, name="This Is Going to Be Hard", npc="Lucien Tosselwrench", coords={x=25.8,y=44.2}, note="Accept the follow-up This Is Going to Be Hard quest." },
    { action="turnin", quest=777, name="This Is Going to Be Hard", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in This Is Going to Be Hard to Lotwil Veriatus." },
    { action="accept", quest=778, name="This Is Going to Be Hard", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Accept the final This Is Going to Be Hard quest (GROUP 2+ required)." },
    { action="kill", quest=778, name="This Is Going to Be Hard", mob="Fam'retor Guardian", coords={x=25.9,y=44.8}, note="GROUP 2+: Kill Fam'retor Guardian for Lotwil's Shackles of Elemental Binding." },
    { action="turnin", quest=778, name="This Is Going to Be Hard", npc="Lotwil Veriatus", coords={x=25.9,y=44.8}, note="Turn in This Is Going to Be Hard (rewards Nifty Stopwatch)." },
    
    -- Level to 40
    { action="info", name="Reach Level 40", note="Grind nearby until you reach Level 40.", coords={x=25.9,y=44.8} },
    
    -- Level 40 mount and spells
    { action="info", name="Hearthstone to Ironforge", note="Use Hearthstone to return to Ironforge for mount and spells.", coords={x=32,y=36} },
    { action="info", name="Learn Level 40 Spells", note="Visit your class trainer to learn level 40 spells.", coords={x=32,y=36} },
    { action="info", name="Purchase Mount", note="Buy your mount if you have enough gold (90-100g). Check appropriate vendor for your race.", coords={x=32,y=36} },
    
    -- Shattered Necklace quest
    { action="interact", quest=2198, name="The Shattered Necklace", target="Shattered Necklace", coords={x=32,y=36}, note="Use the Shattered Necklace to accept The Shattered Necklace quest." },
    { action="turnin", quest=2198, name="The Shattered Necklace", npc="Talvash del Kissel", coords={x=37.0,y=32.4}, note="Go to Mystic Ward and turn in The Shattered Necklace to Talvash del Kissel." },
    { action="accept", quest=2199, name="Lore for a Price", npc="Talvash del Kissel", coords={x=37.0,y=32.4}, note="Accept Lore for a Price from Talvash del Kissel." },
    { action="info", name="Buy Silver Bars", note="Buy 5 Silver Bars from Auction House if needed.", coords={x=24,y=52} },
    { action="turnin", quest=2199, name="Lore for a Price", npc="Talvash del Kissel", coords={x=37.0,y=32.4}, note="Turn in Lore for a Price (requires 5 Silver Bars)." },
    { action="accept", quest=2200, name="Back to Uldaman", npc="Talvash del Kissel", coords={x=37.0,y=32.4}, note="Accept Back to Uldaman from Talvash del Kissel." },
    
    -- Hall of Explorers quests
    { action="accept", quest=1360, name="Reclaimed Treasures", npc="Krom Stoutarm", coords={x=75.1,y=25.0}, note="Accept Reclaimed Treasures from Krom Stoutarm at Hall of Explorers." },
    { action="accept", quest=2398, name="The Lost Dwarves", npc="Prospector Stormpike", coords={x=75.0,y=25.1}, note="Accept The Lost Dwarves from Prospector Stormpike." },
    
    -- Return to Loch Modan
    { action="info", name="Fly to Thelsamar", note="Fly from Ironforge to Thelsamar.", coords={x=55.5,y=47.8} },
    { action="turnin", quest=2500, name="Badlands Reagent Run", npc="Ghak Healtouch", coords={x=37.0,y=49.0}, note="Turn in Badlands Reagent Run to Ghak Healtouch in southern middle house." },
    { action="accept", quest=17, name="Uldaman Reagent Run", npc="Ghak Healtouch", coords={x=37.0,y=49.0}, note="Accept Uldaman Reagent Run from Ghak Healtouch." },
    
    -- Ironband's Excavation Site
    { action="turnin", quest=739, name="Murdaloc", npc="Prospector Ironband", coords={x=65.9,y=65.6}, note="Run southeast around the loch to Ironband's Excavation Site and turn in Murdaloc." },
    { action="accept", quest=704, name="Agmond's Fate", npc="Prospector Ironband", coords={x=65.9,y=65.6}, note="Accept Agmond's Fate from Prospector Ironband." },
    { action="info", name="Equipment", note="Paladins/Warriors: Equip Rock Pulverizer if obtained.", coords={x=65.9,y=65.6} },
    
    -- Uldaman Pre-Instance
    { action="info", name="Travel to Uldaman", note="Run southwest to Badlands and to Uldaman Pre-Instance entrance. GROUP 3+ recommended.", coords={x=43,y=13.5} },
    { action="info", name="Uldaman Pre-Instance", note="You should have 8 quests for Uldaman: Power Stones, Agmond's Fate, Uldaman Reagent Run, Amulet of Secrets, Solution to Doom, Reclaimed Treasures, The Lost Dwarves, Back to Uldaman.", coords={x=43,y=13.5} },
    
    -- Uldaman dungeon objectives
    { action="collect", quest=2418, name="Power Stones", item="Dentrium Power Stone", coords={x=43,y=13.5}, note="Kill Shadowforge dwarves for 8 Dentrium Power Stones." },
    { action="collect", quest=2418, name="Power Stones", item="An'Alleum Power Stone", coords={x=43,y=13.5}, note="Kill Shadowforge dwarves for 8 An'Alleum Power Stones." },
    { action="collect", quest=704, name="Agmond's Fate", item="Carved Stone Urn", coords={x=43,y=13.5}, note="Loot 4 Carved Stone Urns from containers." },
    { action="collect", quest=17, name="Uldaman Reagent Run", item="Magenta Fungus Cap", coords={x=43,y=13.5}, note="Loot Magenta Cap Clusters for 12 Magenta Fungus Caps." },
    { action="kill", quest=722, name="Amulet of Secrets", mob="Magregan Deepshadow", coords={x=43,y=13.5}, note="Kill Magregan Deepshadow for Hammertoe's Amulet." },
    { action="collect", quest=709, name="Solution to Doom", item="Tablet of Ryun'eh", coords={x=43,y=13.5}, note="Loot Ancient Chest for Tablet of Ryun'eh." },
    { action="collect", quest=1360, name="Reclaimed Treasures", item="Krom Stoutarm's Treasure", coords={x=43,y=13.5}, note="Loot Krom Stoutarm's Treasure." },
    { action="turnin", quest=722, name="Amulet of Secrets", npc="Hammertoe Grez", coords={x=43,y=13.5}, note="Turn in Amulet of Secrets to Hammertoe Grez." },
    { action="accept", quest=723, name="Prospect of Faith", npc="Hammertoe Grez", coords={x=43,y=13.5}, note="Accept Prospect of Faith from Hammertoe Grez." },
    
    -- Enter Uldaman proper
    { action="info", name="Enter Uldaman Dungeon", note="Enter Uldaman dungeon proper (GROUP 5+ recommended for full run).", coords={x=43,y=13.5} },
    { action="turnin", quest=2398, name="The Lost Dwarves", npc="Baelog", coords={x=43,y=13.5}, note="Find Baelog in the dirt room and turn in The Lost Dwarves." },
    { action="accept", quest=2240, name="The Hidden Chamber", npc="Baelog", coords={x=43,y=13.5}, note="Accept The Hidden Chamber from Baelog." },
    { action="turnin", quest=2200, name="Back to Uldaman", npc="Remains of a Paladin", coords={x=43,y=13.5}, note="Find Remains of a Paladin in the green halls and turn in Back to Uldaman." },
    { action="accept", quest=2201, name="Find the Gems", npc="Remains of a Paladin", coords={x=43,y=13.5}, note="Accept Find the Gems from Remains of a Paladin." },
    
    -- Optional full Uldaman run
    { action="info", name="Optional Full Run", note="GROUP 5+: You can continue full Uldaman and finish The Hidden Chamber and Find the Gems quests. Otherwise abandon them.", coords={x=43,y=13.5} },
    
    -- Return to Ironforge
    { action="info", name="Hearthstone to Ironforge", note="Use Hearthstone to return to Ironforge.", coords={x=32,y=36} },
    { action="turnin", quest=1360, name="Reclaimed Treasures", npc="Krom Stoutarm", coords={x=75.1,y=25.0}, note="Turn in Reclaimed Treasures to Krom Stoutarm at Hall of Explorers." },
    
    -- Return to Thelsamar
    { action="info", name="Fly to Thelsamar", note="Fly from Ironforge to Thelsamar.", coords={x=55.5,y=47.8} },
    { action="turnin", quest=17, name="Uldaman Reagent Run", npc="Ghak Healtouch", coords={x=37.0,y=49.0}, note="Turn in Uldaman Reagent Run to Ghak Healtouch. Save Restorative Potion for Level 60 raiding." },
    { action="turnin", quest=704, name="Agmond's Fate", npc="Prospector Ironband", coords={x=65.9,y=65.6}, note="Turn in Agmond's Fate to Prospector Ironband." },
    
    -- Final Badlands quests
    { action="info", name="Return to Badlands", note="Run southwest to Badlands.", coords={x=54,y=43} },
    { action="turnin", quest=733, name="Scrounging", npc="Sigrun Ironhew", coords={x=53.7,y=43.3}, note="Turn in Scrounging to Sigrun Ironhew at digsite camp." },
    { action="turnin", quest=723, name="Prospect of Faith", npc="Prospector Ryedol", coords={x=53.7,y=43.6}, note="Turn in Prospect of Faith to Prospector Ryedol." },
    { action="accept", quest=724, name="Prospect of Faith", npc="Prospector Ryedol", coords={x=53.7,y=43.6}, note="Accept the follow-up Prospect of Faith quest." },
    { action="turnin", quest=2418, name="Power Stones", npc="Rigglefuzz", coords={x=42.4,y=52.5}, note="Run southwest to fang camp and turn in Power Stones to Rigglefuzz." },
    
    -- Garek and Tremors of the Earth
    { action="accept", quest=732, name="Tremors of the Earth", npc="Garek", coords={x=61.8,y=54.2}, note="Run east to Garek and accept Tremors of the Earth." },
    { action="turnin", quest=709, name="Solution to Doom", npc="Theldurin the Lost", coords={x=51.4,y=76.9}, note="Grind southwest to Theldurin the Lost and turn in Solution to Doom (rewards Skull of Impending Doom). Skip follow-up." },
    { action="kill", quest=732, name="Tremors of the Earth", mob="Boss Tho'grun", coords={x=50,y=68}, note="Kill the patroller Boss Tho'grun for Sign of the Earth." },
    { action="turnin", quest=732, name="Tremors of the Earth", npc="Garek", coords={x=61.8,y=54.2}, note="Return to Garek and turn in Tremors of the Earth." },
    
    -- Travel to Ironforge and continue
    { action="info", name="Return to Ironforge", note="Mages: Use Teleport to Ironforge. Others: Run north to Thelsamar and fly to Ironforge.", coords={x=32,y=36} },
    { action="turnin", quest=724, name="Prospect of Faith", npc="Historian Karnik", coords={x=77.2,y=11.8}, note="Turn in Prospect of Faith to Historian Karnik at Hall of Explorers." },
    { action="accept", quest=725, name="Passing Word of a Threat", npc="Historian Karnik", coords={x=77.2,y=11.8}, note="Accept Passing Word of a Threat from Historian Karnik." },
    { action="turnin", quest=725, name="Passing Word of a Threat", npc="Advisor Belgrum", coords={x=77.2,y=9.7}, note="Turn in Passing Word of a Threat to Advisor Belgrum." },
    { action="accept", quest=726, name="Passing Word of a Threat", npc="Advisor Belgrum", coords={x=77.2,y=9.7}, note="Accept the follow-up Passing Word of a Threat quest." },
    { action="turnin", quest=726, name="Passing Word of a Threat", npc="Historian Karnik", coords={x=77.2,y=11.8}, note="Turn in Passing Word of a Threat to Historian Karnik." },
    
    -- Travel to Stormwind
    { action="info", name="Fly to Stormwind", note="Fly from Ironforge to Stormwind.", coords={x=74.6,y=51.0} },
    { action="info", name="Rogue Equipment", note="Rogues: Buy a Falchion from Heinrich Stone in Old Town and equip it mainhand.", coords={x=57.2,y=16.2} },
    { action="accept", quest=1448, name="In Search of The Temple", npc="Caskbelly", coords={x=64.3,y=20.7}, note="Accept In Search of The Temple from Caskbelly in Dwarven District." },
    
    -- Final destination
    { action="info", name="Fly to Booty Bay", note="Fly from Stormwind to Booty Bay to continue your journey.", coords={x=66.3,y=62.1} },
    
    { nextGuide = "Stranglethorn 40-42.lua" }
  }
}