---@meta
-- C++ type definitions

---@class array<T, integer> -- array is not exposed yet



---@class vector<T>: { [integer]: T }
local vector = {}

---@return integer
function vector:size() end

---@return integer
function vector:max_size() end

---@return boolean
function vector:empty() end

function vector:clear() end

---@generic T
---@param self vector<T>
---@param value T
function vector:push_back(value) end

function vector:pop_back() end

---@generic T
---@param self vector<T>
---@return T
function vector:front() end

---@generic T
---@param self vector<T>
---@return T
function vector:back() end



---@class pair<T, U>: { first: T, second: U }



---@class map<K, V>: { [K]: V }
local map = {}

---@return integer
function map:size() end

---@return boolean
function map:empty() end

function map:clear() end

---@generic K, V
---@param self map<K, V>
---@param key K
---@return V
function map:get(key) end

---@generic K, V
---@param self map<K, V>
---@param key K
---@param value V
function map:set(key, value) end

---@generic K, V
---@param self map<K, V>
---@param key K
function map:del(key) end

---@generic K, V
---@param self map<K, V>
---@param key K
---@return boolean
function map:has_key(key) end

---@generic K, V
---@param self map<K, V>
---@return vector<K>
function map:keys() end



---@class unordered_map<K, V>: { [K]: V }
local unordered_map = {}

---@return integer
function unordered_map:size() end

---@return boolean
function unordered_map:empty() end

function unordered_map:clear() end

---@generic K, V
---@param self unordered_map<K, V>
---@param key K
---@return V
function unordered_map:get(key) end

---@generic K, V
---@param self unordered_map<K, V>
---@param key K
---@param value V
function unordered_map:set(key, value) end

---@generic K, V
---@param self unordered_map<K, V>
---@param key K
function unordered_map:del(key) end

---@generic K, V
---@param self unordered_map<K, V>
---@param key K
---@return boolean
function unordered_map:has_key(key) end

---@generic K, V
---@param self unordered_map<K, V>
---@return vector<K>
function unordered_map:keys() end



---@class unordered_multimap<K, V>: { [K]: V }
local unordered_multimap = {}

---@return integer
function unordered_multimap:size() end

---@return boolean
function unordered_multimap:empty() end

function unordered_multimap:clear() end

---@generic K, V
---@param self unordered_multimap<K, V>
---@param key K
---@return V
function unordered_multimap:get(key) end

---@generic K, V
---@param self unordered_multimap<K, V>
---@param key K
---@param value V
function unordered_multimap:set(key, value) end

---@generic K, V
---@param self unordered_multimap<K, V>
---@param key K
function unordered_multimap:del(key) end

---@generic K, V
---@param self unordered_multimap<K, V>
---@param key K
---@return boolean
function unordered_multimap:has_key(key) end


---@class unordered_set<T>