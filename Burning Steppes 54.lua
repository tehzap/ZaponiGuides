LevelingGuide_BurningSteppes = {
  steps = {
    { action="info", name="Get Flight Path", note="Get the Morgan's Vigil Flight Path.", coords={x=84.3,y=68.2} },
    { action="accept", quest=3823, name="Extinguish the Firegut", npc="Oralius", coords={x=84.6,y=68.7} },
    { action="accept", quest=4182, name="Dragonkin Menace", npc="Helendis Riverhorn", coords={x=85.8,y=69.0}, note="Onyxia Attunement Quest." },
    { action="kill", quest=3823, name="Extinguish the Firegut", mob={"Firegut Ogre Mage","Firegut Ogre","Firegut Brute"}, coords={x=81.0,y=45.0} },
    { action="accept", quest=4726, name="Broodling Essence", npc="Tinkee Steamboil", coords={x=65.2,y=24.0} },
    { action="turnin", quest=4324, name="Yuka Screwspigot", npc="Yuka Screwspigot", coords={x=66.1,y=21.9}, note="She is in the cave." },
    { action="collect", quest=4726, name="Broodling Essence", item="Broodling Essence", coords={x=80.4,y=26.7}, note="Use Draco-Incarcinatrix 900 on Broodlings. Kill them. If they spawn a Broodling Essence, click it to pick it up." },
    { action="kill", quest=4182, name="Dragonkin Menace", mob="Black Broodling", coords={x=80.4,y=26.7} },
    { action="turnin", quest=4726, name="Broodling Essence", npc="Tinkee Steamboil", coords={x=65.2,y=24.0} },
    { action="accept", quest=4808, name="Felnok Steelspring", npc="Tinkee Steamboil", coords={x=65.2,y=24.0} },
    { action="turnin", quest=3823, name="Extinguish the Firegut", npc="Oralius", coords={x=84.6,y=68.7} },
    { action="info", name="Stormwind", note="Use Teleport: Stormwind or fly to Stormwind.", coords={x=84.3,y=68.3} },
    { action="info", name="Auction House", note="Buy a Mithril Casing from the Auction House for later use.", coords={x=61.1,y=70.7} },
    { action="info", name="Booty Bay", note="Fly to Booty Bay.", coords={x=70.9,y=72.5} },
    { nextGuide = "Stranglethorn 54.lua" }
  }
}