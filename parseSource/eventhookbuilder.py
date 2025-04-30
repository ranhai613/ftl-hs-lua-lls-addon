import re
import json

class EventHookBuilder:
    def __init__(self, info_path: str):
        self.output = ""
        with open(info_path, 'r', encoding='utf-8') as file:
            self.info = json.load(file)