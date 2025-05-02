---@meta
--- Definitions of RapidXML module. Documentation is taken form rapidxml.hpp.

---@class RapidXML
---@field parse_no_data_nodes integer (Read-only)
---@field parse_no_element_values integer (Read-only)
---@field parse_no_string_terminators integer (Read-only)
---@field parse_no_entity_translation integer (Read-only)
---@field parse_no_utf8 integer (Read-only)
---@field parse_declaration_node integer (Read-only)
---@field parse_comment_nodes integer (Read-only)
---@field parse_doctype_node integer (Read-only)
---@field parse_pi_nodes integer (Read-only)
---@field parse_validate_closing_tags integer (Read-only)
---@field parse_trim_whitespace integer (Read-only)
---@field parse_normalize_whitespace integer (Read-only)
---@field parse_default integer (Read-only)
---@field parse_non_destructive integer (Read-only)
---@field parse_fastest integer (Read-only)
---@field parse_full integer (Read-only)
RapidXML = {
    node_document = 0,
    node_element = 1,
    node_data = 2,
    node_cdata = 3,
    node_comment = 4,
    node_declaration = 5,
    node_doctype = 6,
    node_pi = 7,
}

---@alias RapidXML.node_type
---| 0 --[[@as RapidXML.node_document]]
---| 1 --[[@as RapidXML.node_element]]
---| 2 --[[@as RapidXML.node_data]]
---| 3 --[[@as RapidXML.node_cdata]]
---| 4 --[[@as RapidXML.node_comment]]
---| 5 --[[@as RapidXML.node_declaration]]
---| 6 --[[@as RapidXML.node_doctype]]
---| 7 --[[@as RapidXML.node_pi]]

--- Parse error exception.
--- This exception is thrown by the parser when an error occurs.
--- Use what() function to get human-readable error message.
--- Use where() function to get a pointer to position within source text where error was detected.
--- <br><br>
--- If throwing exceptions by the parser is undesirable,
--- it can be disabled by defining RAPIDXML_NO_EXCEPTIONS macro before rapidxml.hpp is included.
--- This will cause the parser to call rapidxml::parse_error_handler() function instead of throwing an exception.
--- This function must be defined by the user.
--- <br><br>
--- This class derives from <code>std::exception</code> class.
---@class RapidXML.parse_error
RapidXML.parse_error = {}

--- Constructs parse error
---@param what string
---@param where any
---@return RapidXML.parse_error
function RapidXML.parse_error(what, where) end

--- Gets human readable description of error.
---@return string -- Pointer to null terminated description of the error.
function RapidXML.parse_error:what() end

--- Base class for xml_node and xml_attribute implementing common functions:
--- name(), name_size(), value(), value_size() and parent().
---@class RapidXML.xml_base
RapidXML.xml_base = {}

--- Construct a base with empty name, value and parent
---@return RapidXML.xml_base
function RapidXML.xml_base() end

--- Gets size of node name, not including terminator character.
--- This function works correctly irrespective of whether name is or is not zero terminated.
---@return uint -- Size of node name, in characters.
function RapidXML.xml_base:name_size() end

--- Gets size of node value, not including terminator character.
--- This function works correctly irrespective of whether value is or is not zero terminated.
---@return uint -- Size of node value, in characters.
function RapidXML.xml_base:value_size() end

--- Gets name of the node.
--- Interpretation of name depends on type of node.
--- Note that name will not be zero-terminated if rapidxml::parse_no_string_terminators option was selected during parse.
--- <br><br>
--- Use name_size() function to determine length of the name.
---@return string -- Name of node, or empty string if node has no name.
function RapidXML.xml_base:name() end

--- Sets name of node to a non zero-terminated string.
--- See \ref ownership_of_strings.
--- <br><br>
--- Note that node does not own its name or value, it only stores a pointer to it.
--- It will not delete or otherwise free the pointer on destruction.
--- It is reponsibility of the user to properly manage lifetime of the string.
--- The easiest way to achieve it is to use memory_pool of the document to allocate the string -
--- on destruction of the document the string will be automatically freed.
--- <br><br>
--- Size of name must be specified separately, because name does not have to be zero terminated.
--- Use name(const Ch *) function to have the length automatically calculated (string must be zero terminated).
---@param name string Name of node to set. Does not have to be zero terminated.
---@param size uint Size of name, in characters. This does not include zero terminator, if one is present.
function RapidXML.xml_base:name(name, size) end

--- Sets name of node to a zero-terminated string.
--- See also \ref ownership_of_strings and xml_node::name(const Ch *, std::size_t).
---@param name string Name of node to set. Must be zero terminated.
function RapidXML.xml_base:name(name) end

--- Gets value of node.
--- Interpretation of value depends on type of node.
--- Note that value will not be zero-terminated if rapidxml::parse_no_string_terminators option was selected during parse.
--- <br><br>
--- Use value_size() function to determine length of the value.
---@return string -- Value of node, or empty string if node has no value.
function RapidXML.xml_base:value() end

