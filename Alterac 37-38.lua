-- Alterac 37-38 Guide
-- Based on https://www.sageguide.net/37-38_alterac

LevelingGuide_Alterac = {
  steps = {
    -- Start: Run northwest to Dalaran
    { action="info", name="Alterac Mountains", note="Go to the Alterac Mountains.", coords={x=29.7,y=26.7} },
    { action="turnin", quest=602, name="Magical Analysis", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5} },
    { action="accept", quest=603, name="Ansirem's Key", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5} },
    { action="accept", quest=55039, name="Seeking Lost Answers", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5}, note="TurtleWoW specific." },
    { action="info", name="Western Plaguelands", note="Grind along the road to Strahnbrad, then go to the Western Plaguelands.", coords={x=80.7,y=34.1} },
    { action="info", name="Get Flight Path", note="Get the Chillwind Camp flight path.", coords={x=43.0,y=85.0} },
    { action="info", name="Alterac Mountains", note="Go to the Alterac Mountains.", coords={x=44.1,y=87.1} },
    { action="collect", quest=55039, name="Seeking Lost Answers", item="Rock Elemental Mastery: Compendium III", coords={x=62.8,y=44.1}, note="Kill Syndicate Wizards for Rock Elemental Mastery: Compendium III. TurtleWoW specific." },
    { action="collect", quest=512, name="Noble Deaths", item="Alterac Signet Ring", coords={x=40.0,y=16.0}, note="Kill Syndicates for Alterac Signet Rings. Grind towards the house at (40, 16)." },
    { action="kill", quest=537, name="Dark Council", mob={"Argus Shadow Mage","Head of Nagaz"}, coords={x=39.20,y=14.4}, note="Nagaz is in the house." },
    { action="info", quest=551, name="The Ensorcelled Parchment", item="Ensorcelled Parchment", coords={x=39.2,y=14.7}, note="Loot Worn Wooden Chest for Ensorcelled Parchment, then use it to accept the Quest." },
    { action="info", name="Grind", note="Grind nearby to Level 38.", coords={x=39.2,y=14.7} },
    { action="turnin", quest=55039, name="Seeking Lost Answers", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5}, note="TurtleWoW specific." },
    { action="accept", quest=55040, name="Returning Property", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5}, note="TurtleWoW specific." },
    { action="collect", quest=55040, name="Returning Property", item="Water-Weaving and Command", coords={x=32.2,y=33.0}, note="Book lies on a table in the house guarded by a Level 33 and 34 Elite.  TurtleWoW specific." },
    { action="turnin", quest=55040, name="Returning Property", npc="Archmage Ansirem Runeweaver", coords={x=18.9,y=78.5}, note="TurtleWoW specific." },
    { action="info", name="Southshore", note="Use Hearthstone to return to Southshore.", coords={x=50.6,y=57.1} },
    { action="turnin", quest=551, name="The Ensorcelled Parchment", npc="Loremaster Dibbs", coords={x=50.6,y=57.1} },
    { action="accept", quest=554, name="Stormpike's Deciphering", npc="Loremaster Dibbs", coords={x=50.6,y=57.1} },
    { action="turnin", quest=512, name="Noble Deaths", npc="Magistrate Henry Maleb", coords={x=48.1,y=59.1} },
    { action="turnin", quest=537, name="Dark Council", npc="Magistrate Henry Maleb", coords={x=48.1,y=59.1} },
    { action="info", name="Arathi", note="Fly to Arathi Highlands.", coords={x=49.3,y=52.3} },
    { nextGuide = "Arathi 38-39.lua" },
  }
}