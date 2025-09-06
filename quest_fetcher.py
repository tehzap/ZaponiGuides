#!/usr/bin/env python3
"""
Quest Database Fetcher für TurtleWoW
Automatisiert das Abrufen von Quest-Daten
"""

import requests
import json
import re
from typing import Dict, List, Optional

class TurtleWoWQuestFetcher:
    def __init__(self):
        self.base_url = "https://database.turtle-wow.org"
        self.session = requests.Session()
        
    def search_quest(self, quest_name: str) -> Optional[Dict]:
        """Sucht nach einer Quest in der TurtleWoW Datenbank"""
        # Da die API nicht direkt verfügbar ist, würden wir Web-Scraping verwenden
        search_url = f"{self.base_url}/?search={quest_name.replace(' ', '+')}"
        
        try:
            response = self.session.get(search_url)
            if response.status_code == 200:
                return self.parse_quest_page(response.text)
        except Exception as e:
            print(f"Fehler beim Abrufen von Quest '{quest_name}': {e}")
            
        return None
    
    def parse_quest_page(self, html: str) -> Dict:
        """Parst eine Quest-Seite und extrahiert relevante Daten"""
        quest_data = {}
        
        # Quest ID extrahieren
        id_match = re.search(r'quest=(\d+)', html)
        if id_match:
            quest_data['quest'] = int(id_match.group(1))
            
        # Quest-Giver NPC finden
        npc_match = re.search(r'<a href="\?npc=\d+"[^>]*>([^<]+)</a>', html)
        if npc_match:
            quest_data['npc'] = npc_match.group(1)
            
        return quest_data

# Quest-Mapping für bekannte Quests
KNOWN_QUESTS = {
    "Claws from the Deep": {"quest": 279, "npc": "Karl Boran"},
    "Young Crocolisk Skins": {"quest": 484, "npc": "James Halloran"},
    "The Third Fleet": {"quest": 288, "npc": "First Mate Fitzsimmons"},
    "The Greenwarden": {"quest": 463, "npc": "First Mate Fitzsimmons"},
    "The Absent Minded Prospector": {"quest": 942, "npc": "Archaeologist Flagongut"},
    "The Cursed Crew": {"quest": 289, "npc": "First Mate Fitzsimmons"},
    "Digging Through the Ooze": {"quest": 470, "npc": "Sida"},
    "Report to Captain Stoutfist": {"quest": 473, "npc": "Valstag Ironjaw"},
    "War Banners": {"quest": 464, "npc": "Captain Stoutfist"},
    "Report From Stoutfist": {"quest": 55204, "npc": "Captain Stoutfist"},
    "In Search of The Excavation Team": {"quest": 305, "npc": "Tarrel Rockweaver"},
    "Ormer's Revenge": {"quest": 294, "npc": "Ormer Ironbraid"},
    "Uncovering the Past": {"quest": 299, "npc": "Prospector Whelgar"},
    "Daily Delivery": {"quest": 469, "npc": "Einar Stonegrip"}
}

# NPC Koordinaten für Wetlands
NPC_COORDS = {
    "Karl Boran": {"x": 8.3, "y": 58.6},
    "James Halloran": {"x": 8.5, "y": 55.7},
    "First Mate Fitzsimmons": {"x": 10.9, "y": 59.6},
    "Innkeeper Helbrek": {"x": 10.7, "y": 60.9},
    "Archaeologist Flagongut": {"x": 10.8, "y": 60.4},
    "Sida": {"x": 11.8, "y": 58.0},
    "Valstag Ironjaw": {"x": 10.1, "y": 56.9},
    "Captain Stoutfist": {"x": 9.9, "y": 57.5},
    "Tarrel Rockweaver": {"x": 11.5, "y": 52.1},
    "Ormer Ironbraid": {"x": 38.2, "y": 50.9},
    "Merrin Rockweaver": {"x": 38.9, "y": 52.3},
    "Prospector Whelgar": {"x": 38.8, "y": 52.4},
    "Einar Stonegrip": {"x": 49.9, "y": 39.3}
}

def generate_enhanced_guide():
    """Generiert einen erweiterten Guide mit vollständigen Quest-Daten"""
    guide_template = '''-- WETLANDS 24-27: Enhanced Guide
LevelingGuide = {{
  npcs = {{
{npc_data}
  }},
  steps = {{
{steps}
  }}
}}'''
    
    # NPC-Daten generieren
    npc_lines = []
    for npc, coords in NPC_COORDS.items():
        npc_lines.append(f'    ["{npc}"] = {{x={coords["x"]}, y={coords["y"]}}}')
    npc_data = ',\n'.join(npc_lines)
    
    # Steps generieren mit Quest-IDs
    steps = [
        '{ action="accept", quest=279, name="Claws from the Deep", npc="Karl Boran" }',
        '{ action="accept", quest=484, name="Young Crocolisk Skins", npc="James Halloran" }',
        '{ action="accept", quest=288, name="The Third Fleet", npc="First Mate Fitzsimmons" }',
        '{ action="accept", quest=463, name="The Greenwarden", npc="First Mate Fitzsimmons" }',
        '{ action="info", note="Setze Menethil Harbor als Heimatort.", npc="Innkeeper Helbrek"}',
        '{ action="info", note="Kaufe Flagon of Mead von Innkeeper Helbrek.", npc="Innkeeper Helbrek"}',
        '{ action="turnin", quest=942, name="The Absent Minded Prospector", npc="Archaeologist Flagongut" }',
        '{ action="accept", quest=943, name="The Absent Minded Prospector", npc="Archaeologist Flagongut" }',
        '{ action="turnin", quest=288, name="The Third Fleet", npc="First Mate Fitzsimmons" }',
        '{ action="accept", quest=289, name="The Cursed Crew", npc="First Mate Fitzsimmons" }',
        '{ action="accept", quest=470, name="Digging Through the Ooze", npc="Sida" }',
        '{ action="accept", quest=473, name="Report to Captain Stoutfist", npc="Valstag Ironjaw" }',
        '{ action="info", note="Buy a Bronze Tube and a Gyrochronatom from Neal Allen in the fortress.", coords={x=10.7,y=56.7}}',
        '{ action="turnin", quest=473, name="Report to Captain Stoutfist", npc="Captain Stoutfist" }',
        '{ action="accept", quest=464, name="War Banners", npc="Captain Stoutfist" }',
        '{ action="accept", quest=55204, name="Report From Stoutfist", npc="Captain Stoutfist", note="TurtleWoW specific." }',
        '{ action="accept", quest=305, name="In Search of The Excavation Team", npc="Tarrel Rockweaver" }'
    ]
    
    step_lines = []
    for step in steps:
        step_lines.append(f'    {step}')
    steps_code = ',\n'.join(step_lines)
    
    return guide_template.format(npc_data=npc_data, steps=steps_code)

if __name__ == "__main__":
    print(generate_enhanced_guide())
