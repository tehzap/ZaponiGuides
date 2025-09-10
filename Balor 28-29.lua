-- Balor 28-29 Guide
-- Hier beginnt dein Abenteuer in Balor für Level 28-29!
-- Folge den Schritten und genieße das Leveln.

LevelingGuide_Balor = {
  steps = {
    { action="accept", quest=41786, name="Suspicions From Sea", npc="Elindra Swiftluck", coords={x=38.27,y=70.89}, note="TurtleWoW specfic." },
    { action="info", name="Get Flight Path", note="Get the Balor Flight Path. TurtleWoW specfic.", coords={x=69.6,y=78.4} },
    { action="turnin", quest=41798, name="My Darling Wife", npc="Verona Gillian", coords={x=69.4,y=77.5} },
    { action="accept", quest=41692, name="Assessing The Situation", npc="Verona Gillian", coords={x=69.4,y=77.5} },
    { action="turnin", quest=41799, name="A Hydromancer's Curiosity", npc="Hydromancer Finnigan", coords={x=69.4,y=77.5} },
    { action="accept", quest=41709, name="Ceaseless Storms", npc="Hydromancer Finnigan", coords={x=69.4,y=77.5} },
    { action="accept", quest=41708, name="Stinging Lullaby", npc="Kinrial", coords={x=69.55,y=77.0} },
    { action="accept", quest=41707, name="Fungal Fever", npc="Kinrial", coords={x=69.55,y=77.0} },
    { action="accept", quest=41842, name="Antiquities", npc="Noppsy Spickerspan", coords={x=69.6,y=76.7} },
    { action="accept", quest=41783, name="Forgotten Stories", npc="Noppsy Spickerspan", coords={x=69.6,y=76.7} },
    { action="collect", quest=41707, name="Fungal Fever", item={"Enriched Spore","Writhing Mushroom Mycelia"}, coords={x=47.4,y=80.4}, note="TurtleWoW specfic." },
    { nextGuide = "Duskwood 28-30.lua" },

    -- noch nicht beendete Quests
    { action="info", quest=41708, name="Stinging Lullaby", note="I respect Agent Gillian as our leader, just like a...", coords={x=0,y=0} },
    { action="turnin", quest=41708, name="Stinging Lullaby", npc="Kinrial", coords={x=69.55,y=77.0} },

    
    { action="turnin", quest=41707, name="Fungal Fever", npc="Kinrial", coords={x=38.14,y=70.87} },

    { action="info", quest=41842, name="Antiquities", note="If you’re entering Stormwrought Castle, I have one...", coords={x=0,y=0} },
    { action="turnin", quest=41842, name="Antiquities", npc="Noppsy Spickerspan", coords={x=69.6,y=76.7} },

    { action="info", quest=41783, name="Forgotten Stories", note="You may think an archivist doesn't have much to do...", coords={x=0,y=0} },
    { action="turnin", quest=41783, name="Forgotten Stories", npc="Noppsy Spickerspan", coords={x=69.6,y=76.7} },

    { action="info", quest=41709, name="Ceaseless Storms", note="The storms of Balor fascinate me. During my stay i...", coords={x=0,y=0} },
    { action="turnin", quest=41709, name="Ceaseless Storms", npc="Hydromancer Finnigan", coords={x=0,y=0} },
    
    { action="info", quest=41692, name="Assessing The Situation", note="Good to have more hands on deck. Shaw didn't exact...", coords={x=0,y=0} },
    { action="turnin", quest=41692, name="Assessing The Situation", npc="Verona Gillian", coords={x=69.4,y=77.5} },

    { action="info", quest=41786, name="Suspicions From Sea", note="This island is playing tricks on me. Shrouded in t...", coords={x=0,y=0} },
    { action="turnin", quest=41786, name="Suspicions From Sea", npc="Drak'thul", coords={x=36.84,y=65.78}, note="TurtleWoW specfic." },
    }
}
