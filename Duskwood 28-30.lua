-- https://mmo-gs.com/blog/wow-classic-20-30-alliance-leveling-guide/?utm_source=chatgpt.com

LevelingGuide = {
  steps = {
    -- Auf dem Weg nach Darkshire
    { action="collect", item="Tear of Tilloa", coords={x=78.3,y=36.0}, note="Auf dem Weg nach Darkshire einsammeln" },

    -- In Darkshire Quests annehmen
    { action="accept", quest=66,  name="The Legend of Stalvan",       npc="Clerk Daltry",       coords={x=72.6,y=47.6} },
    { action="accept", quest=101, name="The Totem of Infliction",     npc="Madame Eva",         coords={x=75.8,y=45.3} },
    { action="accept", quest=56,  name="The Night Watch",             npc="Commander Althea Ebonlocke", coords={x=73.6, y=46.9} },
    { action="accept", quest=173, name="Worgen in the Woods",         npc="Calor",              coords={x=75.3,y=48.0} },
    { action="accept", quest=163, name="Raven Hill",                  npc="Elaine Carevin",       coords={x=75.3,y=48.7} },
    { action="accept", quest=165, name="The Hermit",                  npc="Elaine Carevin",       coords={x=75.3,y=48.7} },
    { action="accept", quest=164, name="Deliveries to Sven",          npc="Elaine Carevin",   coords={x=75.3,y=48.7} },

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
    { action="accept", quest=181, name="Look To The Stars",           npc="Viktori Prism'Antras", coords={x=79.6,y=47.8} },

    -- Kämpfe & Sammelziele (laut Guide direkt danach)
    { action="kill", quest=221, name="Worgen in the Woods", npc="Calor", mob="Nightbane Dark Runner", coords={x=64.6,y=46.8} },
    { action="turnin", quest=221, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="accept", quest=222, name="Worgen in the Woods", npc="Calor",            coords={x=75.3,y=48.0} },
    { action="kill", quest=222, name="Worgen in the Woods", npc="Calor", mob={"Nightbane Vile Fang","Nightbane Tainted One"}, coords={x=74.2, y=77.4} },
    { action="collect", quest=181, name="Look To The Stars", item="Ogre's Monocle",   coords={x=78.3,y=36.0}, note="Kill Zzarc'Vul to collect Ogre's Monocle." },
    { action="turnin", quest=163, name="Raven Hill", npc="Jitters", coords={x=18.4,y=56.4} },
    { action="accept", quest=5, name="Jitters' Growling Gut", npc="Jitters", coords={x=18.4,y=56.4} },
    { action="kill", quest=57, name="The Night Watch", mob={"Skeletal Fiend","Skeletal Horror"}, coords={x=20.6, y=47.9} },
    { action="collect", quest=101, name="The Totem of Infliction", item={"Ghoul Fang", "Skeleton Finger", "Vial of Spider Venom"}, coords={x=18.0,y=35.0}, note="Save 6 Gooey Spider Legs for later." },
    { action="turnin", quest=165, name="The Hermit", npc="Abercrombie",            coords={x=28.1,y=31.5} },
    { action="accept", quest=148, name="Supplies from Darkshire", npc="Abercrombie", coords={x=28.1,y=31.5} },
    { action="accept", quest=61, name="The Weathered Grave", npc="The Weathered Grave", coords={x=17.8,y=29.1} },
    { action="turnin", quest=164, name="Deliveries to Sven", npc="Sven Yorgen", coords={x=7.8, y=34.0} },
    { action="accept", quest=95, name="Sven's Revenge", npc="Sven Yorgen", coords={x=7.8, y=34.0} },
    { action="info", note="Teleport nach Darkshire.", coords={x=75.3,y=48.7} },
    { action="turnin", quest=5, name="Jitters' Growling Gut", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="accept", quest=93, name="Dusky Crab Cakes", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="turnin", quest=93, name="Dusky Crab Cakes", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="accept", quest=240, name="Return to Jitters", npc="Chef Grual", coords={x=73.9, y=43.4} },
    { action="turnin", quest=57, name="The Night Watch", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="turnin", quest=61, name="The Weathered Grave", npc="Sirra Von'Indi",  coords={x=72.6, y=47.6} },
    { action="accept", quest=58, name="The Night Watch", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="accept", quest=227, name="Morgan Ladimore", npc="Sirra Von'Indi",  coords={x=72.6, y=47.6} },
    { action="turnin", quest=227, name="Morgan Ladimore", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="accept", quest=228, name="Mor'Ladim", npc="Commander Althea Ebonlocke",  coords={x=73.6, y=46.9} },
    { action="turnin", quest=101, name="The Totem of Infliction", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="turnin", quest=222, name="Worgen in the Woods", npc="Calor",  coords={x=75.7, y=47.5} },
    { action="turnin", quest=181, name="Look To The Stars", npc="Viktori Prism'Antras",  coords={x=79.8, y=48.0} },
    { action="turnin", quest=148, name="Supplies from Darkshire", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="accept", quest=149, name="Ghost Hair Thread", npc="Madame Eva",  coords={x=75.8, y=45.3} },
    { action="accept", quest=223, name="Worgen in the Woods", npc="Calor",            coords={x=75.3, y=48.0} },
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
  }
}

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
