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
    { action="info", quest=1448, name="In Search of The Temple", coords={x=65.5,y=47.0}, note="Go here to complete the Quest." },
    { action="info", name="Blasted Lands", note="Go to the Blasted Lands.", coords={x=33.1,y=68.3} },
    { action="turnin", quest=1395, name="Supplies for Nethergarde", npc="Quartermaster Lungertz", coords={x=66.5,y=21.4} },
    { action="info", name="Get flight point", note="Get the Nethergarde Keep flight point.", coords={x=65.5,y=24.3} },
    { action="info", name="Travel to Stormwind", note="Use Teleport: Stormwind or fly to Stormwind.", coords={x=65.5,y=24.3} },
    { action="turnin", quest=1448, name="In Search of The Temple", npc="Brohann Caskbelly", coords={x=69.4,y=40.4} },
    { action="accept", quest=1449, name="To The Hinterlands", npc="Brohann Caskbelly", coords={x=69.4,y=40.4} },
    { action="info", name="Booty Bay", note="Use Hearthstone to Booty Bay.", coords={x=69.4,y=40.4} },
    { action="turnin", quest=1116, name="Dream Dust in the Swamp", npc="Krazek", coords={x=26.9,y=77.2} },
    { action="accept", quest=1117, name="Rumors for Kravel", npc="Krazek", coords={x=26.9,y=77.2} },
    { action="accept", quest=2864, name="Tran'rek", npc="Krazek", coords={x=26.9,y=77.2} },
    { action="info", name="Ratchet", note="Take the boat to Ratchet.", coords={x=26.1,y=73.2} },
    { action="info", name="Theramore", note="Fly to Theramore.", coords={x=63.1,y=37.2} },
    { action="turnin", quest=623, name="Akiris by the Bundle", npc="Privateer Groy", coords={x=67.7,y=51.7} },
    { action="accept", quest=6624, name="Triage", npc="Doctor Gustaf VanHowzen", coords={x=67.7,y=48.9}, note="Quest can only be accepted if First Aid is at 225." },
    { action="info", name="Triage", note="Use Triage Bandage to heal the patients.", coords={x=67.7,y=48.9} },
    { action="turnin", quest=6624, name="Triage", npc="Doctor Gustaf VanHowzen", coords={x=67.7,y=48.9} },
    { action="info", name="Gadgetzan", note="Fly to Gadgetzan.", coords={x=67.5,y=51.3} },
    { nextGuide = "Tanaris 43-44.lua" }
  }
}