-- Undead Starting Area Guide (Level 1-6)
-- Based on RestedXP Horde Undead 1-6 Guide
-- Covers Deathknell to Brill progression

LevelingGuide_Undead = {
  steps = {
    { action="info", name="Welcome to Deathknell", note="Welcome to the Undead starting area! You begin in Deathknell crypt.", coords={x=30,y=72} },
    
    -- Initial Quest Pickup
    { action="accept", quest=363, name="Rude Awakening", npc="Undertaker Mordo", coords={x=30.22,y=71.65}, note="Exit the crypt and talk to Undertaker Mordo to accept your first quest." },
    
    -- Class Training (varies by class)
    { action="info", name="Class Trainers", note="Go to your class trainer in Deathknell: Warriors: Dannal Stern (32.68, 65.56), Rogues: David Trias (32.53, 65.65), Priests: Dark Cleric Duesten (31.11, 66.02), Mages: Isabella (30.94, 66.06), Warlocks: Maximillion (30.91, 66.34)", coords={x=31,y=66} },
    
    -- Complete Rude Awakening
    { action="turnin", quest=363, name="Rude Awakening", npc="Shadow Priest Sarvis", coords={x=30.84,y=66.20}, note="Turn in Rude Awakening to Shadow Priest Sarvis." },
    { action="accept", quest=364, name="The Mindless Ones", npc="Shadow Priest Sarvis", coords={x=30.84,y=66.20}, note="Accept The Mindless Ones from Shadow Priest Sarvis." },
    { action="accept", quest=376, name="The Damned", npc="Novice Elreth", coords={x=30.86,y=66.05}, note="Accept The Damned from Novice Elreth." },
    
    -- Vendor and Supplies
    { action="info", name="Buy Supplies", note="Buy food/water from Joshua Kien if needed. Vendor trash items here.", coords={x=32.29,y=65.44} },
    
    -- Complete The Mindless Ones
    { action="kill", quest=364, name="The Mindless Ones", mob="Mindless Zombie", coords={x=31.5,y=63}, note="Kill 8 Mindless Zombies around Deathknell." },
    { action="kill", quest=364, name="The Mindless Ones", mob="Wretched Zombie", coords={x=31.5,y=63}, note="Kill 8 Wretched Zombies around Deathknell." },
    
    -- Complete The Damned
    { action="collect", quest=376, name="The Damned", item="Scavenger Paw", coords={x=30,y=67}, note="Kill Young Scavengers and Ragged Scavengers for 6 Scavenger Paws." },
    { action="collect", quest=376, name="The Damned", item="Duskbat Wing", coords={x=30,y=67}, note="Kill Duskbats and Mangy Duskbats for 6 Duskbat Wings. Avoid Mangy Duskbats if possible - they're tougher." },
    
    -- Accept new quests
    { action="accept", quest=3901, name="Rattling the Rattlecages", npc="Shadow Priest Sarvis", coords={x=30.84,y=66.20}, note="Accept Rattling the Rattlecages." },
    { action="accept", quest=3902, name="Scavenging Deathknell", npc="Deathguard Saltain", coords={x=31.61,y=65.62}, note="Accept Scavenging Deathknell from Deathguard Saltain." },
    { action="accept", quest=380, name="Night Web's Hollow", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Accept Night Web's Hollow from Executor Arren." },
    
    -- Complete Rattling the Rattlecages
    { action="kill", quest=3901, name="Rattling the Rattlecages", mob="Rattlecage Skeleton", coords={x=32.5,y=60.5}, note="Kill 12 Rattlecage Skeletons northeast of Deathknell." },
    
    -- Complete Scavenging Deathknell
    { action="collect", quest=3902, name="Scavenging Deathknell", item="Scavenged Goods", coords={x=32.5,y=63.5}, note="Loot 6 Equipment Boxes scattered around Deathknell for Scavenged Goods." },
    
    { action="kill", quest=380, name="Night Web's Hollow", mob={"Young Night Web Spider","Night Web Spider"}, coords={x=27,y=59.3}, note="Night Web Spiders are in the cave." }, 
    -- Turn in completed quests
    { action="turnin", quest=364, name="The Mindless Ones", npc="Shadow Priest Sarvis", coords={x=30.84,y=66.20}, note="Turn in The Mindless Ones to Shadow Priest Sarvis." },
    { action="turnin", quest=376, name="The Damned", npc="Novice Elreth", coords={x=30.86,y=66.05}, note="Turn in The Damned to Novice Elreth." },
    { action="accept", quest=6395, name="Marla's Last Wish", npc="Novice Elreth", coords={x=30.86,y=66.05}, note="Accept Marla's Last Wish from Novice Elreth." },
    { action="turnin", quest=3901, name="Rattling the Rattlecages", npc="Shadow Priest Sarvis", coords={x=30.84,y=66.20}, note="Turn in Rattling the Rattlecages to Shadow Priest Sarvis." },
    { action="turnin", quest=3902, name="Scavenging Deathknell", npc="Deathguard Saltain", coords={x=31.61,y=65.62}, note="Turn in Scavenging Deathknell to Deathguard Saltain." },
    { action="turnin", quest=380, name="Night Web's Hollow", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Turn in Night Web's Hollow to Executor Arren." },
    { action="accept", quest=381, name="The Scarlet Crusade", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Accept The Scarlet Crusade from Executor Arren." },
    
    -- Complete Marla's Last Wish
    { action="kill", quest=6395, name="Marla's Last Wish", mob="Samuel Fipps", coords={x=36.69,y=61.67}, note="Kill Samuel Fipps for Samuel's Remains." },
    { action="interact", quest=6395, name="Marla's Last Wish", target="Marla's Grave", coords={x=31.17,y=65.08}, note="Use Samuel's Remains at Marla's Grave to bury them." },
    
    -- Complete The Scarlet Crusade
    { action="collect", quest=381, name="The Scarlet Crusade", item="Scarlet Armband", coords={x=37,y=68}, note="Kill Scarlet Initiates and Scarlet Converts for 12 Scarlet Armbands. Avoid Scarlet Converts if possible - they have Frost Armor." },
    
    { action="turnin", quest=6395, name="Marla's Last Wish", npc="Novice Elreth", coords={x=30.86,y=66.05}, note="Turn in Marla's Last Wish to Novice Elreth." },
    { action="turnin", quest=381, name="The Scarlet Crusade", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Turn in The Scarlet Crusade to Executor Arren." },
    { action="accept", quest=382, name="The Red Messenger", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Accept The Red Messenger from Executor Arren." },
    
    -- Complete The Red Messenger
    { action="kill", quest=382, name="The Red Messenger", mob="Meven Korgal", coords={x=36.50,y=68.82}, note="Kill Meven Korgal for the Scarlet Crusade Documents." },
    
    { action="turnin", quest=382, name="The Red Messenger", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Turn in The Red Messenger to Executor Arren." },
    { action="accept", quest=383, name="Vital Intelligence", npc="Executor Arren", coords={x=32.15,y=66.01}, note="Accept Vital Intelligence from Executor Arren." },
    
    -- Optional: Accept A Rogue's Deal
    { action="accept", quest=8, name="A Rogue's Deal", npc="Calvin Montague", coords={x=38.24,y=56.77}, note="Optional: Accept A Rogue's Deal from Calvin Montague at the farm." },
    
    -- Head to Brill
    { action="info", name="Travel to Brill", note="You should be level 5-6 now. Head north to Brill to continue your journey.", coords={x=60,y=52} },
    { action="turnin", quest=383, name="Vital Intelligence", npc="Executor Zygand", coords={x=60.58,y=51.77}, note="Go to Brill and turn in Vital Intelligence to Executor Zygand." },
    
    -- Optional: Turn in A Rogue's Deal
    { action="turnin", quest=8, name="A Rogue's Deal", npc="Innkeeper Renee", coords={x=61.71,y=52.05}, note="Optional: Turn in A Rogue's Deal to Innkeeper Renee at the inn. Set your hearthstone to Brill." },
    
    { action="info", name="Congratulations!", note="Congratulations! You've completed the Undead starting area. You should be level 6 and ready to continue in Silverpine Forest or other areas.", coords={x=60,y=52} }
  }
}