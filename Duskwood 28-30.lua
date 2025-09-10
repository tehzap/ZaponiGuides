-- https://mmo-gs.com/blog/wow-classic-20-30-alliance-leveling-guide/?utm_source=chatgpt.com

LevelingGuide_Duskwood = {
  steps = {
    { action="collect", item="Tear of Tilloa", coords={x=78.3,y=36.0}, note="Pick up Tear of Tilloa on the way to Darkshire." },

    -- In Darkshire Quests annehmen
    { action="accept", quest=66,  name="The Legend of Stalvan",       npc="Clerk Daltry",       coords={x=72.6,y=47.6} },
    { action="accept", quest=101, name="The Totem of Infliction",     npc="Madame Eva",         coords={x=75.8,y=45.3} },
    { action="accept", quest=56,  name="The Night Watch",             npc="Commander Althea Ebonlocke", coords={x=73.6, y=46.9} },
    { action="accept", quest=173, name="Worgen in the Woods",         npc="Calor",              coords={x=75.3,y=48.0} },
    { action="accept", quest=163, name="Raven Hill",                  npc="Elaine Carevin",       coords={x=75.3,y=48.7} },
    { action="accept", quest=165, name="The Hermit",                  npc="Elaine Carevin",       coords={x=75.3,y=48.7} },
    { action="accept", quest=164, name="Deliveries to Sven",          npc="Elaine Carevin",   coords={x=75.3,y=48.7} },

    { action="accept", quest=70055, name="Defias of Duskwood", npc="Watcher Paige", coords={x=44.98,y=67.63}, info="Quest not sorted correctly yet. Ignore maybe.", },

    -- Stalvan sofort abgeben und Folgequest holen
    { action="turnin", quest=66,  name="The Legend of Stalvan",       npc="Clerk Daltry",       coords={x=72.6,y=47.6} },
    { action="accept", quest=67,  name="The Legend of Stalvan",       npc="Clerk Daltry",       coords={x=72.6,y=47.6} },

    -- Gasthaus setzen
    { action="info", note="Setze Darkshire als Heimatort.", coords={x=74.0,y=44.4}},

    -- Look To The Stars Kette starten
    { action="accept", quest=174, name="Look To The Stars",           npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },
    { action="turnin", quest=174, name="Look To The Stars",           npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },
    { action="accept", quest=175, name="Look To The Stars",           npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },
    { action="turnin", quest=175, name="Look To The Stars",           npc="Blind Mary", coords={x=81.8,y=59.2} },
    { action="accept", quest=177, name="Look To The Stars",           npc="Blind Mary", coords={x=81.8,y=59.2} },

    -- Kämpfe & Sammelziele (laut Guide direkt danach)
    { action="kill", quest=56,  name="The Night Watch", mob={"Skeletal Warrior","Skeletal Mage"}, coords={x=80.8, y=68.4} },
    { action="collect", quest=177, name="Look To The Stars", item="Mary's Looking Glass", coords={x=81.2,y=71.5}, note="Kill Insane Ghoul to collect Mary's Looking Glass." },
    { action="kill", quest=173, name="Worgen in the Woods", mob="Nightbane Shadow Weaver", coords={x=66.0,y=76.0} },

    -- Danach Rückkehr Darkshire & Abgaben
    { action="turnin", quest=56,  name="The Night Watch",   npc="Commander Althea Ebonlocke",   coords={x=73.6,y=46.8} },
    { action="accept", quest=57,  name="The Night Watch",   npc="Commander Althea Ebonlocke",   coords={x=73.6,y=46.8} },
    { action="turnin", quest=173, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="accept", quest=221, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="turnin", quest=177, name="Look To The Stars", npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },
    { action="accept", quest=181, name="Look To The Stars", npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },

    -- Kämpfe & Sammelziele (laut Guide direkt danach)
    { action="kill", quest=221, name="Worgen in the Woods", npc="Calor", mob="Nightbane Dark Runner", coords={x=64.6,y=46.8} },
    { action="turnin", quest=221, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="accept", quest=222, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="kill", quest=222, name="Worgen in the Woods", npc="Calor", mob={"Nightbane Vile Fang","Nightbane Tainted One"}, coords={x=74.2, y=77.4} },

    { action="kill", quest=70055, name="Defias of Duskwood", mob={"Defias Night Blade","Defias Night Runner","Defias Enchanter"}, coords={x=50.4,y=77.3}, note="TurtleWoW specific.", },
    { action="turnin", quest=70055, name="Defias of Duskwood", npc="Watcher Paige", coords={x=44.98,y=67.63} },
    { action="accept", quest=70057, name="A Simple Memory", npc="Watcher Paige", coords={x=44.98,y=67.63} },
    { action="accept", quest=70056, name="Report to Darkshire", npc="Watcher Paige", coords={x=44.98,y=67.63} },
    { action="accept", quest=134, name="Ogre Thieves", npc="Abercrombie", coords={x=28.12,y=31.46}, note="Quest positioned wrongly." },
    { action="collect", quest=134, name="Ogre Thieves", item="Abercrombie's Crate", coords={x=33.3,y=76.2} },

    { action="collect", quest=181, name="Look To The Stars", item="Ogre's Monocle",   coords={x=36.8,y=83.7}, note="Kill Zzarc'Vul to collect Ogre's Monocle." },
    { action="turnin", quest=163, name="Raven Hill", npc="Jitters", coords={x=18.4,y=56.4} },
    { action="accept", quest=5, name="Jitters' Growling Gut", npc="Jitters", coords={x=18.4,y=56.4} },
    { action="kill", quest=57, name="The Night Watch", mob={"Skeletal Fiend","Skeletal Horror"}, coords={x=20.6, y=47.9} },
    { action="collect", quest=101, name="The Totem of Infliction", item={"Ghoul Fang", "Skeleton Finger", "Vial of Spider Venom"}, coords={x=18.0,y=35.0}, note="Save 6 Gooey Spider Legs for later." },
    { action="turnin", quest=165, name="The Hermit", npc="Abercrombie", coords={x=28.1,y=31.5} },
    { action="accept", quest=148, name="Supplies from Darkshire", npc="Abercrombie", coords={x=28.1,y=31.5} },
    { action="turnin", quest=134, name="Ogre Thieves", npc="Abercrombie", coords={x=28.12,y=31.46}, note="Could be that this is not possible yet and positioned wrongly or too early." },
    { action="accept", quest=61, name="The Weathered Grave", npc="The Weathered Grave", coords={x=17.8,y=29.1} },
    { action="turnin", quest=164, name="Deliveries to Sven", npc="Sven Yorgen", coords={x=7.8, y=34.0} },
    { action="accept", quest=95, name="Sven's Revenge", npc="Sven Yorgen", coords={x=7.8, y=34.0} },
    { action="turnin", quest=70057, name="A Simple Memory", npc="Sven Yorgen", coords={x=7.79,y=34.02}, note="TurtleWoW specific." },
    { action="info", note="Teleport nach Darkshire.", coords={x=75.3,y=48.7} },
    { action="turnin", quest=5, name="Jitters' Growling Gut", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="accept", quest=93, name="Dusky Crab Cakes", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="turnin", quest=93, name="Dusky Crab Cakes", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="accept", quest=240, name="Return to Jitters", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="turnin", quest=57, name="The Night Watch", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="accept", quest=58, name="The Night Watch", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="turnin", quest=70056, name="Report to Darkshire", npc="Commander Althea Ebonlocke", coords={x=73.57,y=46.85} },
    { action="accept", quest=70058, name="Law & Ogre", npc="Commander Althea Ebonlocke", coords={x=73.57,y=46.85}, note="TurtleWoW specific. Might be positioned wrongly." },
    { action="turnin", quest=61, name="The Weathered Grave", npc="Sirra Von'Indi",  coords={x=72.6, y=47.6} },
    { action="accept", quest=227, name="Morgan Ladimore", npc="Sirra Von'Indi",  coords={x=72.6, y=47.6} },
    { action="turnin", quest=227, name="Morgan Ladimore", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="accept", quest=228, name="Mor'Ladim", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="turnin", quest=101, name="The Totem of Infliction", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="turnin", quest=222, name="Worgen in the Woods", npc="Calor",  coords={x=75.2, y=47.9} },
    { action="accept", quest=223, name="Worgen in the Woods", npc="Calor",  coords={x=75.2, y=47.9} },
    { action="turnin", quest=181, name="Look To The Stars", npc="Viktori Prism'Antras",  coords={x=79.8, y=48.0} },
    { action="turnin", quest=148, name="Supplies from Darkshire", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="accept", quest=149, name="Ghost Hair Thread", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="turnin", quest=223, name="Worgen in the Woods", npc="Jonathan Carevin",  coords={x=75.3, y=49.0} },
    { action="turnin", quest=149, name="Ghost Hair Thread", npc="Blind Mary",  coords={x=82.0, y=59.1} },
    { action="accept", quest=154, name="Return the Comb", npc="Blind Mary",  coords={x=82.0, y=59.1} },
    { action="turnin", quest=154, name="Return the Comb", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="accept", quest=157, name="Deliver the Thread", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="turnin", quest=95, name="Sven's Revenge", npc="Mound of loose dirt",  coords={x=49.8, y=77.7} },
    { action="accept", quest=230, name="Sven's Camp", npc="Mound of loose dirt",  coords={x=49.8, y=77.7} },
    { action="turnin", quest=240, name="Return to Jitters", npc="Jitters", coords={x=18.4,y=56.4} },
    { action="turnin", quest=157, name="Deliver the Thread", npc="Abercrombie", coords={x=28.1,y=31.5} },
    { action="accept", quest=158, name="Zombie Juice", npc="Abercrombie", coords={x=28.1,y=31.5} },
    { action="kill", quest=58, name="The Night Watch", mob="Plaguespreader", coords={x=16.5, y=34.1} },
    { action="collect", quest=228, name="Mor'Ladim", item="Mor'Ladim's Skull", coords={x=16.5, y=34.1}, note="Kill Mor'Ladim to collect Mor'Ladim's Skull." },
    -- ab hier Wechsel zu Sageguide: https://www.sageguide.net/28-30_duskwood - daher möglicherweise Inkonsistenz!
    { action="collect", quest=253, name="Bride of the Embalmer", item="The Embalmer's Heart", coords={x=28.8, y=31.0}, note="Kill Eliza to collect The Embalmer's Heart." },
    { action="info", name="Grind", note="Grind to Level 29 and 18.5 bars.", coords={x=28.8, y=31.0} },
    { action="info", name="Go to Darkshire", note="Go to Darkshire.", coords={x=75.3,y=48.7} },
    { action="turnin", quest=228, name="Mor'Ladim", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="accept", quest=229, name="The Daughter Who Lived", npc="Commander Althea Ebonlocke", coords={x=73.57,y=46.85} },
    { action="turnin", quest=229, name="The Daughter Who Lived", npc="Watcher Ladimore", coords={x=74.27,y=48.02} },
    { action="accept", quest=231, name="A Daughter's Love", npc="Watcher Ladimore", coords={x=74.27,y=48.02} },
    { action="turnin", quest=253, name="Bride of the Embalmer", npc="Lord Ello Ebonlocke", coords={x=71.9, y=46.4} },
    { action="turnin", quest=231, name="A Daughter's Love", npc="A Weathered Grave", coords={x=17.8,y=29.1} },
    { action="info", name="Go to Stormwind", note="Teleport or fly to Stormwind from Darkshire.", coords={x=75.3,y=48.7} },
    -- hier fehlen noch einige Steps aus dem Guide!
    { action="accept", quest=538, name="Southshore", npc="Milton Sheaf", coords={x=74.0,y=7.6} },
    { action="turnin", quest=269, name="Seeking Wisdom", npc="Bishop Farthing", coords={x=39.1,y=27.8} },
    { action="accept", quest=270, name="The Doomed Fleet", npc="Bishop Farthing", coords={x=39.1,y=27.8} },
    { action="accept", quest=690, name="Malin's Request", npc="Archmage Malin", coords={x=50.5,y=87.5} },
    { action="accept", quest=1947, name="Journey to the Marsh", npc="Jennea Cannon", coords={x=49.5,y=85.9} },
    { action="info", name="Teleport to Menethil", note="Use Hearthstone to Menethil.", coords={x=10.7,y=60.9}},
    { nextGuide = "Wetlands 30-31.lua" },
  }
}