--- Sets value of node to a non zero-terminated string.
--- See \ref ownership_of_strings.
--- <br><br>
--- Note that node does not own its name or value, it only stores a pointer to it.
--- It will not delete or otherwise free the pointer on destruction.
--- It is reponsibility of the user to properly manage lifetime of the string.
--- The easiest way to achieve it is to use memory_pool of the document to allocate the string -
--- on destruction of the document the string will be automatically freed.
--- <br><br>
--- Size of value must be specified separately, because it does not have to be zero terminated.
--- Use value(const Ch *) function to have the length automatically calculated (string must be zero terminated).
--- <br><br>
--- If an element has a child node of type node_data, it will take precedence over element value when printing.
--- If you want to manipulate data of elements using values, use parser flag rapidxml::parse_no_data_nodes to prevent creation of data nodes by the parser.
---@param value string value of node to set. Does not have to be zero terminated.
---@param size uint Size of value, in characters. This does not include zero terminator, if one is present.
function RapidXML.xml_base:value(value, size) end

--- Sets value of node to a zero-terminated string.
--- See also \ref ownership_of_strings and xml_node::value(const Ch *, std::size_t).
---@param value string Vame of node to set. Must be zero terminated.
function RapidXML.xml_base:value(value) end

--- Gets node parent.
---@return RapidXML.xml_node -- Pointer to parent node, or 0 if there is no parent.
function RapidXML.xml_base:parent() end

--- Class representing a node of XML document.
--- Each node may have associated name and value strings, which are available through name() and value() functions.
--- Interpretation of name and value depends on type of the node.
--- Type of node can be determined by using type() function.
--- <br><br>
--- Note that after parse, both name and value of node, if any, will point interior of source text used for parsing.
--- Thus, this text must persist in the memory for the lifetime of node.
---@class RapidXML.xml_node : RapidXML.xml_base
RapidXML.xml_node = {}

--- Constructs an empty node with the specified type.
--- Consider using memory_pool of appropriate document to allocate nodes manually.
---@param type RapidXML.node_type Type of node to construct.
---@return RapidXML.xml_node
function RapidXML.xml_node(type) end

--- Gets document of which node is a child.
---@return RapidXML.xml_document -- Pointer to document that contains this node, or 0 if there is no parent document.
function RapidXML.xml_node:document() end

--- Gets first child node, optionally matching node name.
---@param name? string = nil; Name of child to find, or 0 to return first child regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_node -- Pointer to found child, or 0 if not found.
function RapidXML.xml_node:first_node(name, name_size, case_sensitive) end

--- Gets last child node, optionally matching node name.
--- Behaviour is undefined if node has no children.
--- Use first_node() to test if node has children.
---@param name? string = nil; Name of child to find, or 0 to return last child regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_node -- Pointer to found child, or 0 if not found.
function RapidXML.xml_node:last_node(name, name_size, case_sensitive) end

--- Gets previous sibling node, optionally matching node name.
--- Behaviour is undefined if node has no parent.
--- Use parent() to test if node has a parent.
---@param name? string = nil; Name of sibling to find, or 0 to return previous sibling regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_node -- Pointer to found sibling, or 0 if not found.
function RapidXML.xml_node:previous_sibling(name, name_size, case_sensitive) end

--- Gets next sibling node, optionally matching node name.
--- Behaviour is undefined if node has no parent.
--- Use parent() to test if node has a parent.
---@param name? string = nil; Name of sibling to find, or 0 to return next sibling regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_node -- Pointer to found sibling, or 0 if not found.
function RapidXML.xml_node:next_sibling(name, name_size, case_sensitive) end

--- Gets first attribute of node, optionally matching attribute name.
---@param name? string = nil; Name of attribute to find, or 0 to return first attribute regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_attribute -- Pointer to found attribute, or 0 if not found.
function RapidXML.xml_node:first_attribute(name, name_size, case_sensitive) end

--- Gets last attribute of node, optionally matching attribute name.
---@param name? string = nil; Name of attribute to find, or 0 to return last attribute regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_attribute -- Pointer to found attribute, or 0 if not found.
function RapidXML.xml_node:last_attribute(name, name_size, case_sensitive) end

-- Gets type of node.
---@return RapidXML.node_type -- Type of node.
function RapidXML.xml_node:type() end

--- Sets type of node.
---@param type RapidXML.node_type Type of node to set.
function RapidXML.xml_node:type(type) end

--- Prepends a new child node.
--- The prepended child becomes the first child, and all existing children are moved one position back.
---@param child RapidXML.xml_node Node to prepend.
function RapidXML.xml_node:prepend_node(child) end

--- Appends a new child node.
--- The appended child becomes the last child.
---@param child RapidXML.xml_node Node to append.
function RapidXML.xml_node:append_node(child) end

