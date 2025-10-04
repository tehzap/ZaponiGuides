LevelingGuide_Felwood = {
  steps = {
    { action="accept", quest=5155, name="Forces of Jaedenar", npc="Greta Mosshoof", coords={x=51.2,y=82.1} },
    { action="accept", quest=4421, name="The Corruption of the Jadefire", npc="Eridan Bluewind", coords={x=51.4,y=82.0} },
    { action="accept", quest=8460, name="Timbermaw Ally", npc="Grazle", coords={x=51.0,y=85.0} },
    { action="kill", quest=8460, name="Timbermaw Ally", mob={"Deadwood Warrior","Deadwood Pathfinder","Deadwood Gardener"}, coords={x=48.0,y=88.0} },
    { action="turnin", quest=8460, name="Timbermaw Ally", npc="Grazle", coords={x=51.0,y=85.0} },
    
    -- Become Unfriendly with Timbermaw (continue killing)
    { action="info", name="Reputation", note="Continue killing Deadwood furbolgs until you become Unfriendly with Timbermaw Hold.", coords={x=48.0,y=88.0} },
    
    -- Cursed Ooze collection
    { action="info", name="Ruins of Constellas", note="Run north to the pond at Ruins of Constellas.", coords={x=41.0,y=67.0} },
    { action="collect", quest=4512, name="A Little Slime Goes a Long Way", item="Cursed Ooze", coords={x=41.0,y=67.0}, note="Use Package of Empty Ooze Containers. Kill 6 Cursed Oozes and use Empty Cursed Ooze Jar on their corpses." },
    
    -- Jadefire corruption quest
    { action="info", name="Group Required", note="The next quest requires a group of 2+ players.", coords={x=32.0,y=67.0} },
    { action="info", name="Jadefire Camp", note="Grind west to Xavathras.", coords={x=32.0,y=67.0} },
    { action="kill", quest=4421, name="The Corruption of the Jadefire", mob={"Xavathras","Jadefire Felsworn","Jadefire Shadowstalker","Jadefire Rogue"}, coords={x=32.0,y=67.0}, note="Kill Xavathras, 11 Felsworn, 9 Shadowstalkers (stealth), 9 Rogues." },
    
    -- Tainted Ooze collection
    { action="info", name="Jaedenar Ponds", note="Run north along the road to the ponds outside Jaedenar.", coords={x=35.0,y=60.0} },
    { action="collect", quest=4512, name="A Little Slime Goes a Long Way", item="Tainted Ooze", coords={x=35.0,y=60.0}, note="Kill 6 Tainted Oozes and use Empty Cursed Ooze Jar on their corpses." },
    
    -- Forces of Jaedenar
    { action="info", name="Jaedenar Valley", note="Run into the valley of Jaedenar.", coords={x=37.0,y=59.0} },
    { action="kill", quest=5155, name="Forces of Jaedenar", mob={"Jaedenar Hound","Jaedenar Guardian","Jaedenar Adept","Jaedenar Cultist"}, coords={x=37.0,y=59.0}, note="Kill 4 Hounds, 4 Guardians, 6 Adepts (deadly!), 6 Cultists." },
    
    -- Turn-ins at Emerald Sanctuary
    { action="turnin", quest=5155, name="Forces of Jaedenar", npc="Greta Mosshoof", coords={x=51.2,y=82.1}, note="Run southeast to Emerald Sanctuary." },
    { action="accept", quest=5157, name="Collection of the Corrupt Water", npc="Greta Mosshoof", coords={x=51.2,y=82.1} },
    { action="turnin", quest=4421, name="The Corruption of the Jadefire", npc="Eridan Bluewind", coords={x=51.4,y=82.0}, note="In the house." },
    
    -- Corrupted Moonwell
    { action="info", name="Corrupted Moonwell", note="Run northwest back to Jaedenar, then to the corrupted moonwell.", coords={x=35.0,y=59.0} },
    { action="collect", quest=5157, name="Collection of the Corrupt Water", item="Corrupt Water", coords={x=35.0,y=59.0}, note="At the corrupted moonwell, use Empty Canteen." },
    
    -- Final turn-in
    { action="turnin", quest=5157, name="Collection of the Corrupt Water", npc="Greta Mosshoof", coords={x=51.2,y=82.1}, note="Return to Emerald Sanctuary." },
    { action="accept", quest=5158, name="Seeking Spiritual Aid", npc="Greta Mosshoof", coords={x=51.2,y=82.1} },
    
    -- Level grinding
    { action="info", name="Level Grind", note="Grind nearby until Level 53.", coords={x=51.0,y=82.0} },
    
    -- Travel to Azshara
    { action="info", name="Azshara", note="Run southeast to Ashenvale, then far east to Azshara.", coords={x=51.0,y=82.0} },
    { action="info", name="Flight Point", note="Get the Talrendis Point flight point from Jarrodenus.", coords={x=11.9,y=77.6} },
    
    -- Class training in Darnassus
    { action="info", name="Darnassus", note="Use Teleport: Darnassus, Teleport: Moonglade, or Hearthstone to get to major cities for training.", coords={x=11.9,y=77.6} },
    
    -- Cloth donations in Darnassus
    { action="info", name="Bank", note="In Darnassus: Withdraw 60 Wool, 60 Silk, 60 Mageweave, 60 Runecloth from bank.", coords={x=39.7,y=40.7} },
    { action="turnin", quest=7807, name="A Donation of Wool", npc="Raedon Duskstriker", coords={x=64.7,y=22.0}, note="At the Craftsmen's Terrace." },
    { action="turnin", quest=7808, name="A Donation of Silk", npc="Raedon Duskstriker", coords={x=64.7,y=22.0} },
    { action="turnin", quest=7799, name="A Donation of Mageweave", npc="Raedon Duskstriker", coords={x=64.7,y=22.0} },
    { action="turnin", quest=7805, name="A Donation of Runecloth", npc="Raedon Duskstriker", coords={x=64.7,y=22.0} },
    
    -- High level quests in Darnassus
    { action="accept", quest=4493, name="March of the Silithid", npc="Gracina Spiritmight", coords={x=41.8,y=85.6}, note="Atop the Temple of the Moon." },
    { action="accept", quest=5091, name="A Call to Arms: The Plaguelands!", npc="Herald Moonstalker", coords={x=27.0,y=64.0}, note="Find the patrolling Herald." },
    { action="turnin", quest=3790, name="Assisting Arch Druid Staghelm", npc="Arch Druid Fandral Staghelm", coords={x=35.0,y=9.0}, note="Atop the tower." },
    { action="accept", quest=3764, name="Un'Goro Soil", npc="Arch Druid Fandral Staghelm", coords={x=35.0,y=9.0} },
    
    -- Class specific quests
    { action="accept", quest=8151, name="The Hunter's Charm", npc="Dorion", coords={x=39.5,y=11.0}, note="Hunter quest only." },
    
    -- Travel back to Azshara
    { action="info", name="Return", note="Use Hearthstone to Astranaar or fly back to Talrendis Point.", coords={x=35.0,y=9.0} },
    { action="info", name="Azshara", note="Fly from Rut'Theran Village to Talrendis Point.", coords={x=58.4,y=94.0} },
    
    { nextGuide = "Azshara 53-54.lua" }
  }
}