--[[
    { action="kill", quest=70058, name="Law & Ogre", mob={"Splinter Fist Warrior","Splinter Fist Firemonger","Splinter Fist Fire Weaver","Splinter Fist Taskmaster" }, coords={x=34.7,y=75.6}, note="TurtleWoW specific." },
    { action="turnin", quest=70058, name="Law & Ogre", npc="Commander Althea Ebonlocke", coords={x=73.57,y=46.85} },
--]]

-- { action="turnin", quest=538, name="Southshore", npc="Loremaster Dibbs", coords={x=50.55,y=57.05} },
-- { action="turnin", quest=690, name="Malin's Request", npc="Skuerto", coords={x=46.65,y=46.99} },
-- { action="turnin", quest=1947, name="Journey to the Marsh", npc="Tabetha", coords={x=46.0,y=57.1} },

-- 1) Go to The Yorgen Farmstead and on the Mound of loose dirt turn in “Sven’s Revenge”, accept Sven’s Camp.

--[[
LevelingGuide = {
  steps = {
    { action="accept", quest=163, name="Raven Hill", npc="Magistrate Solomon", coords={x=73.2,y=46.9} },
    { action="accept", quest=165, name="The Hermit", npc="Clerk Daltry", coords={x=72.6,y=47.6} },
    { action="accept", quest=164, name="Deliveries to Sven", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="accept", quest=95, name="Sven’s Revenge", npc="Sven Yorgen", coords={x=7.8,y=34.1}, note="Bei Raven Hill annehmen" },
    { action="accept", quest=148, name="Supplies from Darkshire", npc="Quartermaster Lewis", coords={x=74.1,y=44.8} },
    { action="accept", quest=101, name="The Totem of Infliction", npc="Madame Eva", coords={x=75.8,y=45.3} },
    { action="accept", quest=56, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="accept", quest=173, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="kill", quest=56, name="The Night Watch", mob={"Skeletal Warrior", "Skeletal Mage"}, coords={x=18.0,y=35.0} },
    { action="collect", quest=101, name="The Totem of Infliction", item={"Ghoul Fang", "Skeleton Finger", "Vial of Spider Venom"}, coords={x=18.0,y=35.0}, note="Für Totem of Infliction" },
    { action="kill", quest=173, name="Worgen in the Woods", mob="Nightbane Shadow Weaver", coords={x=66.0,y=76.0} },
    { action="turnin", quest=56, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="accept", quest=57, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="turnin", quest=173, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="accept", quest=221, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="collect", quest=335, name="A Noble Brew", item="Tear of Tilloa", coords={x=78.0,y=36.0}, note="Auf dem Weg nach Darkshire einsammeln" },
    { action="turnin", quest=101, name="The Totem of Infliction", npc="Madame Eva", coords={x=75.8,y=45.3} },
    { action="accept", quest=98, name="The Legend of Stalvan (Diary)", npc="Madame Eva", coords={x=75.8,y=45.3} },
    { action="kill", quest=57, name="The Night Watch", mob={"Skeletal Fiend", "Skeletal Horror"}, coords={x=17.0,y=29.0} },
    { action="kill", quest=221, name="Worgen in the Woods", mob={"Nightbane Vile Fang", "Nightbane Shadow Weaver"}, coords={x=69.0,y=73.0} },
    { action="collect", quest=98, item="Stalvan’s Diary", coords={x=28.0,y=31.0}, note="Im Keller nördlich von Raven Hill" },
    { action="turnin", quest=57, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="accept", quest=58, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="turnin", quest=221, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="accept", quest=222, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="kill", quest=58, name="The Night Watch", mob={"Skeletal Fiend", "Skeletal Horror"}, coords={x=17.0,y=29.0} },
    { action="kill", quest=222, name="Worgen in the Woods", mob="Nightbane Dark Runner", coords={x=71.0,y=76.0} },
    { action="accept", quest=181, name="Look To The Stars", npc="Viktori Prism’Antras", coords={x=79.6,y=47.8} },
    { action="collect", quest=181, item="Faintly Glowing Skull", coords={x=29.0,y=31.0}, note="Drop von Ghouls" },
    { action="turnin", quest=181, name="Look To The Stars", npc="Viktori Prism’Antras", coords={x=79.6,y=47.8} },
    { action="accept", quest=182, name="Look To The Stars", npc="Viktori Prism’Antras", coords={x=79.6,y=47.8} },
    { action="kill", quest=182, name="Look To The Stars", mob="Defias Night Runner", coords={x=28.0,y=31.0}, note="Drop für Pocket Watch" },
    { action="turnin", quest=182, name="Look To The Stars", npc="Viktori Prism’Antras", coords={x=79.6,y=47.8} },
    { action="turnin", quest=58, name="The Night Watch", npc="Commander Althea Ebonlocke", coords={x=73.6,y=46.8} },
    { action="turnin", quest=222, name="Worgen in the Woods", npc="Calor", coords={x=75.3,y=48.0} },
    { action="turnin", quest=98, name="The Legend of Stalvan", npc="Madame Eva", coords={x=75.8,y=45.3} },
    { action="accept", quest=95, name="Sven's Revenge", npc="Clerk Daltry", coords={x=72.6,y=47.6} },
    { action="collect", quest=95, name="Sven's Revenge", item="Stalvan’s Chest", coords={x=35.0,y=73.0}, note="Bei Moonbrook, Westfall" },
    { action="turnin", quest=95, name="Sven's Revenge", npc="Clerk Daltry", coords={x=72.6,y=47.6} }
  }
}
--]]
