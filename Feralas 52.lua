LevelingGuide_Feralas_2 = {
  steps = {
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Feathermoon Stronghold at Innkeeper Shyria.", coords={x=31.0,y=43.5} },
    { action="accept", quest=7003, name="Zapped Giants", npc="Zorbin Fandazzle", coords={x=44.8,y=43.4} },
    { action="accept", quest=7721, name="Fuel for the Zapping", npc="Zorbin Fandazzle", coords={x=44.8,y=43.4} },
    { action="collect", quest=7003, name="Zapped Giants", item="Miniaturization Residue", coords={x=46.5,y=57.6}, note="Use Zorbin's Ultra-Shrinker on Giants to kill them and pick up Miniaturization Residue." },
    { action="collect", quest=7721, name="Fuel for the Zapping", item="Water Elemental Core", coords={x=46.5,y=57.6}, note="Kill Sea Elementals to pick up Water Elemental Cores." },
    { action="turnin", quest=7003, name="Zapped Giants", npc="Zorbin Fandazzle", coords={x=44.8,y=43.4} },
    { action="turnin", quest=7721, name="Fuel for the Zapping", npc="Zorbin Fandazzle", coords={x=44.8,y=43.4} },
    { action="collect", quest=1452, name="Rhapsody's Kalimdor Kocktail", item={"Ironfur Liver","Groddoc Liver"}, coords={x=49.8,y=32.9}, note="Kill Ironfur Bears for Ironfur Livers and Groddoc Gorillas for Groddoc Livers." },
    { action="collect", quest=7733, name="Improved Quality", item="Rage Scar Yeti Hide", coords={x=53.0,y=32.0}, note="Kill Rage Scar Yetis to pick up Yeti Hides." },
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Feathermoon Stronghold.", coords={x=53.0,y=32.0} },
    { action="turnin", quest=7733, name="Improved Quality", npc="Pratt McGrubben", coords={x=30.6,y=42.7} },
    { action="accept", quest=7735, name="Pristine Yeti Hide", note="Optional: If you found Pristine Yeti Hide, use it to accept this Quest.", coords={x=30.6,y=42.7} },
    { action="turnin", quest=7735, name="Pristine Yeti Hide", npc="Pratt McGrubben", coords={x=30.6,y=42.7} },
    { action="info", name="Darnassus", note="Use Teleport: Darnassus or fly to Darnassus.", coords={x=30.2,y=43.2} },
    { action="turnin", quest=162, name="Rise of the Silithid", npc="Gracina Spiritmight", coords={x=41.8,y=85.6}, note="She is upstairs." },
    { action="info", name="Handle With Care", note="Leave Darnassus through the pink portal.", coords={x=30.5,y=41.4} },
    { action="turnin", quest=3022, name="Handle With Care", npc="Erelas Ambersky", coords={x=55.5,y=92.1} },
    { action="turnin", quest=3661, name="Favored of Elune?", npc="Erelas Ambersky", coords={x=55.5,y=92.1} },
    { action="info", name="Astranaar", note="Fly to Astranaar.", coords={x=58.4,y=94.0} },
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Astranaar at Innkeeper Kimlya.", coords={x=37.0,y=49.2} },
    { action="info", name="Felwood", note="Go to Felwood.", coords={x=55.8,y=28.9} },
    { nextGuide = "Felwood 52-53.lua" }
  }
}