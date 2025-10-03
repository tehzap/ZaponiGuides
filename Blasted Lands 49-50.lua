LevelingGuide_BlastedLands = {
  steps = {
    { action="turnin", quest=2990, name="Thadius Grimshade", npc="Thadius Grimshade", coords={x=66.9,y=19.4}, note="Atop the tower." },
    { action="accept", quest=2991, name="Nekrum's Medallion", npc="Thadius Grimshade", coords={x=66.9,y=19.4} },
    { action="accept", quest=40429, name="Recovering Armory Supplies", npc="Foreman Tanoth", coords={x=58.4,y=15.1}, note="TurtleWoW specific." },
    { action="accept", quest=40428, name="The Garrison Armory Disaster", npc="Foreman Tanoth", coords={x=58.4,y=15.1}, note="TurtleWoW specific." },
    { action="info", name="The Garrison Armory Disaster", coords={x=57.8,y=14.2}, note="Enter the cave." },
    { action="collect", quest=40429, name="Recovering Armory Supplies", item="Garrison Supply Cache", coords={x=55.5,y=7.6}, note="Click Garrison Supply Cache to pick it up. TurtleWoW specific." },
    { action="kill", quest=40428, name="The Garrison Armory Disaster", mob={"Boulderclaw Tunneler", "Boulderclaw Geomancer", "Boulderclaw Basher", "Boulderclaw Ambusher"}, coords={x=55.7,y=8.3}, note="TurtleWoW specific." },
    { action="turnin", quest=40429, name="Recovering Armory Supplies", npc="Foreman Tanoth", coords={x=58.4,y=15.1}, note="TurtleWoW specific." },
    { action="turnin", quest=40428, name="The Garrison Armory Disaster", npc="Foreman Tanoth", coords={x=58.4,y=15.1}, note="TurtleWoW specific." },
    { action="accept", quest=2601, name="The Basilisk's Bite", npc="Bloodmage Lynnore", coords={x=50.6,y=14.3} },
    { action="accept", quest=2603, name="Vulture's Vigor", npc="Bloodmage Lynnore", coords={x=50.6,y=14.3} },
    { action="accept", quest=2581, name="Snickerfang Jowls", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="accept", quest=2583, name="A Boar's Vitality", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="accept", quest=2585, name="The Decisive Striker", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="collect", quest=2585, name="The Decisive Striker", item={"Scorpok Pincer","Vulture Gizzard","Blasted Boar Lung"}, coords={x=49.2,y=20.6}, note="Kill Scorpok Stingers for Scorpok Pincers, Vultures for Vulture Gizzards and Boars for a Blasted Boar Lung." },
    { action="turnin", quest=2585, name="The Decisive Striker", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="collect", quest=2581, name="Snickerfang Jowls", item={"Snickerfang Jowl","Blasted Boar Lung","Scorpok Pincer"}, coords={x=49.2,y=20.6}, note="Kill Snickerfang Hyenas for Snickerfang Jowls, Boars for Blasted Boar Lungs and Scorpok Stingers for a Scorpok Pincer." },
    { action="turnin", quest=2581, name="Snickerfang Jowls", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="collect", quest=2603, name="Vulture's Vigor", item={"Vulture Gizzard","Snickerfang Jowl"}, coords={x=49.2,y=20.6}, note="Kill Snickerfang Hyenas for Snickerfang Jowls and Vultures for Vulture Gizzards." },
    { action="turnin", quest=2603, name="Vulture's Vigor", npc="Bloodmage Lynnore", coords={x=50.6,y=14.3} },
    { action="collect", quest=2583, name="A Boar's Vitality", item={"Blasted Boar Lung","Scorpok Pincer","Basilisk Brain"}, coords={x=54.9,y=27.9}, note="Kill Boars for Blasted Boar Lungs, Scorpok Stingers for Scorpok Pincers and Basilisks for a Basilisk Brain." },
    { action="turnin", quest=2583, name="A Boar's Vitality", npc="Bloodmage Drazial", coords={x=50.6,y=14.2} },
    { action="collect", quest=2601, name="The Basilisk's Bite", item={"Basilisk Brain","Vulture Gizzard"}, 
    coords={x=54.9,y=27.9}, note="Kill Basilisks for Basilisk Brains and Vultures for Vulture Gizzards." },
    --[[
    { action="accept", quest=3501, name="Everything Counts In Large Amounts", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: If you found Imperfect Draenethyst Fragment, accept this Quest." },
    { action="turnin", quest=3501, name="Everything Counts In Large Amounts", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: Turn in fragments for Kum'isha's Junk." },
    { action="info", note="Optional: Use Kum'isha's Junk for a green item and turn in One Draenei's Junk as much as possible.", coords={x=51.8,y=35.6} },
    { action="turnin", quest=3502, name="One Draenei's Junk...", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: Turn in as many times as possible." },
    --]]
    -- Return to Dreadmaul Hold
    { action="turnin", quest=2601, name="The Basilisk's Bite", npc="Bloodmage Lynnore", coords={x=50.6,y=14.3} },
    { action="info", name="Booty Bay", note="Fly to Booty Bay.", coords={x=65.5,y=24.3} },
    { action="turnin", quest=580, name="Whiskey Slim's Lost Grog", npc="Whiskey Slim", coords={x=27.1,y=77.5} },
    { action="turnin", quest=2874, name="Deliver to MacKinley", npc="\"Sea Wolf\" MacKinley", coords={x=27.8,y=77.1} },
    { action="info", name="Booty Bay", note="Fly to Lapidis Isle. TurtleWoW specific.", coords={x=27.5,y=77.8} },
    --[[ Travel to Kalimdor
    { action="info", note="Take the boat from Booty Bay to Ratchet. Boat shows up every 5:50.", coords={x=25.8,y=73.1} },
    { action="info", note="Craft bandages or fish while waiting for the boat.", coords={x=25.8,y=73.1} },
    
    -- Continue to Tanaris
    { action="info", note="Fly from Ratchet to Gadgetzan.", coords={x=63.1,y=37.2} },
    --]]
    { nextGuide = "Lapidis Isle 50-51.lua" }
  }
}