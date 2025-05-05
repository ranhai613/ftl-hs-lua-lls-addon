import json

DESC_INTERNAL_EVENT_PARAM_CALLBACK = "Callback to be called when the event occurs."
DESC_RENDER_EVENT_PARAM_PRE_CALLBACK = "Callback to be called just before the event occurs."
DESC_RENDER_EVENT_PARAM_POST_CALLBACK = "Callback to be called just after the event occurs."
DESC_PARAM_PRIORITY = "= 0. Determines the order of calling the callbacks. Priority with a greater number will be called first."

class EventHookBuilder:
    def __init__(self, info: dict, internalEvents_list_path: str):
        self.output = "---@meta\n"
        self.info = info
        with open(internalEvents_list_path, "r", encoding="utf8") as f:
            self.chain_internalEvents_list = json.load(f)
    
    def process(self, enumName: str, id: str, idx: int) -> str|None:
        assert enumName == "InternalEvents" or enumName == "RenderEvents"
        if id in ["UNKNOWN", "UNKNOWN_MAX", "UNKNOWN_MIN"]:
            return

        text = ""
        data = self.info[enumName].get(id, None)
        if data is None:
            print(id, " not found in wiki")
            if enumName == "InternalEvents":
                isChain = id in self.chain_internalEvents_list
                text += f"--- Data for this event not found in wiki.\n---@param eventId {idx} --[[@as Defines.InternalEvents.{id}]]\n---@param callback fun(...):{" chain: Defines.Chain?," if isChain else ""} ... {DESC_INTERNAL_EVENT_PARAM_CALLBACK}\n---@param priority? integer {DESC_PARAM_PRIORITY}\nfunction script.on_internal_event(eventId, callback, priority) end\n\n"
            elif enumName == "RenderEvents":
                text += f"--- Data for this event not found in wiki.\n---@param eventId {idx} --[[@as Defines.RenderEvents.{id}]]\n---@param preCallback fun(...): chain: Defines.Chain? {DESC_RENDER_EVENT_PARAM_PRE_CALLBACK}\n---@param postCallback fun(...) {DESC_RENDER_EVENT_PARAM_POST_CALLBACK}\n---@param priority? integer {DESC_PARAM_PRIORITY}\nfunction script.on_render_event(eventId, preCallback, postCallback, priority) end\n\n"
            self.output += text
            return
        
        if data["documentation"]:
            text += f"--- {data['documentation']}\n"
        
        if enumName == "InternalEvents":
            text += f"---@param eventId {idx} --[[@as Defines.InternalEvents.{id}]]\n"
            text += f"---@param callback fun(" + ", ".join([f"{arg["name"]}?: {arg["type"]}" for arg in data["args"]]) + ")"
            
            isChain = id in self.chain_internalEvents_list
            # make sure the first argument is always Defines.Chain if it's a chain event
            if len(data["args"]) == 0 and isChain:
                data["args"].append({"name": "chain", "type": "Defines.Chain"})
            
            if len(data["returns"]) > 0:
                if isChain:
                    if data["returns"][0]["type"] != "Defines.Chain":
                        data["returns"].insert(0, {"name": "chain", "type": "Defines.Chain"})
                else:
                    assert data["returns"][0]["type"] != "Defines.Chain"
                
                return_is_optional = isChain and len(data["returns"]) == 1

                text += ": " + ", ".join([f"{arg["name"]}: {arg["type"]}{"?" if return_is_optional else ""}" for arg in data["returns"]])
            text += f" {DESC_INTERNAL_EVENT_PARAM_CALLBACK}\n"
            text += f"---@param priority? integer {DESC_PARAM_PRIORITY}\n"
            text += f"function script.on_internal_event(eventId, callback, priority) end\n\n"
        elif enumName == "RenderEvents":
            text += f"---@param eventId {idx} --[[@as Defines.RenderEvents.{id}]]\n"
            params = ", ".join([f"{arg["name"]}?: {arg["type"]}" for arg in data["args"]])
            text += f"---@param preCallback fun({params}): chain: Defines.Chain? {DESC_RENDER_EVENT_PARAM_PRE_CALLBACK}\n---@param postCallback fun({params}) {DESC_RENDER_EVENT_PARAM_POST_CALLBACK}\n"
            text += f"---@param priority? integer {DESC_PARAM_PRIORITY}\n"
            text += f"function script.on_render_event(eventId, preCallback, postCallback, priority) end\n\n"
        
        self.output += text
        return data["documentation"]
    
    def save(self, path: str):
        with open(path, "w", encoding="utf8") as f:
            f.write(self.output.strip())