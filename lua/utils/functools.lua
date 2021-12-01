local function map(list, func)
    local result = {}

    for i, v in ipairs(list) do
        result[i] = func(v, i, list)
    end

    return result
end

local function filter(list, func)
    local result = {}

    for i, v in ipairs(list) do
        if func(v, i, list) then
            result[#result + 1] = v
        end
    end

    return result
end

local _M = {
    map = map,
    filter = filter
}

return _M
