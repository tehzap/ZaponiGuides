LevelingGuide_DunMorogh = {
  steps = {
    { action="accept", quest=179, name="Dwarven Outfitters", npc="Sten Stoutarm", coords={x=29.9,y=71.2} },
    { action="collect", quest=179, name="Dwarven Outfitters", item="Tough Wolf Meat", coords={x=29.0,y=74.1}, note="Kill Wolves to pick up Tough Wolf Meat." },
    { action="turnin", quest=179, name="Dwarven Outfitters", npc="Sten Stoutarm", coords={x=29.9,y=71.2} },
    
    -- Class-specific starting quests
    { action="info", name="Class Quests", note="Accept your class-specific quest from Sten Stoutarm based on your class.", coords={x=29.7,y=71.2} },
    { action="accept", quest=233, name="Coldridge Valley Mail Delivery", npc="Sten Stoutarm", coords={x=29.7,y=71.2} },
    
    -- Trogg area
    { action="accept", quest=170, name="A New Threat", npc="Balir Frosthammer", coords={x=29.7,y=71.6} },
    { action="info", name="Vendor", note="Buy food/water and ammunition from Adlin Pridedrift if needed.", coords={x=30.0,y=71.5} },
    { action="kill", quest=170, name="A New Threat", mob={"Rockjaw Trogg","Burly Rockjaw Trogg"}, coords={x=32.0,y=75.0}, note="Kill 6 Rockjaw Troggs and 6 Burly Rockjaw Troggs southeast of the camp." },
    { action="turnin", quest=170, name="A New Threat", npc="Balir Frosthammer", coords={x=29.7,y=71.6} },
    
    -- Level 3 - Move to Anvilmar
    { action="info", name="Level 3", note="You should reach Level 3. Head northwest to Anvilmar.", coords={x=22.6,y=71.4} },
    { action="info", name="Class Training", note="Turn in your class-specific quest and learn new spells at Anvilmar.", coords={x=22.6,y=71.4} },
    { action="accept", quest=3361, name="A Refugee's Quandary", npc="Felix Whindlebolt", coords={x=22.6,y=71.9}, note="In Anvilmar." },
    
    -- Mail delivery chain
    { action="turnin", quest=233, name="Coldridge Valley Mail Delivery", npc="Talin Keeneye", coords={x=25.0,y=75.7}, note="Grind west along the road." },
    { action="accept", quest=234, name="Coldridge Valley Mail Delivery", npc="Talin Keeneye", coords={x=25.0,y=75.7} },
    { action="accept", quest=183, name="The Boar Hunter", npc="Talin Keeneye", coords={x=25.0,y=75.7} },
    { action="kill", quest=183, name="The Boar Hunter", mob="Small Crag Boar", coords={x=25.0,y=75.0}, note="Kill 12 Small Crag Boars around the area." },
    { action="turnin", quest=183, name="The Boar Hunter", npc="Talin Keeneye", coords={x=25.0,y=75.7} },
    
    -- Level 4 - Grelin Whitebeard area
    { action="info", name="Level 4", note="You should reach Level 4 now.", coords={x=25.0,y=75.7} },
    { action="turnin", quest=234, name="Coldridge Valley Mail Delivery", npc="Grelin Whitebeard", coords={x=25.1,y=76.2}, note="Grind southeast to Grelin Whitebeard." },
    { action="accept", quest=182, name="The Troll Cave", npc="Grelin Whitebeard", coords={x=25.1,y=76.2} },
    
    -- Collect Felix's items
    { action="collect", quest=3361, name="A Refugee's Quandary", item="Felix's Box", coords={x=22.0,y=80.0}, note="Grind west and loot Felix's Box." },
    { action="collect", quest=3361, name="A Refugee's Quandary", item="Felix's Chest", coords={x=26.0,y=79.0}, note="Grind southeast to the hut and loot Felix's Chest." },
    { action="collect", quest=3361, name="A Refugee's Quandary", item="Felix's Bucket of Bolts", coords={x=30.0,y=80.0}, note="Grind east to the cave and loot Felix's Bucket of Bolts." },
    { action="kill", quest=182, name="The Troll Cave", mob="Frostmane Troll Whelp", coords={x=30.0,y=80.0}, note="Kill 14 Frostmane Troll Whelps in and around the cave." },
    
    { action="turnin", quest=182, name="The Troll Cave", npc="Grelin Whitebeard", coords={x=25.1,y=76.2}, note="Return to Grelin Whitebeard." },
    { action="accept", quest=218, name="The Stolen Journal", npc="Grelin Whitebeard", coords={x=25.1,y=76.2} },
    { action="accept", quest=3364, name="Scalding Mornbrew Delivery", npc="Nori Pridedrift", coords={x=25.1,y=76.0} },
    
    -- Return to Anvilmar
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Anvilmar.", coords={x=25.1,y=76.0} },
    { action="turnin", quest=3364, name="Scalding Mornbrew Delivery", npc="Durnan Furcutter", coords={x=22.1,y=71.4}, note="In Anvilmar." },
    { action="accept", quest=3365, name="Bring Back the Mug", npc="Durnan Furcutter", coords={x=22.1,y=71.4} },
    { action="turnin", quest=3361, name="A Refugee's Quandary", npc="Felix Whindlebolt", coords={x=22.6,y=71.9} },
    
    -- Level 4 training
    { action="info", name="Training", note="Learn new spells from your class trainer.", coords={x=22.6,y=71.4} },
    { action="accept", quest=1599, name="Beginnings", npc="Alamar Grimm", coords={x=22.6,y=71.1}, note="Warlock quest only." },
    
    { action="turnin", quest=3365, name="Bring Back the Mug", npc="Nori Pridedrift", coords={x=25.1,y=76.0}, note="Return to Nori Pridedrift." },
    
    -- Level 5 - The Stolen Journal
    { action="info", name="Level 5", note="You should reach Level 5. Use better food/water now.", coords={x=25.1,y=76.0} },
    { action="info", name="Troll Cave", note="Enter the cave and go deep along the left path.", coords={x=30.0,y=80.0} },
    { action="kill", quest=218, name="The Stolen Journal", mob="Grik'nir the Cold", coords={x=30.5,y=80.8}, note="Kill Grik'nir the Cold for Grelin Whitebeard's Journal. He moves slowly!" },
    { action="collect", quest=1599, name="Beginnings", item="Feather Charm", coords={x=30.5,y=80.8}, note="Warlock only: Kill Frostmane Novices for 3 Feather Charms." },
    
    { action="turnin", quest=218, name="The Stolen Journal", npc="Grelin Whitebeard", coords={x=25.1,y=76.2} },
    { action="accept", quest=282, name="Senir's Observations", npc="Grelin Whitebeard", coords={x=25.1,y=76.2} },
    { action="turnin", quest=1599, name="Beginnings", npc="Alamar Grimm", coords={x=22.6,y=71.1}, note="Warlock only: In Anvilmar." },
    
    -- Leave Coldridge Valley
    { action="info", name="Leave Valley", note="Grind east to the tunnel leading out of Coldridge Valley.", coords={x=33.8,y=72.2} },
    { action="turnin", quest=282, name="Senir's Observations", npc="Mountaineer Thalos", coords={x=33.8,y=72.2}, note="At the tunnel entrance." },
    { action="accept", quest=420, name="Senir's Observations", npc="Mountaineer Thalos", coords={x=33.8,y=72.2} },
    { action="accept", quest=2160, name="Supplies to Tannok", npc="Hands Springsprocket", coords={x=33.9,y=72.1} },
    
    -- Road to Kharanos
    { action="info", name="Kharanos", note="Grind northeast along the road toward Kharanos. Kill Crag Boars for meat and ribs.", coords={x=46.0,y=52.0} },
    { action="collect", name="Boar Meat", item="Chunk of Boar Meat", coords={x=46.0,y=52.0}, note="Kill Crag Boars for 4 Chunk of Boar Meat for later use." },
    { action="collect", name="Boar Ribs", item="Crag Boar Rib", coords={x=46.0,y=52.0}, note="Kill Crag Boars for 6 Crag Boar Ribs." },
    
    -- Level 6 - Kharanos
    { action="info", name="Level 6", note="You should reach Level 6 when arriving in Kharanos.", coords={x=46.7,y=52.0} },
    { action="turnin", quest=420, name="Senir's Observations", npc="Senir Whitebeard", coords={x=46.7,y=52.0}, note="In Kharanos." },
    { action="accept", quest=384, name="Beer Basted Boar Ribs", npc="Ragnar Thunderbrew", coords={x=47.2,y=52.5}, note="Outside the inn." },
    { action="turnin", quest=2160, name="Supplies to Tannok", npc="Tannok Frosthammer", coords={x=47.2,y=52.7}, note="Inside the inn." },
    { action="info", name="Bind Hearthstone", note="Bind your Hearthstone to Kharanos at Innkeeper Belm.", coords={x=47.4,y=52.6} },
    
    -- Shopping and training in Kharanos
    { action="info", name="Food/Water", note="Buy food and water from Innkeeper Belm if needed (mana users).", coords={x=47.4,y=52.6} },
    { action="info", name="Ammunition", note="Rogues: Buy throwing knives. Hunters: Buy ammunition from vendors.", coords={x=47.0,y=52.0} },
    { action="info", name="Training", note="Learn new spells from class trainers in Kharanos.", coords={x=47.0,y=52.0} },
    { action="info", name="Weapons", note="Buy better weapons from weapon vendors if you can afford them.", coords={x=47.0,y=52.0} },
    
    -- Steelgrill's Depot
    { action="accept", quest=400, name="Tools for Steelgrill", npc="Tharek Blackstone", coords={x=45.9,y=49.6}, note="Across the road from inn." },
    { action="info", name="Steelgrill's Depot", note="Grind northeast to Steelgrill's Depot.", coords={x=49.4,y=45.8} },
    { action="accept", quest=317, name="Stocking Jetsteam", npc="Pilot Bellowfiz", coords={x=49.4,y=45.8} },
    { action="accept", quest=313, name="The Grizzled Den", npc="Pilot Stonegear", coords={x=49.6,y=45.8} },
    { action="turnin", quest=400, name="Tools for Steelgrill", npc="Beldin Steelgrill", coords={x=49.4,y=45.9} },
    { action="accept", quest=5541, name="Ammo for Rumbleshot", npc="Loslor Rudge", coords={x=49.2,y=45.2} },
    
    -- Bear hunting
    { action="collect", quest=317, name="Stocking Jetsteam", item="Thick Bear Fur", coords={x=48.0,y=44.0}, note="Kill Young Black Bears in the fields for 2 Thick Bear Fur." },
    { action="turnin", quest=317, name="Stocking Jetsteam", npc="Pilot Bellowfiz", coords={x=49.4,y=45.8} },
    { action="accept", quest=318, name="Evershine", npc="Pilot Bellowfiz", coords={x=49.4,y=45.8} },
    
    -- Ammo crate
    { action="collect", quest=5541, name="Ammo for Rumbleshot", item="Ammo Crate", coords={x=44.0,y=57.0}, note="Grind southwest to the tent and loot the Ammo Crate." },
    
    -- Wendigo hunting
    { action="collect", quest=313, name="The Grizzled Den", item="Wendigo Mane", coords={x=42.0,y=54.0}, note="Kill Young Wendigos and Wendigos for 8 Wendigo Manes." },
    
    -- Hegnar Rumbleshot
    { action="turnin", quest=5541, name="Ammo for Rumbleshot", npc="Hegnar Rumbleshot", coords={x=40.7,y=65.1}, note="Grind south to Hegnar Rumbleshot." },
    { action="info", name="Hunter Weapon", note="Hunters: Buy Ornate Blunderbuss and more ammunition from Hegnar.", coords={x=40.7,y=65.1} },
    
    -- Level 7 - Tundra MacGrann
    { action="info", name="Level 7", note="You should reach Level 7 now.", coords={x=40.7,y=65.1} },
    { action="accept", quest=312, name="Tundra MacGrann's Stolen Stash", npc="Tundra MacGrann", coords={x=36.0,y=53.0}, note="Up the northwest mountain." },
    { action="collect", quest=312, name="Tundra MacGrann's Stolen Stash", item="MacGrann's Meat Locker", coords={x=38.0,y=54.0}, note="Wait for Old Icebeard to patrol away, then loot the locker." },
    { action="turnin", quest=312, name="Tundra MacGrann's Stolen Stash", npc="Tundra MacGrann", coords={x=36.0,y=53.0} },
    
    -- Brewnall Village
    { action="info", name="Brewnall Village", note="Drop safely north and grind to Brewnall Village.", coords={x=30.2,y=46.0} },
    { action="info", name="Food/Water", note="Buy better food and water from Keeg Gibn if needed.", coords={x=30.2,y=46.0} },
    { action="turnin", quest=318, name="Evershine", npc="Rejold Barleybrew", coords={x=30.2,y=45.8}, note="In Brewnall Village." },
    { action="accept", quest=319, name="A Favor for Evershine", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    { action="accept", quest=315, name="The Perfect Stout", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    { action="accept", quest=310, name="Bitter Rivals", npc="Marleth Barleybrew", coords={x=30.2,y=45.6} },
    
    -- Level 8 - Grinding around frozen lake
    { action="info", name="Level 8", note="You should reach Level 8 now.", coords={x=30.2,y=46.0} },
    { action="kill", quest=319, name="A Favor for Evershine", mob={"Ice Claw Bear","Elder Crag Boar","Snow Leopard"}, coords={x=32.0,y=43.0}, note="Kill 6 of each type around the frozen lake." },
    
    -- Shimmer Ridge
    { action="collect", quest=315, name="The Perfect Stout", item="Shimmerweed", coords={x=37.0,y=43.0}, note="Kill Frostmanes and loot Shimmerweed Baskets for 6 Shimmerweed." },
    
    -- Operation Recombobulation
    { action="accept", quest=412, name="Operation Recombobulation", npc="Razzle Sprysprocket", coords={x=46.0,y=51.0}, note="At the bunker-house north of Kharanos." },
    
    -- Back to Kharanos for training
    { action="info", name="Kharanos", note="Return to Kharanos for more quests and training.", coords={x=46.7,y=52.0} },
    { action="accept", quest=287, name="Frostmane Hold", npc="Senir Whitebeard", coords={x=46.7,y=52.0} },
    { action="info", name="Training", note="Learn new spells from your class trainer.", coords={x=47.0,y=52.0} },
    
    -- Thunder Ale barrel quest
    { action="info", name="Rhapsody Malt", note="Buy Rhapsody Malt and Thunder Ale from Innkeeper Belm.", coords={x=47.4,y=52.6} },
    { action="collect", quest=310, name="Bitter Rivals", item="Thunder Ale Barrel", coords={x=47.4,y=53.6}, note="Go to basement and loot Unguarded Thunder Ale Barrel." },
    { action="turnin", quest=310, name="Bitter Rivals", npc="Unguarded Thunder Ale Barrel", coords={x=47.4,y=53.6} },
    { action="accept", quest=311, name="Return to Marleth", npc="Unguarded Thunder Ale Barrel", coords={x=47.4,y=53.6} },
    { action="turnin", quest=384, name="Beer Basted Boar Ribs", npc="Ragnar Thunderbrew", coords={x=47.2,y=52.5}, note="Outside the inn." },
    
    -- Return to Brewnall Village
    { action="turnin", quest=311, name="Return to Marleth", npc="Marleth Barleybrew", coords={x=30.2,y=45.6} },
    { action="turnin", quest=319, name="A Favor for Evershine", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    { action="accept", quest=320, name="Return to Bellowfiz", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    { action="turnin", quest=315, name="The Perfect Stout", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    { action="accept", quest=413, name="Shimmer Stout", npc="Rejold Barleybrew", coords={x=30.2,y=45.8} },
    
    -- Level 9 - Gnomeregan area
    { action="info", name="Level 9", note="You should reach Level 9 now.", coords={x=30.2,y=46.0} },
    { action="collect", quest=412, name="Operation Recombobulation", item={"Restabilization Cogs","Gyromechanic Gear"}, coords={x=27.0,y=43.0}, note="Kill Leper Gnomes for 8 Restabilization Cogs and 8 Gyromechanic Gears." },
    
    -- Frostmane Hold
    { action="kill", quest=287, name="Frostmane Hold", mob="Frostmane Headhunter", coords={x=26.0,y=58.0}, note="Go to the cave and kill 5 Frostmane Headhunters. Explore the cave fully." },
    
    -- Return to Kharanos
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Kharanos.", coords={x=26.0,y=58.0} },
    { action="info", name="First Aid", note="Learn Apprentice First Aid from Thamner Pol.", coords={x=47.6,y=52.6} },
    { action="turnin", quest=287, name="Frostmane Hold", npc="Senir Whitebeard", coords={x=46.7,y=52.0} },
    { action="accept", quest=291, name="The Reports", npc="Senir Whitebeard", coords={x=46.7,y=52.0} },
    { action="turnin", quest=412, name="Operation Recombobulation", npc="Razzle Sprysprocket", coords={x=46.0,y=51.0} },
    
    -- Steelgrill's Depot final turn-ins
    { action="turnin", quest=320, name="Return to Bellowfiz", npc="Pilot Bellowfiz", coords={x=49.4,y=45.8} },
    { action="turnin", quest=313, name="The Grizzled Den", npc="Pilot Stonegear", coords={x=49.6,y=45.8} },
    
    -- Level 10 - Training and class quests
    { action="info", name="Level 10", note="You should reach Level 10 now. Important training level!", coords={x=46.7,y=52.0} },
    { action="info", name="Training", note="Learn important new spells from your class trainer.", coords={x=47.0,y=52.0} },
    { action="accept", quest=5635, name="Desperate Prayer", npc="Maxan Anvol", coords={x=47.5,y=52.0}, note="Priest quest only." },
    
    -- Hunter pet taming quests
    { action="accept", quest=6064, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter quest only." },
    { action="collect", quest=6064, name="Taming the Beast", item="Tamed Large Crag Boar", coords={x=50.0,y=55.0}, note="Hunter only: Use Taming Rod on Large Crag Boar." },
    { action="turnin", quest=6064, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="accept", quest=6084, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="collect", quest=6084, name="Taming the Beast", item="Tamed Snow Leopard", coords={x=50.0,y=58.0}, note="Hunter only: Use Taming Rod on Snow Leopard." },
    { action="turnin", quest=6084, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="accept", quest=6085, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="collect", quest=6085, name="Taming the Beast", item="Tamed Ice Claw Bear", coords={x=32.0,y=43.0}, note="Hunter only: Use Taming Rod on Ice Claw Bear and learn Claw." },
    { action="turnin", quest=6085, name="Taming the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="accept", quest=6086, name="Training the Beast", npc="Grif Wildheart", coords={x=47.4,y=51.7}, note="Hunter only." },
    { action="turnin", quest=6086, name="Training the Beast", npc="Belia Thundergranite", coords={x=71.0,y=86.0}, note="Hunter only: Go to Ironforge Military Ward." },
    { action="info", name="Hunter Skills", note="Hunter only: Learn pet skills and buy ammunition in Ironforge.", coords={x=71.0,y=86.0} },
    
    -- Weapon training in Ironforge
    { action="info", name="Weapon Training", note="Learn new weapon skills from Buliwyf Stonehand in Ironforge if needed.", coords={x=71.0,y=86.0} },
    
    -- Amberstill Ranch - Group content
    { action="info", name="Group Content", note="The next quest requires a group of 2+ players.", coords={x=63.4,y=50.8} },
    { action="accept", quest=314, name="Protecting the Herd", npc="Rudra Amberstill", coords={x=63.4,y=50.8} },
    { action="kill", quest=314, name="Protecting the Herd", mob="Vagash", coords={x=63.0,y=49.0}, note="Kill Vagash. He can be stunned! Kite him south to the guards for help." },
    { action="turnin", quest=314, name="Protecting the Herd", npc="Rudra Amberstill", coords={x=63.4,y=50.8} },
    
    -- Gol'Bolar Quarry
    { action="info", name="Gol'Bolar Quarry", note="Run southeast to Gol'Bolar Quarry.", coords={x=69.1,y=56.3} },
    { action="accept", quest=433, name="The Public Servant", npc="Senator Mehr Stonehallow", coords={x=68.7,y=55.9} },
    { action="accept", quest=432, name="Those Blasted Troggs", npc="Foreman Stonebrow", coords={x=69.1,y=56.3} },
    { action="kill", quest=432, name="Those Blasted Troggs", mob="Rockjaw Skullthumper", coords={x=71.0,y=56.0}, note="Kill 6 Rockjaw Skullthumpers in the quarry and cave." },
    { action="kill", quest=433, name="The Public Servant", mob="Rockjaw Bonesnapper", coords={x=71.0,y=56.0}, note="Kill 10 Rockjaw Bonesnappers. They can stun!" },
    { action="turnin", quest=432, name="Those Blasted Troggs", npc="Foreman Stonebrow", coords={x=69.1,y=56.3} },
    { action="turnin", quest=433, name="The Public Servant", npc="Senator Mehr Stonehallow", coords={x=68.7,y=55.9} },
    { action="info", name="Cooking", note="Learn Apprentice Cook from Cook Ghilm.", coords={x=69.0,y=56.0} },
    
    -- North Gate Outpost
    { action="info", name="North Gate", note="Run east to the fork, then northeast through tunnel to North Gate Outpost.", coords={x=83.8,y=39.2} },
    { action="accept", quest=419, name="The Lost Pilot", npc="Pilot Hammerfoot", coords={x=83.8,y=39.2} },
    { action="collect", quest=419, name="The Lost Pilot", item="Khaz Modan Flying Machine Blueprints", coords={x=79.0,y=36.0}, note="Loot A Dwarven Corpse northwest of the outpost." },
    { action="turnin", quest=419, name="The Lost Pilot", npc="Pilot Hammerfoot", coords={x=83.8,y=39.2} },
    { action="accept", quest=417, name="A Pilot's Revenge", npc="Pilot Hammerfoot", coords={x=83.8,y=39.2} },
    { action="kill", quest=417, name="A Pilot's Revenge", mob="Mangeclaw", coords={x=78.0,y=37.0}, note="Kill Mangeclaw southwest of outpost. He can stun!" },
    { action="turnin", quest=417, name="A Pilot's Revenge", npc="Pilot Hammerfoot", coords={x=83.8,y=39.2} },
    
    -- South Gate Outpost
    { action="info", name="South Gate", note="Return to the fork and go east through tunnel to South Gate Outpost.", coords={x=84.4,y=51.2} },
    { action="turnin", quest=413, name="Shimmer Stout", npc="Mountaineer Barleybrew", coords={x=84.4,y=51.2} },
    { action="accept", quest=414, name="Stout to Kadrell", npc="Mountaineer Barleybrew", coords={x=84.4,y=51.2} },
    
    -- Level 11 - Finish
    { action="info", name="Level 11", note="You should reach Level 11 now.", coords={x=84.4,y=51.2} },
    { action="info", name="Loch Modan", note="Run south through the 2nd tunnel to reach Loch Modan.", coords={x=84.4,y=51.2} },
    
    { nextGuide = "Loch Modan 11-13.lua" }
  }
}