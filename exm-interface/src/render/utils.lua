---Rendering utility functions with text wrapping cache

Utils = {}

local TextCache = {
    cache = {},
    order = {},
    max_size = 100
}

function TextCache:Get(key)
    return self.cache[key]
end

function TextCache:Set(key, value)
    if self.cache[key] then
        for i, k in ipairs(self.order) do
            if k == key then
                table.remove(self.order, i)
                break
            end
        end
    else
        if #self.order >= self.max_size then
            local oldest = table.remove(self.order, 1)
            self.cache[oldest] = nil
        end
    end

    table.insert(self.order, key)
    self.cache[key] = value
end

---Adds a long string by splitting it into 99-character chunks.
---@param text string
function Utils.AddLongString(text)
    for i = 1, #text, 99 do
        AddTextComponentSubstringPlayerName(string.sub(text, i, i + 98))
    end
end

---Gets wrapped text with caching.
---@param text string
---@param max_width number
---@param scale number
---@param font number
---@return string[] lines
function Utils.GetWrappedText(text, max_width, scale, font)
    local cache_key = text .. "_" .. tostring(max_width) .. "_" .. tostring(scale)
    local cached = TextCache:Get(cache_key)
    if cached then
        return cached
    end

    SetTextFont(font or 0)
    SetTextScale(scale, scale)

    local words = {}
    for word in string.gmatch(text, "%S+") do
        table.insert(words, word)
    end

    local lines = {}
    local current_line = ""

    for _, word in ipairs(words) do
        local test_line = current_line == "" and word or (current_line .. " " .. word)

        BeginTextCommandGetWidth("STRING")
        Utils.AddLongString(test_line)
        local width = EndTextCommandGetWidth(true)

        if width > max_width then
            if current_line ~= "" then
                table.insert(lines, current_line)
                current_line = word
            else
                table.insert(lines, word)
                current_line = ""
            end
        else
            current_line = test_line
        end
    end

    if current_line ~= "" then
        table.insert(lines, current_line)
    end

    if #lines == 0 then
        lines = {text}
    end

    TextCache:Set(cache_key, lines)
    return lines
end

---Gets text width.
---@param text string
---@param scale number
---@param font number
---@return number
function Utils.GetTextWidth(text, scale, font)
    if not text then return 0.0 end

    SetTextFont(font or 0)
    SetTextScale(scale, scale)
    BeginTextCommandGetWidth("STRING")
    Utils.AddLongString(text)
    return EndTextCommandGetWidth(true)
end