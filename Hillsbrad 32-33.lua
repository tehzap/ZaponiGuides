LevelingGuide_Hillsbrad_2 = {
  steps = {
    { action="accept", quest=564, name="Costly Menace", npc="Darren Malvew", coords={x=52.4,y=55.9} },
    { action="info", name="Buy Soothing Spices", note="Buy 1x Soothing Spices from Micha Yance.", coords={x=48.9,y=55.0} },
    { action="accept", quest=500, name="Crushridge Bounty", npc="Marshal Redpath", coords={x=49.5,y=58.6} },
    { action="turnin", quest=555, name="Soothing Turtle Bisque", npc="Chef Jessen", coords={x=51.9,y=58.6} },
    { action="info", name="Set Hearthstone", note="Bind your Hearthstone to Southshore.", coords={x=51.2,y=58.9} },
    { action="accept", quest=505, name="Syndicate Assassins", npc="Magistrate Henry Maleb", coords={x=48.1,y=59.1} },
    { action="collect", quest=689, name="A King's Tribute", item="Alterac Granite", coords={x=45.8,y=31.5}, note="Go into the cave to pick up Alterac Granite." },
    { action="info", name="Alterac Mountains", note="Go to the Alterac Mountains.", coords={x=46.5,y=25.3} },
    { action="kill", quest=564, name="Costly Menace", mob={"Mountain Lion","Hulking Mountain Lion"}, coords={x=38.3,y=85.7} },
    { action="accept", quest=510, name="Foreboding Plans", npc="Syndicate Documents", coords={x=58.3,y=67.9}, note="Click Syndicate Documents on the table to accept Foreboding Plans. Alternative spawn location is 47.8, 82.4." },
    { action="accept", quest=511, name="Encrypted Letter", npc="Syndicate Documents", coords={x=58.3,y=67.9}, note="Click Syndicate Documents on the table to accept Encrypted Letter. Alternative spawn location is 47.8, 82.4." },
    { action="kill", quest=505, name="Syndicate Assassins", mob={"Syndicate Footpad","Syndicate Thief"}, coords={x=48.7,y=83.0} },
    { action="collect", quest=500, name="Crushridge Bounty", item="Dirty Knucklebone", coords={x=48.7,y=54.9}, note="Kill Crushridge Ogres for Dirty Knucklebones." },
    { action="info", name="Grind", note="Grind nearby until Level 33 and 10 bars.", coords={x=48.7,y=54.9} },
    { action="info", name="Hearth to Southshore", note="Use Hearthstone to return to Southshore.", coords={x=50.9,y=57.0} },
    { action="turnin", quest=500, name="Crushridge Bounty", npc="Marshal Redpath", coords={x=49.5,y=58.6} },
    { action="turnin", quest=505, name="Syndicate Assassins", npc="Magistrate Henry Maleb", coords={x=48.1,y=59.1} },
    { action="turnin", quest=510, name="Foreboding Plans", npc="Magistrate Henry Maleb", coords={x=48.1,y=59.1} },
    { action="turnin", quest=511, name="Encrypted Letter", npc="Loremaster Dibbs", coords={x=50.5,y=57.0} },
    { action="accept", quest=514, name="Letter to Stormpike", npc="Loremaster Dibbs", coords={x=50.5,y=57.0} },
    { action="turnin", quest=564, name="Costly Menace", npc="Darren Malvew", coords={x=52.4,y=55.9} },
    { action="info", name="Ironforge", note="Use Teleport: Ironforge or fly to Ironforge.", coords={x=49.3,y=52.3} },
    { action="accept", quest=1453, name="Reclaimers' Business in Desolace", npc="Roetten Stonehammer", coords={x=69.9,y=21.2} },
    { action="turnin", quest=514, name="Letter to Stormpike", npc="Prospector Stormpike", coords={x=74.5,y=11.7} },
    { action="accept", quest=525, name="Further Mysteries", npc="Prospector Stormpike", coords={x=74.5,y=11.7} },
    { action="turnin", quest=689, name="A King's Tribute", npc="Grand Mason Marblesten", coords={x=39.0,y=87.9} },
    { action="accept", quest=700, name="A King's Tribute", npc="Grand Mason Marblesten", coords={x=39.0,y=87.9}, note="Wait for RPG, then accept Quest." },
    { action="turnin", quest=700, name="A King's Tribute", npc="King Magni Bronzebeard", coords={x=39.0,y=56.1} },
    { action="info", name="Bank", note="Deposit to Bank: Decrypted Letter, extra Cloth. Level First Aid to 225.", coords={x=35.6,y=60.7} },
    
    -- Travel to Desolace
    --{ action="info", name="Travel to Menethil", note="Fly from Ironforge to Menethil Harbor.", coords={x=55.5,y=47.8} },
    --{ action="info", name="Boat to Auberdine", note="Take the boat from Menethil Harbor to Auberdine.", coords={x=4.6,y=57.3} },
    --{ action="info", name="Fly to Astranaar", note="Fly from Auberdine to Astranaar.", coords={x=36.3,y=45.6} },
    --{ action="info", name="Talondeep Path", note="Run southeast to Talondeep Path cave and go through to Stonetalon Mountains.", coords={x=42.0,y=72.0} },
    --{ action="info", name="To Desolace", note="Run southwest through Stonetalon Mountains to Desolace.", coords={x=60.0,y=71.0} },
    
    -- my own alternative Guide to include Balor!
    { action="info", name="Balor", note="Fly from Ironforge to Balor.", coords={x=55.5,y=47.8} },
    { nextGuide = "Balor 33-34.lua" },
  }
}