LevelingGuide_WesternPlaguelands = {
  steps = {
    { action="turnin", quest=5091, name="A Call to Arms: The Plaguelands!", npc="Commander Ashlam Valorfist", coords={x=42.7,y=84.1} },
    { action="accept", quest=5092, name="Clear the Way", npc="Commander Ashlam Valorfist", coords={x=42.7,y=84.1} },
    { action="turnin", quest=5401, name="Argent Dawn Commission", npc="Argent Officer Pureheart", coords={x=43.0,y=83.6}, note="You can turn-in this Quest, despite being in your Quest Log." },
    { action="info", name="Equip", note="Equip the Argent Dawn Commission Trinket to gain Scourgestones.", coords={x=43.0,y=83.6} },
    
    -- Sorrow Hill
    { action="info", name="Sorrow Hill", note="Run northeast to Sorrow Hill.", coords={x=58.0,y=71.0} },
    { action="kill", quest=5092, name="Clear the Way", mob={"Skeletal Flayer","Slavering Ghoul"}, coords={x=58.0,y=71.0}, note="Kill 10 Skeletal Flayers and 10 Slavering Ghouls." },
    
    -- Return to Chillwind Camp
    { action="turnin", quest=5092, name="Clear the Way", npc="Commander Ashlam Valorfist", coords={x=42.7,y=84.1}, note="Run southwest back to Chillwind Camp." },
    { action="accept", quest=5215, name="The Scourge Cauldrons", npc="Commander Ashlam Valorfist", coords={x=42.7,y=84.1} },
    { action="turnin", quest=5215, name="The Scourge Cauldrons", npc="High Priestess MacDonnell", coords={x=42.9,y=84.5} },
    { action="accept", quest=5216, name="Target: Felstone Field", npc="High Priestess MacDonnell", coords={x=42.9,y=84.5} },
    { action="info", name="Repair/Vendor", note="Repair and sell at Leonard Porter if needed.", coords={x=42.9,y=84.5} },
    
    -- Felstone Field
    { action="info", name="Felstone Field", note="Run northwest across the land bridge, then north to Felstone Field.", coords={x=38.5,y=54.0} },
    { action="accept", quest=5021, name="Better Late Than Never", npc="Janice Felstone", coords={x=38.5,y=54.0}, note="Grind to the northwest house and go upstairs." },
    { action="collect", quest=5021, name="Better Late Than Never", item="Janice's Parcel", coords={x=38.8,y=55.3}, note="Just east at the barn. Wait for Scarlet Crusade vs Scourge fighting, then loot the parcel inside." },
    { action="turnin", quest=5021, name="Better Late Than Never", npc="Janice Felstone", coords={x=38.5,y=54.0} },
    { action="accept", quest=5022, name="Better Late Than Never", npc="Janice Felstone", coords={x=38.5,y=54.0}, note="Loot Janice's Parcel again to get this quest." },
    
    -- Scourge Cauldron (Group content)
    { action="info", name="Group Required", note="The next quest requires a group of 2+ players.", coords={x=37.1,y=56.8} },
    { action="kill", quest=5216, name="Target: Felstone Field", mob="Cauldron Lord Bilemaw", coords={x=37.1,y=56.8}, note="Near the Scourge Cauldron. Kill Cauldron Lord Bilemaw for the key." },
    { action="collect", quest=5216, name="Target: Felstone Field", item="Felstone Field Cauldron Key", coords={x=37.1,y=56.8}, note="Loot the Scourge Cauldron after killing the boss." },
    { action="turnin", quest=5216, name="Target: Felstone Field", npc="Scourge Cauldron", coords={x=37.1,y=56.8} },
    { action="accept", quest=5217, name="Return to Chillwind Camp", npc="Scourge Cauldron", coords={x=37.1,y=56.8} },
    
    -- Return to Chillwind Camp
    { action="turnin", quest=5217, name="Return to Chillwind Camp", npc="High Priestess MacDonnell", coords={x=42.9,y=84.5}, note="Run southeast back to Chillwind Camp." },
    { action="info", name="Repair/Vendor", note="Repair and sell at Leonard Porter.", coords={x=42.9,y=84.5} },
    { action="accept", quest=5510, name="Minion's Scourgestones", npc="Argent Officer Pureheart", coords={x=42.8,y=83.8}, note="Turn in Scourgestones as much as possible." },
    
    -- Transportation to Ironforge
    { action="info", name="Mage Teleport", note="Mages: Use Teleport: Ironforge.", coords={x=42.7,y=84.1} },
    { action="info", name="Flight Path", note="Others: Fly from Chillwind Camp to Ironforge.", coords={x=42.8,y=84.7} },
    
    -- Ironforge quests
    { action="turnin", quest=3461, name="Return to Tymor", npc="Tymor", coords={x=67.9,y=17.5}, note="In The Mystic Ward, west side of Ironforge." },
    { action="turnin", quest=4512, name="A Little Slime Goes a Long Way", npc="Laris Geardawdle", coords={x=69.5,y=50.1}, note="In Hall of Explorers. Turn in, then accept the follow-up." },
    { action="accept", quest=4513, name="A Little Slime Goes a Long Way", npc="Laris Geardawdle", coords={x=69.5,y=50.1} },
    
    -- Travel to Stormwind
    { action="info", name="Mage Teleport", note="Mages: Use Teleport: Stormwind.", coords={x=69.5,y=50.1} },
    { action="info", name="Flight Path", note="Others: Fly from Ironforge to Stormwind.", coords={x=55.5,y=47.8} },
    
    -- Stormwind quests
    { action="turnin", quest=5022, name="Better Late Than Never", npc="Royal Factor Bathrilor", coords={x=57.6,y=47.7}, note="In Cathedral Square, upstairs." },
    { action="accept", quest=5048, name="Good Natured Emma", npc="Royal Factor Bathrilor", coords={x=57.6,y=47.7} },
    { action="turnin", quest=5048, name="Good Natured Emma", npc="Ol' Emma", coords={x=59.9,y=44.2}, note="Southeast at canal side of Cathedral Square, upstairs." },
    { action="accept", quest=5050, name="Good Luck Charm", npc="Ol' Emma", coords={x=59.9,y=44.2} },
    { action="turnin", quest=1469, name="Rhapsody's Tale", npc="Brohann Caskbelly", coords={x=64.3,y=20.7}, note="In the Dwarven District." },
    
    -- Travel to Nethergarde Keep
    { action="info", name="Nethergarde Keep", note="Fly from Stormwind to Nethergarde Keep.", coords={x=66.3,y=62.1} },
    
    -- Nethergarde Keep and Blasted Lands
    { action="turnin", quest=2991, name="Nekrum's Medallion", npc="Thadius Grimshade", coords={x=66.5,y=21.0}, note="Just north atop the tower. Dungeon quest from Zul'Farrak." },
    { action="accept", quest=2992, name="The Divination", npc="Thadius Grimshade", coords={x=66.5,y=21.0} },
    { action="turnin", quest=2992, name="The Divination", npc="Thadius Grimshade", coords={x=66.5,y=21.0}, note="Turn in immediately, skip follow-up." },
    { action="accept", quest=2783, name="Petty Squabbles", npc="Ambassador Ardalan", coords={x=66.9,y=19.4} },
    
    -- Swamp of Sorrows
    { action="info", name="Swamp of Sorrows", note="Run northwest into Swamp of Sorrows.", coords={x=34.3,y=66.0} },
    { action="turnin", quest=2783, name="Petty Squabbles", npc="Fallen Hero of the Horde", coords={x=34.3,y=66.0} },
    { action="accept", quest=2801, name="A Tale of Sorrow", npc="Fallen Hero of the Horde", coords={x=34.3,y=66.0} },
    { action="info", name="Dialog", note="Speak through all the dialog options.", coords={x=34.3,y=66.0} },
    { action="turnin", quest=2801, name="A Tale of Sorrow", npc="Fallen Hero of the Horde", coords={x=34.3,y=66.0}, note="Skip the follow-up quest." },
    
    -- Level 54 achievement
    { action="info", name="Level 54", note="You should reach Level 54 now.", coords={x=34.3,y=66.0} },
    
    -- Return to Nethergarde Keep
    { action="info", name="Nethergarde Keep", note="Run southeast back to Nethergarde Keep.", coords={x=66.9,y=19.4} },
    { action="info", name="Flight Path", note="Fly from Nethergarde Keep to Lakeshire.", coords={x=65.8,y=24.4} },
    
    -- Travel to Burning Steppes
    { action="info", name="Burning Steppes", note="Run northeast along the road to Burning Steppes.", coords={x=84.6,y=69.3} },
    
    { nextGuide = "Burning Steppes 54-55.lua" }
  }
}