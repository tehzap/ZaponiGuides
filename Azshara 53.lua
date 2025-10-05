LevelingGuide_Azshara = {
  steps = {
    -- Talrendis Point quests
    { action="accept", quest=5535, name="Spiritual Unrest", npc="Loh'atu", coords={x=11.9,y=77.6}, note="In Talrendis Point." },
    { action="accept", quest=5536, name="A Land Filled with Hatred", npc="Loh'atu", coords={x=11.9,y=77.6} },
    
    -- Shadowsong Shrine
    { action="info", name="Shadowsong Shrine", note="Grind northeast to Shadowsong Shrine.", coords={x=16.0,y=70.0} },
    { action="kill", quest=5535, name="Spiritual Unrest", mob={"Highborne Apparition","Highborne Lichling"}, coords={x=16.0,y=70.0}, note="Kill 6 Highborne Apparitions and 6 Highborne Lichlings. Apparitions can fear!" },
    
    -- Haldarr Encampment
    { action="info", name="Haldarr Encampment", note="Grind northeast to Haldarr Encampment.", coords={x=20.0,y=62.0} },
    { action="kill", quest=5536, name="A Land Filled with Hatred", mob={"Haldarr Satyr","Haldarr Trickster","Haldarr Felsworn"}, coords={x=20.0,y=62.0}, note="Kill 6 Haldarr Satyrs, 2 Tricksters, and 2 Felsworn." },
    
    -- Return to Talrendis Point
    { action="info", name="Return", note="Grind southwest back to Talrendis Point.", coords={x=11.9,y=77.6} },
    { action="turnin", quest=5535, name="Spiritual Unrest", npc="Loh'atu", coords={x=11.9,y=77.6} },
    { action="turnin", quest=5536, name="A Land Filled with Hatred", npc="Loh'atu", coords={x=11.9,y=77.6} },
    { action="info", name="Repair/Vendor", note="Repair and sell at Brinna Valanaar if needed.", coords={x=11.9,y=77.6} },
    
    -- Sanath Lim-yo area
    { action="info", name="Sanath Lim-yo", note="Grind northeast to Sanath Lim-yo.", coords={x=28.0,y=50.0} },
    
    -- Hunter-specific quest
    { action="accept", quest=8153, name="Courser Antlers", npc="Ogtinc", coords={x=42.5,y=42.5}, note="Hunter quest only. Grind northeast along the road." },
    { action="turnin", quest=8151, name="The Hunter's Charm", npc="Ogtinc", coords={x=42.5,y=42.5}, note="Hunter only: Turn in if you have it from Darnassus." },
    { action="kill", quest=8153, name="Courser Antlers", mob="Mosshoof Courser", coords={x=42.5,y=42.5}, note="Hunter only: Kill Mosshoof Coursers for 2 Perfect Courser Antlers." },
    
    -- Ursolan and Legash Encampment
    { action="info", name="Ursolan", note="Grind northeast to Ursolan.", coords={x=45.0,y=26.5} },
    { action="info", name="Legash Encampment", note="Grind northeast to Legash Encampment.", coords={x=53.0,y=19.5} },
    { action="accept", quest=3601, name="Kim'jael Indeed!", npc="Kim'jael", coords={x=53.5,y=22.0}, note="Run up the hill to Kim'jael." },
    
    -- Thalassian Base Camp
    { action="info", name="Thalassian Base Camp", note="Grind southeast to Thalassian Base Camp. Don't fall off the edge!", coords={x=58.5,y=25.0} },
    { action="collect", quest=3601, name="Kim'jael Indeed!", item={"Kim'Jael's Compass","Kim'jael's Scope","Kim'jael's Stuffed Chicken","Kim'jael's Wizzlegoober"}, coords={x=58.5,y=25.0}, note="Loot Kim'jael's Equipment chests. You can loot the same chest repeatedly. Beware of Blood Elf Reclaimers!" },
    
    -- Return to Kim'jael
    { action="turnin", quest=3601, name="Kim'jael Indeed!", npc="Kim'jael", coords={x=53.5,y=22.0}, note="Grind northwest back to Kim'jael." },
    { action="accept", quest=5534, name="Kim'jael's Missing Equipment", npc="Kim'jael", coords={x=53.5,y=22.0} },
    
    -- Hunter quest completion
    { action="turnin", quest=8153, name="Courser Antlers", npc="Ogtinc", coords={x=42.5,y=42.5}, note="Hunter only: Grind southwest to Ogtinc." },
    
    -- Ruins of Eldarath
    { action="info", name="Ruins of Eldarath", note="Grind southwest to Ruins of Eldarath.", coords={x=39.5,y=50.0} },
    { action="kill", quest=5534, name="Kim'jael's Missing Equipment", mob="Spitelash Myrmidon", coords={x=39.5,y=50.0}, note="Kill Spitelash enemies for Some Rune." },
    
    -- Arcane Runes collection
    { action="collect", quest=3449, name="Arcane Runes", item="Rune of Jin'yael", coords={x=39.5,y=50.0}, note="Loot the Rune of Jin'yael." },
    { action="collect", quest=3449, name="Arcane Runes", item="Rune of Beth'Amara", coords={x=37.0,y=53.0}, note="Just southwest, loot the Rune of Beth'Amara." },
    { action="collect", quest=3449, name="Arcane Runes", item="Rune of Markri", coords={x=39.5,y=55.5}, note="Just southeast, loot the Rune of Markri." },
    { action="collect", quest=3449, name="Arcane Runes", item="Rune of Sael'hai", coords={x=42.5,y=64.0}, note="Run far southeast, loot the Rune of Sael'hai." },
    
    -- Return to Kim'jael
    { action="info", name="Legash Encampment", note="Grind far northeast back to Legash Encampment.", coords={x=53.0,y=19.5} },
    { action="turnin", quest=5534, name="Kim'jael's Missing Equipment", npc="Kim'jael", coords={x=53.5,y=22.0} },
    
    -- Secret Lab Island
    { action="info", name="Secret Lab", note="Run southeast up the ramps to exit the ravine, then far southeast to the small island off the coast.", coords={x=77.0,y=91.0} },
    { action="info", name="Helipad", note="Use bridges to cross between the plateaus to reach the helipad.", coords={x=77.0,y=91.0} },
    { action="collect", quest=3449, name="Arcane Runes", item="Standard Issue Flare Gun", coords={x=77.0,y=91.0}, note="Use the Standard Issue Flare Gun to summon Pilot Xiggs Fuselighter." },
    { action="turnin", quest=3449, name="Arcane Runes", npc="Pilot Xiggs Fuselighter", coords={x=77.0,y=91.0}, note="Turn in at the summoned pilot." },
    { action="accept", quest=3461, name="Return to Tymor", npc="Pilot Xiggs Fuselighter", coords={x=77.0,y=91.0} },
    { action="info", name="Destroy Flare Gun", note="Destroy the Standard Issue Flare Gun from your inventory.", coords={x=77.0,y=91.0} },
    
    -- Transportation options
    { action="info", name="Druid Teleport", note="Druids: Use Teleport: Moonglade, then fly from Nighthaven to Auberdine.", coords={x=77.0,y=91.0} },
    { action="info", name="Mage Teleport", note="Mages: Use Teleport: Ironforge, then fly from Ironforge to Aerie Peak.", coords={x=77.0,y=91.0} },
    { action="info", name="Hearthstone", note="Others: Hearth to Auberdine, then take boat to Menethil Harbor.", coords={x=77.0,y=91.0} },
    
    -- The Hinterlands section
    { action="info", name="Aerie Peak", note="Fly to Aerie Peak in The Hinterlands.", coords={x=11.0,y=46.0} },
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Wildhammer Keep at Innkeeper Thulfram.", coords={x=14.0,y=48.0} },
    { action="info", name="Hunter Pet", note="Hunters: Stable your pet at Killium Bouldertoe.", coords={x=13.0,y=44.0} },
    
    -- Shindigger's Camp
    { action="info", name="Shindigger's Camp", note="Run east along the road to Shindigger's Camp.", coords={x=27.0,y=48.5} },
    { action="turnin", quest=1452, name="Rhapsody's Kalimdor Kocktail", npc="Rhapsody Shindigger", coords={x=27.0,y=48.5}, note="Turn in if you have it from previous zones." },
    { action="accept", quest=1469, name="Rhapsody's Tale", npc="Rhapsody Shindigger", coords={x=27.0,y=48.5} },
    
    -- Valorwind Lake
    { action="info", name="Valorwind Lake", note="Run southeast to Valorwind Lake.", coords={x=41.0,y=59.0} },
    { action="collect", quest=2641, name="Sprinkle's Secret Ingredient", item="Violet Tragan", coords={x=41.0,y=59.0}, note="Underwater, loot the Violet Tragan." },
    
    -- Gammerita quest
    { action="info", name="Gammerita", note="Run far east to the shore to find Gammerita.", coords={x=75.0,y=67.0} },
    { action="info", name="Hunter Pet Taming", note="Hunters: Use Tame Beast on Saltwater Snapjaw and learn Bite 7.", coords={x=75.0,y=67.0} },
    { action="collect", quest=2944, name="The Super Snapper FX", item="Gammerita Photo", coords={x=75.0,y=67.0}, note="Use Super Snapper FX on Gammerita, then run away. Optionally kill Gammerita." },
    
    -- Return to Aerie Peak
    { action="info", name="Return to Aerie Peak", note="Use Hearthstone or run back to Wildhammer Keep.", coords={x=14.0,y=48.0} },
    { action="info", name="Hunter Pet", note="Hunters: Abandon the temporary pet and unstable your regular pet.", coords={x=13.0,y=44.0} },
    
    -- Level completion
    { action="info", name="Level 53", note="You should reach Level 53 now.", coords={x=14.0,y=48.0} },
    { action="info", name="Next Zone", note="Fly from Aerie Peak to Chillwind Camp for Western Plaguelands.", coords={x=11.0,y=46.0} },
    
    { nextGuide = "Western Plaguelands 53-54.lua" }
  }
}