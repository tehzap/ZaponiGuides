LevelingGuide_UnGoroCrater = {
  steps = {
    -- Torwa Pathfinder entrance
    { action="accept", quest=4289, name="The Apes of Un'Goro", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="accept", quest=4290, name="The Fare of Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="info", name="Empty Ooze Containers", note="Use Bag of Empty Ooze Containers in your inventory.", coords={x=72.0,y=76.0} },
    { action="info", name="Power Crystals", note="Collect 7 Green, 7 Red, 7 Yellow and 7 Blue Power Crystals during the next steps.", coords={x=72.0,y=76.0} },
    { action="collect", quest=4290, name="The Fare of Lar'korwi", item="Piece of Threshadon Carcass", coords={x=69.0,y=57.0}, note="Click Piece of Threshadon Carcass to pick it up." },
    --{ action="collect", quest=4496, name="Bungle in the Jungle", item="Un'Goro Soil", coords={x=70.0,y=60.0}, note="Loot Un'Goro Dirt Piles for 5 Un'Goro Soil." },
    --{ action="collect", quest=3764, name="Un'Goro Soil", item="Un'Goro Soil", coords={x=70.0,y=60.0}, note="Loot Un'Goro Dirt Piles for 20 Un'Goro Soil." },
    --{ action="collect", quest=4513, name="A Little Slime Goes a Long Way", item="Pure Sample Jar", coords={x=70.0,y=60.0}, note="Use 10 Empty Pure Sample Jars on Muculent/Primal Ooze corpses." },
    { action="accept", quest=3844, name="It's a Secret to Everybody", npc="A Wrecked Raft", coords={x=63.0,y=68.6}, note="Click A Wrecked Raft to accept this Quest." },
    { action="turnin", quest=3844, name="It's a Secret to Everybody", npc="A Small Pack", coords={x=63.1,y=69.0}, note="Click A Small Pack underwater to turn-in this Quest." },
    { action="accept", quest=3845, name="It's a Secret to Everybody", npc="A Small Pack", coords={x=63.1,y=69.0} },
    { action="turnin", quest=4290, name="The Fare of Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="accept", quest=4291, name="The Scent of Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="collect", quest=4291, name="The Scent of Lar'korwi", item="Ravasaur Pheromone Gland", coords={x=66.6,y=66.7}, note="Step on raptor eggs to summon Lar'korwi Mates. Kill Lar'korwi Mates to pick up Ravasaur Pheromone Glands." },
    { action="turnin", quest=4291, name="The Scent of Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="accept", quest=4292, name="The Bait for Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="gather", name="Power Crystals", item={"Green Power Crystal", "Blue Power Crystal", "Red Power Crystal", "Yellow Power Crystal"}, target={7,7,7,7}, coords={x=46.4,y=13.4}, note="Finish collecting Power Crystals." },
    { action="accept", quest=4243, name="Chasing A-Me 01", npc="Karna Remtravel", coords={x=46.4,y=13.4 } },
    { action="accept", quest=4501, name="Beware of Pterrordax", npc="Wanted Poster", coords={x=43.5,y=8.4} },
    { action="accept", quest=3881, name="Expedition Salvation", npc="Williden Marshal", coords={x=43.9,y=7.2} },
    { action="info", name="Small Pack", note="Use A Small Pack in your inventory.", coords={x=43.9,y=7.2} },
    { action="turnin", quest=3845, name="It's a Secret to Everybody", npc="Linken", coords={x=44.7,y=8.1} },
    { action="info", name="Destroy Item", note="Destroy Faded Photograph in your inventory.", coords={x=44.7,y=8.1} },
    { action="accept", quest=4141, name="Muigin and Larion", npc="Muigin", coords={x=42.9,y=9.6} },
    { action="info", name="Get Flight Path", note="Get the Marshal's Refuge Flight Path.", coords={x=45.2,y=5.8} },
    { action="info", name="Cave", note="Enter the cave.", coords={x=43.6,y=7.3} },
    { action="accept", quest=4284, name="Crystals of Power", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="turnin", quest=4284, name="Crystals of Power", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="accept", quest=4285, name="The Northern Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="accept", quest=4287, name="The Eastern Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="info", name="Destroy Crystals", note="Destroy all Power Crystals in your inventory.", coords={x=41.9,y=2.6} },
    { action="accept", quest=3884, name="Williden's Journal", npc="A Mangled Journal", coords={x=43.9,y=7.2}, note="Optional: If you found A Mangled Journal, use it to accept this Quest." },
    { action="turnin", quest=3884, name="Williden's Journal", npc="Williden Marshal", coords={x=43.9,y=7.2} },
    { action="collect", quest=4141, name="Muigin and Larion", item="Bloodpetal", coords={x=52.8,y=15.6}, note="Kill Bloodpetal Flayers to pick up Bloodpetals." },
    { action="info", quest=4285, name="The Northern Pylon", coords={x=56.5,y=12.4}, note="Click Northern Crystal Pylon to discover it." },
    { action="collect", quest=4289, name="The Apes of Un'Goro", item={"Un'Goro Gorilla Pelt","Un'Goro Stomper Pelt","Un'Goro Thunderer Pelt"}, coords={x=63.4,y=16.6}, note="Kill Gorillas for Gorilla Pelts, Stompers for Stomper Pelts and Thunderers for Thunderer Pelts. Thunderers can be found in the cave." },
    { action="turnin", quest=4243, name="Chasing A-Me 01", npc="A-Me 01", coords={x=67.7,y=16.8}, note="He is inside the cave." },
    { action="accept", quest=4244, name="Chasing A-Me 01", npc="A-Me 01", coords={x=67.7,y=16.8} },
    { action="turnin", quest=4244, name="Chasing A-Me 01", npc="A-Me 01", coords={x=67.7,y=16.8} },
    { action="accept", quest=4245, name="Chasing A-Me 01", npc="A-Me 01", coords={x=67.7,y=16.8} },
    { action="info", quest=4245, name="Chasing A-Me 01", coords={x=46.4,y=13.4}, note="Escort A-Me 01 out of the cave to Marshal's Refuge." },
    { action="turnin", quest=4245, name="Chasing A-Me 01", npc="Karna Remtravel", coords={x=46.4,y=13.4} },
    { action="accept", quest=4503, name="Shizzle's Flyer", npc="Shizzle", coords={x=44.2,y=11.6} },
    { action="accept", quest=3882, name="Roll the Bones", npc="Spark Nilminer", coords={x=43.5,y=7.4} },
    { action="accept", quest=3883, name="Alien Ecology", npc="Hol'anyee Marshal", coords={x=43.9,y=7.2} },
    { action="collect", quest=4504, name="Super Sticky", item="Super Sticky Tar", coords={x=47.5,y=21.9}, note="Kill Tar Lords and Lurkers to pick up Super Sticky Tar." },
    
    -- Diemetradon area
    { action="info", name="Fire Plume Ridge", note="Grind southeast of Fire Plume Ridge.", coords={x=60.0,y=70.0} },
    { action="kill", quest=4503, name="Shizzle's Flyer", mob="Diemetradon", coords={x=60.0,y=70.0}, note="Kill Diemetradons for 8 Webbed Diemetradon Scales." },
    
    -- Crate of Foodstuffs
    { action="collect", quest=3881, name="Expedition Salvation", item="Crate of Foodstuffs", coords={x=68.0,y=36.0}, note="Grind northeast and loot Crate of Foodstuffs." },
    
    -- Complete remaining collections
    { action="info", name="Complete Collections", note="Finish A Little Slime Goes a Long Way and Muigin and Larion.", coords={x=70.0,y=50.0} },
    { action="kill", quest=4513, name="A Little Slime Goes a Long Way", mob={"Muculent Ooze","Primal Ooze"}, coords={x=70.0,y=50.0}, note="Kill 10 oozes and use Empty Pure Sample Jars on corpses." },
    { action="kill", quest=4141, name="Muigin and Larion", mob="Bloodpetal Flayer", coords={x=30.0,y=10.0}, note="Finish collecting 15 Bloodpetals." },
    
    -- Eastern Crystal Pylon
    { action="collect", quest=4287, name="The Eastern Pylon", item="Eastern Pylon Crystal", coords={x=77.0,y=50.0}, note="Run southeast to the Eastern Crystal Pylon and loot it." },
    
    -- Lar'korwi boss fight
    { action="info", name="Lar'korwi Hunt", note="Run east to the bones area.", coords={x=79.0,y=49.0} },
    { action="info", name="Use Items", note="Use Torwa's Pouch, then Preserved Threshadon Meat, then Preserved Pheromone Mixture near the rock slab.", coords={x=79.0,y=49.0} },
    { action="kill", quest=4292, name="The Bait for Lar'korwi", mob="Lar'korwi", coords={x=79.0,y=49.0}, note="Kill Lar'korwi for Lar'korwi's Head." },
    
    -- Return to Torwa
    { action="turnin", quest=4292, name="The Bait for Lar'korwi", npc="Torwa Pathfinder", coords={x=71.6,y=75.9}, note="Run south to Torwa Pathfinder." },
    { action="turnin", quest=4289, name="The Apes of Un'Goro", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    { action="accept", quest=4301, name="The Mighty U'cha", npc="Torwa Pathfinder", coords={x=71.6,y=75.9} },
    
    -- Pterrordax hunting
    { action="info", name="Pterrordax Cliffs", note="Run southwest to the cliffs.", coords={x=57.0,y=86.0} },
    { action="kill", quest=4501, name="Beware of Pterrordax", mob="Pterrordax", coords={x=57.0,y=86.0}, note="Kill 10 Pterrordax. They can fear!" },
    { action="kill", quest=4503, name="Shizzle's Flyer", mob="Pterrordax", coords={x=57.0,y=86.0}, note="Kill Pterrordax for 8 Webbed Pterrordax Scales." },
    { action="kill", quest=3882, name="Roll the Bones", mob="Diemetradon", coords={x=57.0,y=86.0}, note="Kill Dinosaurs for 8 Dinosaur Bones." },
    { action="collect", name="Un'Goro Soil", item="Un'Goro Soil", coords={x=57.0,y=86.0}, note="Collect 5 Un'Goro Soil for later." },
    
    -- Slithering Scar
    { action="info", name="Slithering Scar", note="Grind down into the Slithering Scar.", coords={x=50.0,y=80.0} },
    { action="kill", quest=4496, name="Bungle in the Jungle", mob="Gorishi Silithid", coords={x=50.0,y=80.0}, note="Kill Gorishi for 1 Gorishi Scent Gland." },
    { action="info", name="Center Mound", note="Grind to the center mound in the south room.", coords={x=50.0,y=84.0} },
    { action="collect", quest=3883, name="Alien Ecology", item="Alien Ecology Sample", coords={x=50.0,y=84.0}, note="Use Unused Scraping Vial on the center mound." },
    
    -- Hearthstone to Gadgetzan
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Gadgetzan.", coords={x=50.0,y=84.0} },
    { action="turnin", quest=4504, name="Super Sticky", npc="Tran'rek", coords={x=51.6,y=26.9}, note="North side of Gadgetzan." },
    { action="turnin", quest=4496, name="Bungle in the Jungle", npc="Alchemist Pestlezugg", coords={x=50.9,y=27.0}, note="In the hut." },
    { action="accept", quest=4507, name="Pawn Captures Queen", npc="Alchemist Pestlezugg", coords={x=50.9,y=27.0} },
    
    -- Fly back to Marshal's Refuge
    { action="info", name="Marshal's Refuge", note="Fly from Gadgetzan to Marshal's Refuge.", coords={x=51.0,y=25.4} },
    { action="turnin", quest=3883, name="Alien Ecology", npc="Hol'anyee Marshal", coords={x=43.9,y=7.2} },
    { action="turnin", quest=3882, name="Roll the Bones", npc="Spark Nilminer", coords={x=43.9,y=7.2} },
    { action="accept", quest=4492, name="Lost!", npc="Spraggle Frock", coords={x=43.1,y=6.2} },
    { action="accept", quest=3908, name="It's a Secret to Everybody", npc="Linken", coords={x=44.7,y=8.1}, note="In the tree trunk." },
    { action="info", name="Repair/Vendor", note="Repair and sell at Gibbert.", coords={x=43.0,y=8.5} },
    { action="turnin", quest=4141, name="Muigin and Larion", npc="Muigin", coords={x=42.9,y=9.6} },
    { action="accept", quest=4142, name="A Visit to Gregan", npc="Muigin", coords={x=42.9,y=9.6} },
    
    -- Crystal cave completions
    { action="turnin", quest=4285, name="The Northern Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6}, note="In the crystal cave." },
    { action="turnin", quest=4287, name="The Eastern Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="accept", quest=4288, name="The Western Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="turnin", quest=4503, name="Shizzle's Flyer", npc="Shizzle", coords={x=45.3,y=8.7} },
    
    -- U'cha boss fight
    { action="info", name="Fungal Rock", note="Grind east to the cave at Fungal Rock.", coords={x=65.0,y=16.0} },
    { action="kill", quest=4301, name="The Mighty U'cha", mob="U'cha", coords={x=65.0,y=16.0}, note="Grind deep to the back of the cave and kill U'cha for U'cha's Pelt." },
    
    -- Frenzied Pterrordax
    { action="info", name="Western Cliffs", note="Grind far southwest to the cliffs. Be very careful not to die here!", coords={x=23.0,y=41.0} },
    { action="kill", quest=4501, name="Beware of Pterrordax", mob="Frenzied Pterrordax", coords={x=23.0,y=41.0}, note="Kill 15 Frenzied Pterrordax. They can fear!" },
    
    -- Western Crystal Pylon
    { action="collect", quest=4288, name="The Western Pylon", item="Western Pylon Crystal", coords={x=24.0,y=59.0}, note="Grind south to the Western Crystal Pylon and loot it." },
    
    -- Finding the Source
    { action="accept", quest=974, name="Finding the Source", npc="Krakle", coords={x=31.0,y=50.0}, note="Run northeast to Krakle." },
    
    -- Research Equipment
    { action="collect", quest=3881, name="Expedition Salvation", item="Research Equipment", coords={x=38.5,y=66.0}, note="Run southeast and loot Research Equipment." },
    
    -- Return to Torwa for U'cha
    { action="turnin", quest=4301, name="The Mighty U'cha", npc="Torwa Pathfinder", coords={x=71.6,y=75.9}, note="Run far southeast to Torwa Pathfinder." },
    { action="info", name="Equip Reward", note="Paladins/Warriors: Equip Beastslayer. Rogues: Equip Beastsmasher mainhand.", coords={x=72.0,y=76.0} },
    
    -- Gorishi Queen (Group content)
    { action="info", name="Group Required", note="The next quest requires a group of 2+ players.", coords={x=50.0,y=80.0} },
    { action="info", name="Slithering Scar", note="Run west to The Slithering Scar and grind deep to the northwest room.", coords={x=50.0,y=80.0} },
    { action="info", name="Queen Strategy", note="Use Gorishi Queen Lure on the crystal. Use tunnel outside room to avoid being overwhelmed. Clear waves carefully.", coords={x=46.0,y=78.0} },
    { action="kill", quest=4507, name="Pawn Captures Queen", mob="Gorishi Hive Queen", coords={x=46.0,y=78.0}, note="Kill Gorishi Hive Queen for Gorishi Queen Brain." },
    
    -- Final turn-ins
    { action="info", name="Hearthstone", note="Use Hearthstone to return to Gadgetzan.", coords={x=46.0,y=78.0} },
    { action="turnin", quest=4507, name="Pawn Captures Queen", npc="Alchemist Pestlezugg", coords={x=50.9,y=27.0} },
    { action="accept", quest=4508, name="Calm Before the Storm", npc="Alchemist Pestlezugg", coords={x=50.9,y=27.0} },
    
    -- Final Marshal's Refuge turn-ins
    { action="info", name="Marshal's Refuge", note="Fly from Gadgetzan to Marshal's Refuge.", coords={x=51.0,y=25.4} },
    { action="turnin", quest=3881, name="Expedition Salvation", npc="Williden Marshal", coords={x=43.9,y=7.2} },
    { action="turnin", quest=4501, name="Beware of Pterrordax", npc="Spraggle Frock", coords={x=43.1,y=6.2} },
    { action="turnin", quest=4288, name="The Western Pylon", npc="J.D. Collie", coords={x=41.9,y=2.6}, note="In the crystal cave." },
    { action="accept", quest=4321, name="Making Sense of It", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="turnin", quest=4321, name="Making Sense of It", npc="J.D. Collie", coords={x=41.9,y=2.6} },
    { action="info", name="Destroy Item", note="Destroy Crystal Pylon User's Manual from your inventory.", coords={x=41.9,y=2.6} },
    { action="info", name="Repair/Vendor", note="Repair and sell at Gibbert.", coords={x=43.0,y=8.5} },
    { action="info", name="Destroy Item", note="Destroy Gorishi Queen Lure from your inventory.", coords={x=43.0,y=8.5} },
    
    -- Fire Plume Ridge finale
    { action="info", name="Fire Plume Ridge", note="Run far south to Fire Plume Ridge.", coords={x=49.7,y=45.8} },
    { action="collect", quest=974, name="Finding the Source", item="Temperature Reading", coords={x=49.7,y=45.8}, note="Use Krakle's Thermometer at the Fire Plume Ridge Hot Spot on top of the mountain." },
    { action="kill", quest=4502, name="Volcanic Activity", mob="Living Blaze", coords={x=49.7,y=45.8}, note="Kill Living Blazes for 9 Un'Goro Ash." },
    
    -- Ringo rescue
    { action="info", name="Ringo's Cave", note="Grind to the ramp at 54.5, 50, then run up to the cave.", coords={x=51.0,y=50.0} },
    { action="turnin", quest=4492, name="Lost!", npc="Ringo", coords={x=51.0,y=50.0}, note="In the cave." },
    { action="accept", quest=4491, name="A Little Help From My Friends", npc="Ringo", coords={x=51.0,y=50.0} },
    { action="info", name="Canteen", note="Use Spraggle's Canteen on Ringo when he faints.", coords={x=51.0,y=50.0} },
    { action="collect", quest=4491, name="A Little Help From My Friends", item="Ringo Escort", coords={x=51.0,y=50.0}, note="Escort Ringo northwest to Marshal's Refuge." },
    
    -- Final escort completion
    { action="turnin", quest=4491, name="A Little Help From My Friends", npc="Spraggle Frock", coords={x=43.1,y=6.2}, note="At Marshal's Refuge. Reward: Treetop Leggings." },
    
    -- Final collections
    { action="collect", quest=3764, name="Un'Goro Soil", item="Un'Goro Soil", coords={x=50.0,y=40.0}, note="Finish collecting 20 Un'Goro Soil." },
    { action="collect", quest=4142, name="A Visit to Gregan", item="Bloodpetal", coords={x=30.0,y=10.0}, note="Collect 1 Bloodpetal." },
    
    -- Finding the Source completion
    { action="turnin", quest=974, name="Finding the Source", npc="Krakle", coords={x=31.0,y=50.0}, note="Run far southwest to Krakle." },
    { action="accept", quest=980, name="The New Springs", npc="Krakle", coords={x=31.0,y=50.0} },
    
    -- Level achievement
    { action="info", name="Level 56", note="Grind nearby until Level 56.", coords={x=31.0,y=50.0} },
    
    -- Travel to Silithus
    { action="info", name="Silithus", note="Run far north to the ramp, then north up to Silithus.", coords={x=29.0,y=22.0} },
    { action="info", name="Cenarion Hold", note="Continue southwest along the road to Cenarion Hold.", coords={x=82.0,y=19.0} },
    { action="info", name="Flight Point", note="Get the Cenarion Hold flight point from Cloud Skydancer.", coords={x=81.0,y=19.0} },
    
    -- Travel to next zone
    { action="info", name="Feathermoon", note="Fly from Cenarion Hold to Feathermoon for the next zone.", coords={x=81.0,y=19.0} },
    
    { nextGuide = "Feralas 56.lua" }
  }
}