--- Inserts a new child node at specified place inside the node.
--- All children after and including the specified node are moved one position back.
---@param where RapidXML.xml_node Place where to insert the child, or 0 to insert at the back.
---@param child RapidXML.xml_node Node to insert.
function RapidXML.xml_node:insert_node(where, child) end

--- Removes first child node.
--- If node has no children, behaviour is undefined.
--- Use first_node() to test if node has children.
function RapidXML.xml_node:remove_first_node() end

--- Removes last child of the node.
--- If node has no children, behaviour is undefined.
--- Use first_node() to test if node has children.
function RapidXML.xml_node:remove_last_node() end

--- Removes specified child from the node
---@param where RapidXML.xml_node Pointer to child to be removed.
function RapidXML.xml_node:remove_node(where) end

--- Removes all child nodes (but not attributes).
function RapidXML.xml_node:remove_all_nodes() end

--- Prepends a new attribute to the node.
---@param attribute RapidXML.xml_attribute Attribute to prepend.
function RapidXML.xml_node:prepend_attribute(attribute) end

--- Appends a new attribute to the node.
---@param attribute RapidXML.xml_attribute Attribute to append.
function RapidXML.xml_node:append_attribute(attribute) end

--- Inserts a new attribute at specified place inside the node.
--- All attributes after and including the specified attribute are moved one position back.
---@param where RapidXML.xml_attribute Place where to insert the attribute, or 0 to insert at the back.
---@param attribute RapidXML.xml_attribute Attribute to insert.
function RapidXML.xml_node:insert_attribute(where, attribute) end

--- Removes first attribute of the node.
--- If node has no attributes, behaviour is undefined.
--- Use first_attribute() to test if node has attributes.
function RapidXML.xml_node:remove_first_attribute() end

--- Removes last attribute of the node.
--- If node has no attributes, behaviour is undefined.
--- Use first_attribute() to test if node has attributes.
function RapidXML.xml_node:remove_last_attribute() end

--- Removes specified attribute from node.
---@param where RapidXML.xml_attribute Pointer to attribute to be removed.
function RapidXML.xml_node:remove_attribute(where) end

--- Removes all attributes of node.
function RapidXML.xml_node:remove_all_attributes() end

--- Class representing attribute node of XML document.
--- Each attribute has name and value strings, which are available through name() and value() functions (inherited from xml_base).
--- Note that after parse, both name and value of attribute will point to interior of source text used for parsing.
--- Thus, this text must persist in memory for the lifetime of attribute.
---@class RapidXML.xml_attribute : RapidXML.xml_base
RapidXML.xml_attribute = {}

--- Constructs an empty attribute with the specified type.
--- Consider using memory_pool of appropriate xml_document if allocating attributes manually.
---@return RapidXML.xml_attribute
function RapidXML.xml_attribute() end

--- Gets document of which attribute is a child.
---@return RapidXML.xml_document -- Pointer to document that contains this attribute, or 0 if there is no parent document.
function RapidXML.xml_attribute:document() end

--- Gets previous attribute, optionally matching attribute name.
---@param name? string = nil; Name of attribute to find, or 0 to return previous attribute regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_attribute -- Pointer to found attribute, or 0 if not found.
function RapidXML.xml_attribute:previous_attribute(name, name_size, case_sensitive) end

--- Gets next attribute, optionally matching attribute name.
---@param name? string = nil; Name of attribute to find, or 0 to return next attribute regardless of its name; this string doesn't have to be zero-terminated if name_size is non-zero
---@param name_size? uint = 0; Size of name, in characters, or 0 to have size calculated automatically from string
---@param case_sensitive? boolean = true; Should name comparison be case-sensitive; non case-sensitive comparison works properly only for ASCII characters
---@return RapidXML.xml_attribute -- Pointer to found attribute, or 0 if not found.
function RapidXML.xml_attribute:next_attribute(name, name_size, case_sensitive) end

---@class RapidXML.__xml_document
RapidXML.__xml_document = {}

--- This class represents root of the DOM hierarchy.
--- It is also an xml_node and a memory_pool through public inheritance.
--- Use parse() function to build a DOM tree from a zero-terminated XML text string.
--- parse() function allocates memory for nodes and attributes by using functions of xml_document,
--- which are inherited from memory_pool.
--- To access root node of the document, use the document itself, as if it was an xml_node.
---@class RapidXML.xml_document : RapidXML.xml_node
RapidXML.xml_document = {}

--- Constructs empty XML document
---@return RapidXML.xml_document
function RapidXML.xml_document() end

---@param unknown string
---@return RapidXML.xml_document
function RapidXML.xml_document(unknown) end

--- Clears the document by deleting all nodes and clearing the memory pool.
--- All nodes owned by document pool are destroyed.
function RapidXML.xml_document:clear() end

---@param text string
function RapidXML.xml_document:parse_string(text) end

---@param fileName string
function RapidXML.xml_document:parse_file(fileName) end