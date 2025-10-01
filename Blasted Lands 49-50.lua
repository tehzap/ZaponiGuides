LevelingGuide_BlastedLands = {
  steps = {
    -- Arrival at Nethergarde Keep
    { action="turnin", quest=2990, name="Thadius Grimshade", npc="Thadius Grimshade", coords={x=66.9,y=19.4} },
    { action="accept", quest=2991, name="Nekrum's Medallion", npc="Thadius Grimshade", coords={x=66.9,y=19.4} },
    
    -- Go to Dreadmaul Hold
    { action="accept", quest=2601, name="The Basilisk's Bite", npc="Bloodmage Lynnore", coords={x=50.5,y=14.2} },
    { action="accept", quest=2603, name="Vulture's Vigor", npc="Bloodmage Lynnore", coords={x=50.5,y=14.2} },
    { action="accept", quest=2581, name="Snickerfang Jowls", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    { action="accept", quest=2583, name="A Boar's Vitality", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    { action="accept", quest=2585, name="The Decisive Striker", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    
    -- Grind southeast and complete all beast quests together
    { action="kill", quest=2585, name="The Decisive Striker", mob="Scorpok Stinger", coords={x=67.0,y=35.0} },
    { action="collect", quest=2585, name="The Decisive Striker", item="Scorpok Pincer", coords={x=67.0,y=35.0}, note="Kill Scorpok Stingers for 6 Scorpok Pincers." },
    { action="kill", quest=2581, name="Snickerfang Jowls", mob="Starving Snickerfang", coords={x=62.0,y=25.0} },
    { action="collect", quest=2581, name="Snickerfang Jowls", item="Snickerfang Jowl", coords={x=62.0,y=25.0}, note="Kill Starving Snickerfangs for 5 Snickerfang Jowls." },
    { action="kill", quest=2603, name="Vulture's Vigor", mob="Black Slayer", coords={x=55.0,y=30.0} },
    { action="collect", quest=2603, name="Vulture's Vigor", item="Vulture Gizzard", coords={x=55.0,y=30.0}, note="Kill Black Slayers for 14 Vulture Gizzards." },
    { action="kill", quest=2583, name="A Boar's Vitality", mob="Ashmane Boar", coords={x=45.0,y=25.0} },
    { action="collect", quest=2583, name="A Boar's Vitality", item="Blasted Boar Lung", coords={x=45.0,y=25.0}, note="Kill Ashmane Boars for 6 Blasted Boar Lungs." },
    { action="kill", quest=2601, name="The Basilisk's Bite", mob={"Redstone Basilisk","Redstone Crystalhide"}, coords={x=40.0,y=35.0} },
    { action="collect", quest=2601, name="The Basilisk's Bite", item="Basilisk Brain", coords={x=40.0,y=35.0}, note="Kill Redstone Basilisks and Crystalhides for 11 Basilisk Brains." },
    
    -- Optional: Kum'isha quests if you got fragment drops
    { action="accept", quest=3501, name="Everything Counts In Large Amounts", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: If you got Imperfect Draenethyst Fragment drops." },
    { action="turnin", quest=3501, name="Everything Counts In Large Amounts", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: Turn in fragments for Kum'isha's Junk." },
    { action="info", note="Optional: Use Kum'isha's Junk for a green item and turn in One Draenei's Junk as much as possible.", coords={x=51.8,y=35.6} },
    { action="turnin", quest=3502, name="One Draenei's Junk...", npc="Kum'isha the Collector", coords={x=51.8,y=35.6}, note="Optional: Turn in as many times as possible." },
    
    -- Return to Dreadmaul Hold
    { action="turnin", quest=2601, name="The Basilisk's Bite", npc="Bloodmage Lynnore", coords={x=50.5,y=14.2} },
    { action="turnin", quest=2603, name="Vulture's Vigor", npc="Bloodmage Lynnore", coords={x=50.5,y=14.2} },
    { action="turnin", quest=2581, name="Snickerfang Jowls", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    { action="turnin", quest=2583, name="A Boar's Vitality", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    { action="turnin", quest=2585, name="The Decisive Striker", npc="Bloodmage Drazial", coords={x=50.9,y=14.3} },
    
    -- Clean up inventory
    { action="info", note="Destroy leftover quest items: Snickerfang Jowls, Vulture Gizzards, Blasted Boar Lungs, Basilisk Brains.", coords={x=50.9,y=14.3} },
    
    -- Travel to Stranglethorn Vale
    { action="info", note="Fly from Nethergarde Keep to Booty Bay.", coords={x=65.3,y=24.4} },
    { action="turnin", quest=580, name="Whiskey Slim's Lost Grog", npc="Whiskey Slim", coords={x=27.1,y=77.5}, note="At the bottom of the inn." },
    { action="turnin", quest=2874, name="Deliver to MacKinley", npc="\"Sea Wolf\" MacKinley", coords={x=27.8,y=77.1}, note="At the first house northeast of the inn." },
    
    -- Travel to Kalimdor
    { action="info", note="Take the boat from Booty Bay to Ratchet. Boat shows up every 5:50.", coords={x=25.8,y=73.1} },
    { action="info", note="Craft bandages or fish while waiting for the boat.", coords={x=25.8,y=73.1} },
    
    -- Continue to Tanaris
    { action="info", note="Fly from Ratchet to Gadgetzan.", coords={x=63.1,y=37.2} },
    
    { nextGuide = "Tanaris 48-49.lua" }
  }
}