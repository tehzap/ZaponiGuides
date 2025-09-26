-- Tanaris 43-44 Guide
-- Based on https://www.sageguide.net/43-44_tanaris

LevelingGuide_Tanaris = { 
  steps = {
    -- Arrival in Gadgetzan
    { action="info", name="Set Hearthstone", note="Bind your Hearthstone to Gadgetzan at Innkeeper Fizzgrimble.", coords={x=52.5,y=27.9} },
    { action="accept", quest=1690, name="Wastewander Justice", npc="Chief Engineer Bilgewhizzle", coords={x=52.5,y=28.5} },
    { action="accept", quest=1707, name="Water Pouch Bounty", npc="Spigot Operator Luglunket", coords={x=52.5,y=28.4} },
    { action="accept", quest=2781, name="WANTED: Caliph Scorpidsting", npc="Wanted Poster", coords={x=51.8,y=27.0} },
    { action="accept", quest=2875, name="WANTED: Andre Firebeard", npc="Wanted Poster", coords={x=51.8,y=27.0} },
    { action="turnin", quest=2864, name="Tran'rek", npc="Tran'rek", coords={x=51.6,y=26.8} },
    { action="accept", quest=992, name="Gadgetzan Water Survey", npc="Senior Surveyor Fizzledowser", coords={x=50.2,y=27.5} },
    { action="info", name="Thousand Needles", note="Go to Thousand Needles.", coords={x=51.3,y=20.9} },
    { action="turnin", quest=1117, name="Rumors for Kravel", npc="Kravel Koalbeard", coords={x=77.8,y=77.3} },
    { action="turnin", quest=1137, name="News for Fizzle", npc="Fizzle Brassbolts", coords={x=78.1,y=77.1} },
    { action="turnin", quest=1183, name="Goblin Sponsorship", npc="Pozzik", coords={x=80.2,y=75.9} },
    { action="accept", quest=1186, name="The Eighteenth Pilot", npc="Pozzik", coords={x=80.2,y=75.9} },
    { action="accept", quest=1190, name="Keeping Pace", npc="Pozzik", coords={x=80.2,y=75.9} },
    { action="turnin", quest=1186, name="The Eighteenth Pilot", npc="Razzeric", coords={x=80.3,y=76.1} },
    { action="accept", quest=1187, name="Razzeric's Tweaking", npc="Razzeric", coords={x=80.3,y=76.1} },
    { action="turnin", quest=1191, name="Zamek's Distraction", npc="Zamek", coords={x=79.8,y=77.0} },
    { action="turnin", quest=1190, name="Keeping Pace", npc="Rizzle's Unguarded Plans", coords={x=77.2,y=77.4}, note="Click Rizzle's Unguarded Plans to turn-in the Quest." },
    { action="accept", quest=1194, name="Rizzle's Schematics", npc="Rizzle's Unguarded Plans", coords={x=77.2,y=77.4} },
    { action="turnin", quest=1194, name="Rizzle's Schematics", npc="Pozzik", coords={x=80.2,y=75.9} },
    { action="info", name="Destroy", note="Destroy Sample of Indurium Ore from your bags.", coords={x=80.2,y=75.9} },
    { action="info", name="Tanaris", note="Go to Tanaris.", coords={x=75.5,y=97.6} },
    { action="kill", quest=1690, name="Wastewander Justice", mob={"Wastewander Bandit","Wastewander Thief"}, coords={x=60.3,y=23.4} },
    { action="collect", quest=1707, name="Water Pouch Bounty", item="Water Pouch", coords={x=60.3,y=23.4}, note="Kill Wastewanders to pick up Water Pouches." },
    { action="accept", quest=8365, name="Pirate Hats Ahoy!", npc="Haughty Modiste", coords={x=66.6,y=22.3} },
    { action="accept", quest=3520, name="Screecher Spirits", npc="Yeh'kinya", coords={x=67.0,y=22.4} },
    { action="accept", quest=8366, name="Southsea Shakedown", npc="Security Chief Bilgewhizzle", coords={x=67.1,y=23.9} },
    { action="turnin", quest=2872, name="Stoley's Debt", npc="Stoley", coords={x=67.1,y=24.0} },
    { action="accept", quest=2873, name="Stoley's Shipment", npc="Stoley", coords={x=67.1,y=24.0} },
    { action="turnin", quest=1690, name="Wastewander Justice", npc="Chief Engineer Bilgewhizzle", coords={x=52.5,y=28.5} },
    { action="accept", quest=1691, name="More Wastewander Justice", npc="Chief Engineer Bilgewhizzle", coords={x=52.5,y=28.5} },
    { action="turnin", quest=1707, name="Water Pouch Bounty", npc="Spigot Operator Luglunket", coords={x=52.5,y=28.4} },
    { action="collect", quest=2781, name="WANTED: Caliph Scorpidsting", item="Caliph Scorpidsting's Head", coords={x=61.7,y=38.3}, note="Kill Caliph Scorpidsting to pick up Caliph Scorpidsting's Head." },
    { action="kill", quest=1691, name="More Wastewander Justice", mob={"Wastewander Rogue","Wastewander Assassin","Wastewander Shadow Mage"}, coords={x=61.8,y=38.2} },
    { action="collect", quest=2875, name="WANTED: Andre Firebeard", item="Firebeard's Head", coords={x=73.4,y=47.1} },
    { action="info", quest=2873, name="Stoley's Shipment", note="Click Stolen Cargo to pick up Stoley's Shipment. It's on the top floor.", coords={x=72.2,y=46.8} },
    { action="collect", quest=8365, name="Pirate Hats Ahoy!", item="Southsea Pirate Hat", coords={x=75.8,y=45.6} },
    { action="kill", quest=8366, name="Southsea Shakedown", mob={"Southsea Pirate","Southsea Freebooter","Southsea Dock Worker","Southsea Swashbuckler"}, coords={x=75.8,y=45.6} },
    { action="info", name="Gadgetzan", note="Use Hearthstone to return to Gadgetzan.", coords={x=75.8,y=45.6} },
    { action="turnin", quest=1691, name="More Wastewander Justice", npc="Chief Engineer Bilgewhizzle", coords={x=52.5,y=28.5} },
    { action="turnin", quest=2781, name="WANTED: Caliph Scorpidsting", npc="Chief Engineer Bilgewhizzle", coords={x=52.5,y=28.5} },
    { action="turnin", quest=8365, name="Pirate Hats Ahoy!", npc="Haughty Modiste", coords={x=66.6,y=22.3} },
    { action="turnin", quest=2875, name="WANTED: Andre Firebeard", npc="Security Chief Bilgewhizzle", coords={x=67.1,y=23.9} },
    { action="turnin", quest=8366, name="Southsea Shakedown", npc="Security Chief Bilgewhizzle", coords={x=67.1,y=23.9} },
    { action="turnin", quest=2873, name="Stoley's Shipment", npc="Stoley", coords={x=67.1,y=24.0} },
    { action="accept", quest=2874, name="Deliver to MacKinley", npc="Stoley", coords={x=67.1,y=24.0} },
    { nextGuide = "Gilneas 44.lua" },   
    
    --{ action="info", name="Ship Schedule", note="If you found Ship Schedule, use it to accept and complete Ship Schedules quest", coords={x=67.1,y=24.0} },
    --{ action="info", name="Grind", note="Grind until Level 44 and 15 bars.", coords={x=75.8,y=45.6} },

    { action="info", quest=992, name="Gadgetzan Water Survey", target="Untapped Dowsing Widget", coords={x=39,y=29} },
    
    -- Return to Gadgetzan
    { action="info", name="Return to Gadgetzan", note="Run east back to Gadgetzan", coords={x=52,y=28} },
    { action="turnin", quest=992, name="Gadgetzan Water Survey", npc="Senior Surveyor Fizzledowser", coords={x=50,y=27} },
    
    -- Travel to Theramore
    { action="info", name="Fly to Theramore", note="Fly from Gadgetzan to Theramore Isle", coords={x=51,y=29} },
    
    -- Gizmorium Shipping Crate
    { action="info", name="Travel to Gizmorium Crate", note="Run southwest to find the Gizmorium Shipping Crate", coords={x=54,y=56} },
    { action="interact", quest=1187, name="Razzeric's Tweaking", target="Gizmorium Shipping Crate", coords={x=54,y=56} },
    
    -- Mage quest (Mages only)
    { action="info", name="Mage quest", note="Mages: If you completed Rituals of Power in SM Library, visit Tabetha", coords={x=46,y=57} },
    
    -- Dustwallow Marsh - Cortello's Riddle
    { action="info", name="Travel to Bloodfen Burrow", note="Run southwest to Bloodfen Burrow cave", coords={x=31,y=66} },
    { action="interact", quest=625, name="Cortello's Riddle", target="Musty Scroll", coords={x=31,y=66} },
    { action="turnin", quest=625, name="Cortello's Riddle", npc="Musty Scroll", coords={x=31,y=66} },
    { action="accept", quest=626, name="Cortello's Riddle", npc="Musty Scroll", coords={x=31,y=66} },
    
    -- Final preparations
    { action="info", name="Gadgetzan", note="Use Hearthstone to return to Gadgetzan", coords={x=52,y=28} },
    { action="info", name="Fly to Feathermoon", note="Fly from Gadgetzan to Feathermoon Stronghold in Feralas", coords={x=51,y=29} },
    
    { nextGuide = "Feralas 44-46.lua" }
  }
}