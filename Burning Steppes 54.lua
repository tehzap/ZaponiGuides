LevelingGuide_BurningSteppes = {
  steps = {
    { action="info", name="Get Flight Path", note="Get the Morgan's Vigil Flight Path.", coords={x=84.3,y=68.2} },
    { action="accept", quest=3823, name="Extinguish the Firegut", npc="Oralius", coords={x=84.6,y=68.7} },
    { action="accept", quest=4182, name="Dragonkin Menace", npc="Helendis Riverhorn", coords={x=85.8,y=69.0}, note="Onyxia Attunement Quest." },
    { action="kill", quest=3823, name="Extinguish the Firegut", mob={"Firegut Ogre Mage","Firegut Ogre","Firegut Brute"}, coords={x=81.0,y=45.0} },
    { action="accept", quest=4726, name="Broodling Essence", npc="Tinkee Steamboil", coords={x=65.2,y=24.0} },
    { action="turnin", quest=4324, name="Yuka Screwspigot", npc="Yuka Screwspigot", coords={x=66.1,y=21.9}, note="She is in the cave." },
    { action="collect", quest=4726, name="Broodling Essence", item="Broodling Essence", coords={x=72.0,y=28.0}, note="Use Draco-Incarcinatrix 900 on Broodlings. Kill them. If they spawn a Broodling Essence, click it to pick it up." },
    
      { action="kill", quest=4182, name="Dragonkin Menace", mob="Black Broodling", coords={x=72.0,y=28.0}, note="Kill 15 Black Broodlings for the Onyxia attunement." },
    
    -- Return to Flamecrest
    { action="turnin", quest=4726, name="Broodling Essence", npc="Tinkee Steamboil", coords={x=65.2,y=24.0}, note="Run northwest back to Flamecrest." },
    { action="accept", quest=4808, name="Felnok Steelspring", npc="Tinkee Steamboil", coords={x=65.2,y=24.0} },
    
    -- Complete Firegut quest
    { action="info", name="Dreadmaul Rock", note="Grind southeast back to Dreadmaul Rock.", coords={x=81.0,y=45.0} },
    { action="kill", quest=3823, name="Extinguish the Firegut", mob={"Firegut Ogre Mage","Firegut Ogre","Firegut Brute"}, coords={x=81.0,y=45.0}, note="Finish killing 15 Firegut Ogre Mages, 7 Firegut Ogres, and 7 Firegut Brutes." },
    
    -- Return to Morgan's Vigil
    { action="turnin", quest=3823, name="Extinguish the Firegut", npc="Oralius", coords={x=84.7,y=68.8}, note="Grind south to Morgan's Vigil." },
    { action="info", name="Repair/Vendor", note="Repair and sell at Felder Stover.", coords={x=84.7,y=69.3} },
    
    -- Transportation options
    { action="info", name="Mage Teleport", note="Mages: Use Teleport: Stormwind.", coords={x=84.3,y=68.2} },
    { action="info", name="Flight Path", note="Others: Fly from Morgan's Vigil to Stormwind.", coords={x=84.3,y=68.2} },
    
    -- Class training in Stormwind
    { action="info", name="Paladin Training", note="Paladins: Learn Divine Shield 2, Holy Wrath, Flash of Light 5, Lay of Hands 3, Devotion Aura 6, Consecration 4, Seal of Command 4.", coords={x=38.7,y=26.9} },
    { action="info", name="Warlock Training", note="Warlocks: Learn Curse of Tongues 2, Dark Pact 2, Create Soulstone (Greater), Death Coil 2, Demon Armor 4, Immolate 6, Detect Greater Invisibility, Searing Pain 5.", coords={x=26.1,y=77.2} },
    { action="info", name="Other Classes", note="Learn new spells from your class trainer in Stormwind.", coords={x=60.0,y=50.0} },
    { action="info", name="Auction House", note="Buy 1 Mithril Casing from the Auction House for later use.", coords={x=53.6,y=59.7} },
    
    -- Level achievement
    { action="info", name="Level 55", note="You should reach Level 55 now.", coords={x=53.6,y=59.7} },
    
    -- Travel to next zone
    { action="info", name="Booty Bay", note="Fly from Stormwind to Booty Bay for Stranglethorn Vale quests.", coords={x=66.3,y=62.1} },
    
    { nextGuide = "Stranglethorn Vale 55.lua" }
  }
}