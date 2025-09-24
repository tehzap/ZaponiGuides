-- Swamp of Sorrows 42-43 Guide
-- Based on https://www.sageguide.net/42-43_swamp_of_sorrows

LevelingGuide_SwampOfSorrows = {
  steps = {
    { action="turnin", quest=624, name="Cortello's Riddle", npc="A Soggy Scroll", coords={x=22.8,y=48.1}, note="Click A Soggy Scroll to turn-in the Quest." },
    { action="accept", quest=625, name="Cortello's Riddle", npc="A Soggy Scroll", coords={x=22.8,y=48.1} },
    { action="accept", quest=1396, name="Encroaching Wildlife", npc="Watcher Biggs", coords={x=26.7,y=59.8} },
    { action="collect", quest=1116, name="Dream Dust in the Swamp", item="Speck of Dream Dust", coords={x=17.2,y=59.8} },
    { action="kill", quest=1396, name="Encroaching Wildlife", mob={"Young Sawtooth Crocolisk","Sorrow Spinner","Swamp Jaguar"}, coords={x=32.0,y=47.2} },
    { action="turnin", quest=1396, name="Encroaching Wildlife", npc="Watcher Biggs", coords={x=26.7,y=59.8} },
    { action="info", quest=1448, name="In Search of The Temple", coords={x=70,y=54}, note="Go here to complete the Quest." },
    { action="info", name="Blasted Lands", note="Go to the Blasted Lands.", coords={x=60,y=20} },
    { action="turnin", quest=1395, name="Supplies for Nethergarde", npc="Quartermaster Lungertz", coords={x=66.5,y=21.4} },
    { action="info", name="Get flight point", note="Get the Nethergarde Keep flight point.", coords={x=65,y=24} },
    { action="info", name="Travel to Stormwind", note="Use Teleport: Stormwind or fly to Stormwind.", coords={x=37,y=81} },
    { action="turnin", quest=1448, name="In Search of The Temple", npc="Brohann Caskbelly", coords={x=64,y=20} },
    { action="accept", quest=1449, name="To The Hinterlands", npc="Brohann Caskbelly", coords={x=64,y=20} },
    { action="info", name="Booty Bay", note="Use Hearthstone to Booty Bay.", coords={x=27,y=77} },
    { action="turnin", quest=1116, name="Dream Dust in the Swamp", npc="Krazek", coords={x=26.9,y=77.2} },
    { action="accept", quest=1117, name="Rumors for Kravel", npc="Krazek", coords={x=26.9,y=77.2} },
    { action="accept", quest=2864, name="Tran'rek", npc="Krazek", coords={x=26.9,y=77.2} },
    
    -- Bank management
    { action="info", name="Bank visit", note="Deposit Thick Armor Kit and extra cloth", coords={x=26,y=76} },
    
    -- Auction extra pages
    { action="info", name="Auction House", note="Sell extra Green Hills of Stranglethorn pages", coords={x=26,y=76} },
    
    -- Level 43 milestone
    { action="info", name="Level 43", note="You should reach Level 43 around this time", coords={x=27,y=77} },
    
    -- Travel to Ratchet
    { action="info", name="Take boat to Ratchet", note="Boat from Booty Bay to Ratchet (arrives every 5:50)", coords={x=63,y=37} },
    
    -- Fly to Theramore
    { action="info", name="Fly to Theramore", note="Fly from Ratchet to Theramore Isle", coords={x=67,y=47} },
    { action="turnin", quest=623, name="Akiris by the Bundle", npc="Privateer Groy", coords={x=69,y=51} },
    
    -- First Aid training (if 225+)
    { action="info", name="First Aid training", note="Train First Aid with Doctor Gustaf VanHowzen if skill 225+", coords={x=67,y=47} },
    
    -- Hunter pet training (Hunters only)
    { action="info", name="Hunter pet training", note="Hunters: Stable pet, tame Mudrock Snapjaw for Bite 6, then unstable original pet", coords={x=67,y=47} },
    
    -- Fly to Gadgetzan
    { action="info", name="Fly to Gadgetzan", note="Fly from Theramore Isle to Gadgetzan", coords={x=51,y=29} },
    
    { nextGuide = "Tanaris 43-44.lua" }
  }
}