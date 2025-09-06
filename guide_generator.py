#!/usr/bin/env python3
"""
Intelligenter Guide Generator für RXPGuides_MVS
Parst komplexe Guide-Texte und extrahiert Kontextinformationen
"""

import re
import json
from typing import Dict, List, Optional, Tuple

class IntelligentGuideParser:
    def __init__(self):
        # Umfangreiche Quest-Datenbank
        self.quest_database = {
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
            "Daily Delivery": {"quest": 469, "npc": "Einar Stonegrip"},
            "Tramping Paws": {"quest": 276, "npc": "Rethiel the Greenwarden"},
            "Fire Taboo": {"quest": 277, "npc": "Rethiel the Greenwarden"},
            "Blisters on The Land": {"quest": 471, "npc": "Rethiel the Greenwarden"},
            "Lifting the Curse": {"quest": 290, "npc": "First Mate Fitzsimmons"},
            "Apprentice's Duties": {"quest": 471, "npc": "Theldurin the Lost"},
            "Nek'Rosh's Gambit": {"quest": 465, "npc": "Captain Stoutfist"},
            "The Search Continues": {"quest": 284, "npc": "Archeologist Hollee"},
            "Search More Hovels": {"quest": 285, "npc": "Prospector Ironband"},
            "Return the Statuette": {"quest": 286, "npc": "Harlo Barnaby"},
            "Reclaiming Goods": {"quest": 289, "npc": "First Mate Fitzsimmons"}
        }
        
        # NPC Koordinaten
        self.npc_coords = {
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
            "Einar Stonegrip": {"x": 49.9, "y": 39.3},
            "Rethiel the Greenwarden": {"x": 56.4, "y": 40.4},
            "Theldurin the Lost": {"x": 47.5, "y": 46.9},
            "Archeologist Hollee": {"x": 14.3, "y": 38.1},
            "Prospector Ironband": {"x": 14.3, "y": 35.8},
            "Harlo Barnaby": {"x": 10.1, "y": 60.2}
        }
        
        # Parsing-Patterns
        self.patterns = {
            'multi_action': r'Turn in "([^"]+)"\s*,\s*accept\s+(.+?)(?:\.|$)',
            'accept_from': r'Accept\s+\[?([^\]]+)\]?\s+from\s+\[?([^\]\.]+)\]?',
            'accept_simple': r'Accept\s+\[?([^\]\.]+)\]?',
            'turnin_to': r'Turn in\s+"([^"]+)"\s+to\s+\[?([^\]\.]+)\]?',
            'turnin_simple': r'Turn in\s+"([^"]+)"',
            'kill_mob': r'Kill\s+(?:\d+\s+)?\[?([^\]]+)\]?(?:\s+and\s+\[?([^\]]+)\]?)?',
            'coordinates': r'(\d+)\.(\d+)',
            'at_location': r'At\s+(?:the\s+)?(\d+)\.(\d+)',
            'npc_reference': r'(?:to|from)\s+\[?([A-Z][^\]\.]+)\]?'
        }
    
    def parse_complex_line(self, line: str) -> List[Dict]:
        """Parst eine komplexe Zeile wie 'Turn in "Fire Taboo" , accept Blisters on The Land.'"""
        steps = []
        
        # Multi-Action Pattern (Turn in + Accept)
        multi_match = re.search(self.patterns['multi_action'], line)
        if multi_match:
            turnin_quest = multi_match.group(1)
            accept_quest = multi_match.group(2).strip()
            
            # Turn in Step
            if turnin_quest in self.quest_database:
                quest_data = self.quest_database[turnin_quest]
                turnin_step = {
                    'action': 'turnin',
                    'quest': quest_data['quest'],
                    'name': turnin_quest,
                    'npc': quest_data['npc']
                }
                steps.append(turnin_step)
            
            # Accept Step
            # Entferne eckige Klammern und Punkt
            accept_quest = re.sub(r'[\[\]\.]', '', accept_quest)
            if accept_quest in self.quest_database:
                quest_data = self.quest_database[accept_quest]
                accept_step = {
                    'action': 'accept',
                    'quest': quest_data['quest'],
                    'name': accept_quest,
                    'npc': quest_data['npc']
                }
                steps.append(accept_step)
            else:
                # Unbekannte Quest - nur mit Namen
                accept_step = {
                    'action': 'accept',
                    'name': accept_quest,
                    'note': f'Quest data not found for: {accept_quest}'
                }
                steps.append(accept_step)
        
        # Einzelne Actions
        else:
            # Accept from NPC
            accept_from_match = re.search(self.patterns['accept_from'], line)
            if accept_from_match:
                quest_name = accept_from_match.group(1)
                npc_name = accept_from_match.group(2)
                
                step = {
                    'action': 'accept',
                    'name': quest_name,
                    'npc': npc_name
                }
                
                if quest_name in self.quest_database:
                    step['quest'] = self.quest_database[quest_name]['quest']
                
                steps.append(step)
            
            # Turn in to NPC
            turnin_to_match = re.search(self.patterns['turnin_to'], line)
            if turnin_to_match:
                quest_name = turnin_to_match.group(1)
                npc_name = turnin_to_match.group(2)
                
                step = {
                    'action': 'turnin',
                    'name': quest_name,
                    'npc': npc_name
                }
                
                if quest_name in self.quest_database:
                    step['quest'] = self.quest_database[quest_name]['quest']
                
                steps.append(step)
            
            # Einfaches Accept
            elif re.search(self.patterns['accept_simple'], line):
                accept_match = re.search(self.patterns['accept_simple'], line)
                quest_name = accept_match.group(1)
                
                step = {
                    'action': 'accept',
                    'name': quest_name
                }
                
                if quest_name in self.quest_database:
                    quest_data = self.quest_database[quest_name]
                    step['quest'] = quest_data['quest']
                    step['npc'] = quest_data['npc']
                
                steps.append(step)
            
            # Einfaches Turn in
            elif re.search(self.patterns['turnin_simple'], line):
                turnin_match = re.search(self.patterns['turnin_simple'], line)
                quest_name = turnin_match.group(1)
                
                step = {
                    'action': 'turnin',
                    'name': quest_name
                }
                
                if quest_name in self.quest_database:
                    quest_data = self.quest_database[quest_name]
                    step['quest'] = quest_data['quest']
                    step['npc'] = quest_data['npc']
                
                steps.append(step)
            
            # Kill Mobs
            elif 'Kill' in line:
                kill_match = re.search(self.patterns['kill_mob'], line)
                if kill_match:
                    mob1 = kill_match.group(1)
                    mob2 = kill_match.group(2) if kill_match.group(2) else None
                    
                    step = {
                        'action': 'kill'
                    }
                    
                    if mob2:
                        step['mob'] = [mob1, mob2]
                    else:
                        step['mob'] = mob1
                    
                    steps.append(step)
        
        # Koordinaten zu allen Steps hinzufügen
        coord_match = re.search(self.patterns['coordinates'], line)
        if coord_match and steps:
            x = float(coord_match.group(1) + '.' + coord_match.group(2)[:1])
            y = float(coord_match.group(2))
            
            for step in steps:
                step['coords'] = {'x': x, 'y': y}
        
        # NPC Koordinaten hinzufügen wenn nicht vorhanden
        for step in steps:
            if 'npc' in step and 'coords' not in step:
                if step['npc'] in self.npc_coords:
                    step['coords'] = self.npc_coords[step['npc']]
        
        return steps
    
    def parse_guide_text(self, text: str) -> List[Dict]:
        """Parst den gesamten Guide-Text"""
        all_steps = []
        lines = text.split('\n')
        
        for line_num, line in enumerate(lines, 1):
            line = line.strip()
            if not line or line.startswith('#') or line.startswith('//'):
                continue
            
            try:
                steps = self.parse_complex_line(line)
                for step in steps:
                    step['_source_line'] = line_num
                    step['_source_text'] = line
                
                all_steps.extend(steps)
            except Exception as e:
                print(f"Fehler in Zeile {line_num}: {line}")
                print(f"Fehler: {e}")
        
        return all_steps
    
    def generate_lua_code(self, steps: List[Dict], zone_name: str = "Generated Guide") -> str:
        """Generiert Lua-Code aus den Steps"""
        lua_lines = [
            f"-- {zone_name}",
            "LevelingGuide = {",
            "  steps = {"
        ]
        
        for step in steps:
            lua_line = "    { "
            parts = []
            
            # Action
            parts.append(f'action="{step["action"]}"')
            
            # Quest ID
            if 'quest' in step:
                parts.append(f'quest={step["quest"]}')
            
            # Name
            if 'name' in step:
                parts.append(f'name="{step["name"]}"')
            
            # NPC
            if 'npc' in step:
                parts.append(f'npc="{step["npc"]}"')
            
            # Mob
            if 'mob' in step:
                if isinstance(step['mob'], list):
                    mob_str = '{"' + '","'.join(step['mob']) + '"}'
                    parts.append(f'mob={mob_str}')
                else:
                    parts.append(f'mob="{step["mob"]}"')
            
            # Item
            if 'item' in step:
                parts.append(f'item="{step["item"]}"')
            
            # Coordinates
            if 'coords' in step:
                coords = step['coords']
                parts.append(f'coords={{x={coords["x"]}, y={coords["y"]}}}')
            
            # Note
            if 'note' in step:
                parts.append(f'note="{step["note"]}"')
            
            lua_line += ", ".join(parts) + " },"
            
            # Kommentar mit Quellzeile
            if '_source_text' in step:
                lua_line += f"  -- {step['_source_text']}"
            
            lua_lines.append(lua_line)
        
        lua_lines.extend([
            "  }",
            "}"
        ])
        
        return "\n".join(lua_lines)

# Test mit komplexem Text
if __name__ == "__main__":
    test_text = '''
Turn in "Fire Taboo" , accept Blisters on The Land.
Accept [Daily Delivery] from [Einar Stonegrip].
Turn in "The Greenwarden" to [Rethiel the Greenwarden], accept [Tramping Paws].
Kill 15 [Mosshide Gnolls] at 61.58.
At 35.42 enter the Whelgar's Excavation Site.
Go up and turn in "Ormer's Revenge", accept the next part.
'''
    
    parser = IntelligentGuideParser()
    steps = parser.parse_guide_text(test_text)
    
    print("=== PARSED STEPS ===")
    for step in steps:
        print(f"Line {step.get('_source_line', '?')}: {step}")
    
    print("\n=== GENERATED LUA ===")
    lua_code = parser.generate_lua_code(steps, "Test Guide")
    print(lua_code)
