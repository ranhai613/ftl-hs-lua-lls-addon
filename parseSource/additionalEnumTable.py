from collections import namedtuple

AdditionalEnum = namedtuple('AdditionalEnum', ['tableName', 'sourceEnum', 'filterPrefix'])

class AdditionalEnumProcessor:
    def __init__(self, additional_enum: AdditionalEnum):
        self.additional_enum = additional_enum
        self.data = {}
    
    def process(self, sourceName: str, name: str, value: int):
        if sourceName != self.additional_enum.sourceEnum:
            return
        
        if not name.startswith(self.additional_enum.filterPrefix):
            return
        
        self.data[name.replace(self.additional_enum.filterPrefix, "")] = value
    
    def output(self) -> str:
        content = "\n".join([f"    {name} = {value}," for name, value in self.data.items()])
        if content:
            content = "\n" + content + "\n"
        return f"---@enum {self.additional_enum.tableName}\n{self.additional_enum.tableName} = {{{content}}}\n"


class AdditionalEnumBuilder:
    def __init__(self, additional_enums: list):
        self.additional_enums = additional_enums
        self.processors = [AdditionalEnumProcessor(enum) for enum in additional_enums]
    
    def process(self, sourceName: str, name: str, value: int):
        for processor in self.processors:
            processor.process(sourceName, name, value)
    
    def output(self) -> str:
        return "\n".join([processor.output() for processor in self.processors])