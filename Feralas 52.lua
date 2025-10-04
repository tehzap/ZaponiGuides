LevelingGuide_Feralas_2 = {
  steps = {
    -- Arrival in Feathermoon
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Feathermoon Stronghold at Innkeeper Shyria.", coords={x=31.0,y=43.5} },
    { action="accept", quest=7003, name="Zapped Giants", npc="Zorbin Fandazzle", coords={x=26.6,y=43.7}, note="Swim east across the water to the dock." },
    { action="accept", quest=7721, name="Fuel for the Zapping", npc="Zorbin Fandazzle", coords={x=26.6,y=43.7} },
    
    -- Coastal quest completion
    { action="info", name="Coast", note="Grind south and north along the coast.", coords={x=26.0,y=47.0} },
    { action="kill", quest=7003, name="Zapped Giants", mob="Wave Strider", coords={x=26.0,y=47.0}, note="Use Zorbin's Ultra-Shrinker on 15 Wave Striders then kill them." },
    { action="collect", quest=7721, name="Fuel for the Zapping", item="Water Elemental Core", coords={x=26.0,y=50.0}, note="Kill Sea Elementals to collect 10 Water Elemental Cores." },
    
    { action="turnin", quest=7003, name="Zapped Giants", npc="Zorbin Fandazzle", coords={x=26.6,y=43.7}, note="Run back to the dock." },
    { action="turnin", quest=7721, name="Fuel for the Zapping", npc="Zorbin Fandazzle", coords={x=26.6,y=43.7} },
    
    -- Twin Colossals area
    { action="info", name="Twin Colossals", note="Run northeast to The Twin Colossals.", coords={x=50.0,y=30.0} },
    { action="collect", quest=1452, name="Rhapsody's Kalimdor Kocktail", item="Ironfur Liver", coords={x=50.0,y=30.0}, note="Kill Ironfur Patriarchs to collect 3 Ironfur Livers." },
    { action="collect", quest=1452, name="Rhapsody's Kalimdor Kocktail", item="Groddoc Liver", coords={x=50.0,y=30.0}, note="Kill Groddoc Thunderers to collect 3 Groddoc Livers." },
    
    -- Rage Scar Hold
    { action="info", name="Rage Scar Hold", note="Enter the cave Rage Scar Hold to the east.", coords={x=53.0,y=32.0} },
    { action="collect", quest=7733, name="Improved Quality", item="Rage Scar Yeti Hide", coords={x=53.0,y=32.0}, note="Kill Rage Scar Yetis to collect 10 Rage Scar Yeti Hides." },
    
    -- Return to Feathermoon
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Feathermoon Stronghold.", coords={x=53.0,y=32.0} },
    { action="turnin", quest=7733, name="Improved Quality", npc="Pratt McGrubben", coords={x=30.6,y=42.7}, note="At the gazebo." },
    
    -- Pristine Yeti Hide (optional)
    { action="accept", quest=7735, name="Pristine Yeti Hide", note="If you got Pristine Yeti Hide, use it to accept this quest.", coords={x=30.6,y=42.7} },
    { action="turnin", quest=7735, name="Pristine Yeti Hide", npc="Pratt McGrubben", coords={x=30.6,y=42.7} },
    
    -- Travel to Darnassus
    { action="info", name="Darnassus", note="Use Teleport: Darnassus or fly to Auberdine and take the boat.", coords={x=31.0,y=43.5} },
    { action="turnin", quest=162, name="Rise of the Silithid", npc="Gracina Spiritmight", coords={x=41.8,y=85.6}, note="Atop the Temple of the Moon." },
    
    -- Rut'Theran Village
    { action="info", name="Rut'Theran", note="Run through the pink portal to Rut'Theran Village.", coords={x=36.0,y=48.0} },
    { action="turnin", quest=3022, name="Handle With Care", npc="Erelas Ambersky", coords={x=55.5,y=92.1}, note="At the house near the dock." },
    { action="turnin", quest=3661, name="Favored of Elune?", npc="Erelas Ambersky", coords={x=55.5,y=92.1} },
    
    -- Flight to Astranaar
    { action="info", name="Astranaar", note="Fly from Rut'Theran Village to Astranaar.", coords={x=58.4,y=94.0} },
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Astranaar at Innkeeper Kimlya.", coords={x=37.0,y=49.2} },
    
    -- Alternative route via Auberdine (for non-mage/druid)
    { action="info", name="Alternative Route", note="Alternative: Fly from Feathermoon to Auberdine, then to Rut'Theran Village.", coords={x=31.0,y=43.5} },
    { action="info", name="Auberdine Hearthstone", note="Alternative: Bind your Hearthstone to Auberdine at Innkeeper Shaussiy.", coords={x=37.0,y=44.1} },
    
    -- Quest turn-ins for different classes
    { action="info", name="Class Specific", note="Druids: Use Teleport: Moonglade, then fly from Nighthaven to Rut'Theran Village.", coords={x=37.0,y=49.2} },
    { action="info", name="Class Specific", note="Mages: Use Teleport: Darnassus for quick access.", coords={x=37.0,y=49.2} },
    
    -- Final preparation
    { action="info", name="Felwood", note="Run east along the road and then all the way north to Felwood.", coords={x=37.0,y=49.2} },
    
    -- Continue quests from previous zones
    { action="info", name="Continue Quests", note="Continue with any remaining quests: Sprinkle's Secret Ingredient, Super Sticky, The Stone Circle.", coords={x=37.0,y=49.2} },
    { action="info", name="Maraudon", note="Optional: Maraudon dungeon is available for groups.", coords={x=37.0,y=49.2} },
    
    { nextGuide = "Felwood 52-53.lua" }
  }
}