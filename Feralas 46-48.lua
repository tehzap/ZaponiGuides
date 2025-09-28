LevelingGuide_Feralas = { 
  steps = {
    { action="info", quest=992, name="Gadgetzan Water Survey", note="Use Untapped Dowsing Widget from your inventory at the Sandsorrow Watch Water Hole.", coords={x=39.0,y=29.1} },
    { action="turnin", quest=992, name="Gadgetzan Water Survey", npc="Senior Surveyor Fizzledowser", coords={x=50.2,y=27.5} },
    { action="info", name="Theramore", note="Fly to Theramore Isle.", coords={x=51.0,y=29.3} },
    { action="turnin", quest=40929, name="The Gilneas Lighthouse", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." }, 
    { action="accept", quest=40930, name="The Gilneas Lighthouse II", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." }, 
    { action="accept", quest=40413, name="Old Bryan's Food Delivery", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." }, 
    { action="accept", quest=40412, name="Delivery Overdue", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." },
    { action="turnin", quest=40413, name="Old Bryan's Food Delivery", npc="Old Bryan", coords={x=72.2,y=47.0}, note="TurtleWoW specific." },
    { action="turnin", quest=40412, name="Delivery Overdue", npc="\"Swamp Eye\" Jarl", coords={x=55.5,y=26.3}, note="TurtleWoW specific." },
    { action="collect", quest=40930, name="The Gilneas Lighthouse II", item="Stolen Oil Shipment", coords={x=46.1,y=46.1}, note="Click Stolen Oil Shipment to pick up Stolen Oil Shipment. TurtleWoW specific." }, 
    --{ action="info", name="Travel to Gizmorium Crate", note="Run southwest to find the Gizmorium Shipping Crate", coords={x=54,y=56} },
    --{ action="interact", quest=1187, name="Razzeric's Tweaking", target="Gizmorium Shipping Crate", coords={x=54,y=56} },
    -- Mage quest (Mages only)
    --{ action="info", name="Mage quest", note="Mages: If you completed Rituals of Power in SM Library, visit Tabetha", coords={x=46,y=57} },
    { action="turnin", quest=625, name="Cortello's Riddle", npc="Musty Scroll", coords={x=31.1,y=66.1}, note="Click Musty Scroll to turn-in Quest. In the cave." },
    { action="accept", quest=626, name="Cortello's Riddle", npc="Musty Scroll", coords={x=31.1,y=66.1} },
    { action="turnin", quest=40930, name="The Gilneas Lighthouse II", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." },
    { action="accept", quest=40931, name="The Gilneas Lighthouse III", npc="Dockmaster Lorman", coords={x=68.9,y=52.6}, note="TurtleWoW specific." }, 
    { action="info", name="Feathermoon", note="Fly to Feathermoon in Feralas.", coords={x=51,y=29} },
    { action="accept", quest=2821, name="The Mark of Quality", npc="Pratt McGrubben", coords={x=30.6,y=42.7} },
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Feathermoon Stronghold at Innkeeper Shyria.", coords={x=31.0,y=43.5} },
    { action="accept", quest=2866, name="The Ruins of Solarsal", npc="Shandris Feathermoon", coords={x=30.3,y=46.2} },
    { action="accept", quest=4124, name="The Missing Courier", npc="Latronicus Moonspear", coords={x=30.4,y=46.2} },
    { action="accept", quest=2982, name="The High Wilderness", npc="Angelas Moonbreeze", coords={x=31.8,y=45.6} },
    { action="accept", quest=2939, name="In Search of Knowledge", npc="Troyas Moonbreeze", coords={x=31.8,y=45.5} },
    { action="turnin", quest=4124, name="The Missing Courier", npc="Ginro Hearthkindle", coords={x=31.9,y=45.1}, note="He is upstairs." },
    { action="accept", quest=4125, name="The Missing Courier", npc="Ginro Hearthkindle", coords={x=31.9,y=45.1} },
    { action="turnin", quest=2866, name="The Ruins of Solarsal", npc="Solarsal Gazebo", coords={x=26.3,y=52.3}, note="Click Solarsal Gazebo to turn-in the Quest." },
    { action="accept", quest=2867, name="Return to Feathermoon Stronghold", npc="Solarsal Gazebo", coords={x=26.3,y=52.3} },
    { action="turnin", quest=2867, name="Return to Feathermoon Stronghold", npc="Shandris Feathermoon", coords={x=30.3,y=46.2} },
    { action="accept", quest=3130, name="Against the Hatecrest", npc="Shandris Feathermoon", coords={x=30.3,y=46.2} },
    { action="turnin", quest=3130, name="Against the Hatecrest", npc="Latronicus Moonspear", coords={x=30.4,y=46.2} },
    { action="accept", quest=2869, name="Against the Hatecrest", npc="Latronicus Moonspear", coords={x=30.4,y=46.2} },
    { action="collect", quest=2869, name="Against the Hatecrest", item="Hatecrest Naga Scale", coords={x=26.9,y=54.0}, note="Kill Hatecrest Naga to pick up Hatecrest Naga Scales." },
    { action="turnin", quest=2869, name="Against the Hatecrest", npc="Latronicus Moonspear", coords={x=30.4,y=46.2} },
    { action="accept", quest=2870, name="Against Lord Shalzaru", npc="Latronicus Moonspear", coords={x=30.4,y=46.2} },
    
    -- Level 45 milestone
    { action="info", name="Level 45", note="You should reach Level 45 around this time. Use Alterac Swiss and Morning Glory Dew for food/water", coords={x=30,y=43} },
    
    -- Isle of Dread - Lord Shalzaru
    { action="info", name="Travel to Isle of Dread", note="Run southwest to the cave on southern island", coords={x=28,y=70} },
    { action="kill", quest=2870, name="Against Lord Shalzaru", mob="Lord Shalzaru", coords={x=28,y=70} },
    
    -- Return to Feathermoon
    { action="turnin", quest=2870, name="Against Lord Shalzaru", npc="Latronicus Moonspear", coords={x=30,y=46} },
    { action="accept", quest=2871, name="Delivering the Relic", npc="Latronicus Moonspear", coords={x=30,y=46} },
    { action="turnin", quest=2871, name="Delivering the Relic", npc="Vestia Moonspear", coords={x=30,y=46} },
    
    -- Screecher Spirits
    { action="kill", quest=3520, name="Screecher Spirits", mob="Rogue Vale Screecher", coords={x=33,y=43} },
    
    -- Wrecked Row Boat
    { action="info", name="Travel south for boat wreckage", note="Run all the way south underwater", coords={x=45,y=65} },
    { action="interact", quest=4125, name="The Missing Courier", target="Wrecked Row Boat", coords={x=45,y=65} },
    { action="turnin", quest=4125, name="The Missing Courier", npc="Wrecked Row Boat", coords={x=45,y=65} },
    { action="accept", quest=4127, name="Boat Wreckage", npc="Wrecked Row Boat", coords={x=45,y=65} },
    
    -- Hearthstone back
    { action="info", name="Hearthstone to Feathermoon", note="Use Hearthstone to return to Feathermoon Stronghold", coords={x=30,y=43} },
    { action="turnin", quest=4127, name="Boat Wreckage", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    { action="accept", quest=4129, name="The Knife Revealed", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    { action="turnin", quest=4129, name="The Knife Revealed", npc="Quintis Jonespyre", coords={x=32,y=43} },
    { action="accept", quest=4130, name="Psychometric Reading", npc="Quintis Jonespyre", coords={x=32,y=43} },
    { action="turnin", quest=4130, name="Psychometric Reading", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    { action="accept", quest=4131, name="The Woodpaw Gnolls", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    
    -- Feral Scar Vale - Yeti farming
    { action="info", name="Travel to Feral Scar Vale", note="Run east up the hill and southeast to cave", coords={x=55,y=55} },
    { action="collect", quest=2821, name="The Mark of Quality", item="Thick Yeti Hide", coords={x=55,y=55} },
    
    -- OOX-22/FE (optional)
    { action="info", name="OOX-22/FE Distress Beacon", note="If OOX-22/FE Distress Beacon drops, use it and complete robot quest (skip escort)", coords={x=55,y=55} },
    
    -- Ruins of Isildien - Gordunni ogres
    { action="info", name="Travel to Ruins of Isildien", note="Grind southeast to Ruins of Isildien", coords={x=60,y=64} },
    { action="kill", quest=2982, name="The High Wilderness", mob={"Gordunni Warlock","Gordunni Shaman","Gordunni Brute"}, coords={x=60,y=64} },
    
    -- Hippogryph Egg
    { action="info", name="Travel to Fray Feather Highlands", note="Run south to hill passage", coords={x=58,y=75} },
    { action="interact", quest=0, name="Hippogryph Egg", target="Hippogryph Egg", coords={x=58,y=77} },
    
    -- Sprite Darter quest chain (GROUP 2+)
    { action="info", name="Grimtotem Camp (GROUP 2+)", note="GROUP 2+ REQUIRED: Run northeast to Grimtotem Camp", coords={x=66,y=46} },
    { action="accept", quest=2969, name="Freedom for All Creatures", npc="Kindal Moonweaver", coords={x=66,y=45} },
    { action="kill", quest=2969, name="Freedom for All Creatures", mob="Sprite Darter", coords={x=66,y=46} },
    { action="turnin", quest=2969, name="Freedom for All Creatures", npc="Kindal Moonweaver", coords={x=66,y=45} },
    { action="accept", quest=2970, name="Doling Justice", npc="Kindal Moonweaver", coords={x=66,y=45} },
    
    -- Grimtotem Compound
    { action="kill", quest=2970, name="Doling Justice", mob={"Grimtotem Naturalist","Grimtotem Raider","Grimtotem Shaman"}, coords={x=68,y=40} },
    { action="turnin", quest=2970, name="Doling Justice", npc="Jer'kai Moonweaver", coords={x=66,y=45} },
    { action="accept", quest=2972, name="Doling Justice", npc="Jer'kai Moonweaver", coords={x=66,y=45} },
    
    -- Woodpaw Hills
    { action="info", name="Travel to Woodpaw Hills", note="Grind southeast to Woodpaw Hills", coords={x=73,y=56} },
    { action="interact", quest=4131, name="The Woodpaw Gnolls", target="Large Leather Backpacks", coords={x=73,y=56} },
    { action="turnin", quest=4131, name="The Woodpaw Gnolls", npc="Large Leather Backpacks", coords={x=73,y=56} },
    { action="accept", quest=4135, name="The Writhing Deep", npc="Large Leather Backpacks", coords={x=73,y=56} },
    
    -- The Writhing Deep
    { action="info", name="Travel to The Writhing Deep", note="Run southeast to the hive", coords={x=73,y=63} },
    { action="interact", quest=4135, name="The Writhing Deep", target="Zukk'ash Pod", coords={x=73,y=63} },
    { action="turnin", quest=4135, name="The Writhing Deep", npc="Zukk'ash Pod", coords={x=73,y=63} },
    { action="accept", quest=4265, name="Freed from the Hive", npc="Zukk'ash Pod", coords={x=73,y=63} },
    
    -- Grind to Level 45 
    { action="info", name="Grind to Level 45", note="Grind nearby until Level 45 and 17 bars", coords={x=73,y=63} },
    
    -- Return to Feathermoon
    { action="info", name="Hearthstone to Feathermoon", note="Use Hearthstone to return to Feathermoon Stronghold", coords={x=30,y=43} },
    { action="turnin", quest=2821, name="The Mark of Quality", npc="Pratt McGrubben", coords={x=30,y=42} },
    { action="accept", quest=7733, name="Improved Quality", npc="Pratt McGrubben", coords={x=30,y=42} },
    { action="info", name="Repair and Sell", note="Repair and sell items at Dulciea Frostmoon", coords={x=31,y=43} },
    { action="turnin", quest=2982, name="The High Wilderness", npc="Angelas Moonbreeze", coords={x=31,y=45} },
    { action="turnin", quest=4265, name="Freed from the Hive", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    { action="accept", quest=4266, name="A Hero's Welcome", npc="Ginro Hearthkindle", coords={x=31,y=45} },
    { action="turnin", quest=4266, name="A Hero's Welcome", npc="Shandris Feathermoon", coords={x=30,y=46} },
    { action="accept", quest=4267, name="Rise of the Silithid", npc="Shandris Feathermoon", coords={x=30,y=46} },
    
    -- Equipment rewards
    { action="info", name="Equipment Reward", note="Rogues: Equip Ceremonial Elven Blade offhand. Others: Sanctimonial Rod for eating/drinking", coords={x=30,y=46} },
    { action="accept", quest=3445, name="The Sunken Temple", npc="Angelas Moonbreeze", coords={x=31,y=45} },
    
    -- Level 46 milestone  
    { action="info", name="Level 46", note="You should reach Level 46 here", coords={x=30,y=43} },
    
    -- Travel to Darnassus/Rut'theran Village
    { action="info", name="Travel to Darnassus", note="Druids: Use Teleport Moonglade then fly. Mages: Use Teleport Darnassus. Others: Fly to Rut'theran Village", coords={x=30,y=43} },
    
    -- Darnassus turn-ins
    { action="turnin", quest=4267, name="Rise of the Silithid", npc="Gracina Spiritmight", coords={x=43,y=76} },
    { action="turnin", quest=2972, name="Doling Justice", npc="Tyrande Whisperwind", coords={x=43,y=76} },
    
    -- Rut'theran Village quests
    { action="accept", quest=3661, name="Favored of Elune?", npc="Erelas Ambersky", coords={x=42,y=76} },
    { action="turnin", quest=2939, name="In Search of Knowledge", npc="Daryn Lightwind", coords={x=42,y=76} },
    { action="interact", quest=2940, name="Feralas: A History", target="Feralas: A History", coords={x=42,y=76} },
    { action="turnin", quest=2940, name="Feralas: A History", npc="Daryn Lightwind", coords={x=42,y=76} },
    { action="accept", quest=2941, name="The Borrower", npc="Daryn Lightwind", coords={x=42,y=76} },
    
    -- Learn new spells (class-specific)
    { action="info", name="Learn new spells", note="Learn your level 44 and 46 spells from class trainers in Darnassus", coords={x=43,y=76} },
    
    -- Travel to Hinterlands
    { action="info", name="Travel to Hinterlands", note="Take boat to Menethil Harbor, then fly to Southshore, then run northeast to Hinterlands", coords={x=42,y=76} },
    
    { nextGuide = "Hinterlands 46-47.lua" }
  }
}