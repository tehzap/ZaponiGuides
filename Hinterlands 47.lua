LevelingGuide_Hinterlands = {
  steps = {
    -- Arriving at Aerie Peak
    { action="turnin", quest=1449, name="To The Hinterlands", npc="Falstad Wildhammer", coords={x=11.8,y=46.7} },
    { action="accept", quest=1450, name="Gryphon Master Talonaxe", npc="Falstad Wildhammer", coords={x=11.8,y=46.7} },
    
    -- Get flight path
    { action="info", note="Get the Aerie Peak flightpoint at Guthrum Thunderfist.", coords={x=11.1,y=46.1} },
    
    -- Turn in and accept quests at Gryphon Master Talonaxe
    { action="turnin", quest=1450, name="Gryphon Master Talonaxe", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    { action="accept", quest=1451, name="Rhapsody Shindigger", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    { action="accept", quest=2988, name="Witherbark Cages", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    
    -- Wildhammer Keep quests
    { action="accept", quest=2877, name="Skulk Rock Clean-up", npc="Fraggar Thundermantle", coords={x=14.8,y=44.6} },
    { action="accept", quest=2880, name="Troll Necklace Bounty", npc="Fraggar Thundermantle", coords={x=14.8,y=44.6} },
    
    -- Set hearthstone
    { action="info", note="Bind your Hearthstone to Wildhammer Keep at Innkeeper Thulfram.", coords={x=14.1,y=41.3} },
    
    -- Go to Shindigger's Camp
    { action="turnin", quest=1451, name="Rhapsody Shindigger", npc="Rhapsody Shindigger", coords={x=26.9,y=48.5} },
    { action="accept", quest=1452, name="Rhapsody's Kalimdor Kocktail", npc="Rhapsody Shindigger", coords={x=26.9,y=48.5} },
    
    -- Complete Witherbark Cages at Zun'watha
    { action="collect", quest=2988, name="Witherbark Cages", item="First Witherbark Cage", coords={x=23,y=58}, note="Loot First Witherbark Cage at Zun'watha." },
    { action="collect", quest=2988, name="Witherbark Cages", item="Second Witherbark Cage", coords={x=23,y=58}, note="Loot Second Witherbark Cage at Zun'watha." },
    
    -- Go to Hiri'watha and finish Witherbark Cages
    { action="collect", quest=2988, name="Witherbark Cages", item="Third Witherbark Cage", coords={x=32,y=57}, note="Loot Third Witherbark Cage at Hiri'watha." },
    
    -- Complete Troll Necklace Bounty
    { action="kill", quest=2880, name="Troll Necklace Bounty", mob="Witherbark Troll", coords={x=32,y=57} },
    { action="collect", quest=2880, name="Troll Necklace Bounty", item="Troll Tribal Necklace", coords={x=32,y=57}, note="Kill Witherbark trolls for 5 Troll Tribal Necklaces." },
    
    -- Collect Wildkin Feathers while grinding northwest
    { action="collect", quest=3661, name="Favored of Elune?", item="Wildkin Feather", coords={x=25,y=45}, note="Loot 15 Wildkin Feathers from Wildkin while grinding northwest." },
    
    -- Return to Wildhammer Keep
    { action="turnin", quest=2880, name="Troll Necklace Bounty", npc="Fraggar Thundermantle", coords={x=14.8,y=44.6} },
    
    -- Turn in Witherbark Cages and accept The Altar of Zul
    { action="turnin", quest=2988, name="Witherbark Cages", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    { action="accept", quest=2989, name="The Altar of Zul", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    
    -- Go to The Altar of Zul
    { action="info", note="Search the Altar of Zul at the very top of the temple, then run for your life!", coords={x=49,y=68} },
    { action="collect", quest=2989, name="The Altar of Zul", item="Altar Search", coords={x=49,y=68}, note="Search the Altar of Zul at the top of the temple." },
    
    -- Clean up oozes at various locations
    { action="kill", quest=2877, name="Skulk Rock Clean-up", mob={"Green Sludge", "Jade Ooze"}, coords={x=50,y=53}, note="Kill 10 Green Sludge and 10 Jade Ooze at The Creeping Ruin." },
    { action="kill", quest=2877, name="Skulk Rock Clean-up", mob={"Green Sludge", "Jade Ooze"}, coords={x=47,y=40}, note="Continue at Agol'watha." },
    { action="kill", quest=2877, name="Skulk Rock Clean-up", mob={"Green Sludge", "Jade Ooze"}, coords={x=58,y=39}, note="Finish at Skulk Rock." },
    
    -- Go to Jintha'Alor area for Whiskey Slim's Lost Grog
    { action="collect", quest=580, name="Whiskey Slim's Lost Grog", item="Pupellyverbos Port", coords={x=80,y=67}, note="Loot 12 Pupellyverbos Port from barrels at the shore east of Jintha'Alor." },
    
    -- Go to waterfall for Cortello's Riddle
    { action="collect", quest=626, name="Cortello's Riddle", item="Cortello's Treasure", coords={x=80,y=46}, note="Underwater at the waterfall, loot Cortello's Treasure." },
    { action="turnin", quest=626, name="Cortello's Riddle", npc="Cortello's Treasure", coords={x=80,y=46}, note="Grants Explorer's Knapsack." },
    
    -- Hearth back to Wildhammer Keep
    { action="info", note="Hearth to Wildhammer Keep.", coords={x=14.1,y=41.3} },
    
    -- Turn in completed quests
    { action="turnin", quest=2877, name="Skulk Rock Clean-up", npc="Fraggar Thundermantle", coords={x=14.8,y=44.6} },
    { action="turnin", quest=2989, name="The Altar of Zul", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    { action="accept", quest=2990, name="Thadius Grimshade", npc="Gryphon Master Talonaxe", coords={x=9.7,y=44.3} },
    
    -- Go to Ironforge
    { action="info", note="Fly from Aerie Peak to Ironforge.", coords={x=11.1,y=46.1} },
    { action="info", note="At the Bank or Auction House, withdraw 15 Silk Cloth.", coords={x=33.8,y=37.8} },
    
    -- Go to Thelsamar
    { action="info", note="Fly from Ironforge to Thelsamar.", coords={x=55.5,y=47.7} },
    { action="info", note="Bind your Hearthstone to Thelsamar at Innkeeper Hearthstove.", coords={x=34.9,y=48.1} },
    
    -- Head to next zone
    { action="info", note="Run southeast to the Badlands, then southwest to Searing Gorge.", coords={x=34.9,y=48.1} },
    
    { nextGuide = "Searing Gorge 46-48.lua" }
  }
}