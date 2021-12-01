local ngx_re_split = require("ngx.re").split

local function parse_cookie(cookie_str)
    local type_str = type(cookie_str)

    if type_str ~= "string" then
        error("cookie must be a string")
    end

    local first_table = ngx_re_split(cookie_str, ";[ ]*", "jo")

    setmetatable(first_table, {
        __mode = "kv"
    })

    local cookie_table = {}

    for _, v in pairs(first_table) do
        local next_table = ngx_re_split(v, "=[ ]*", "jo")
        cookie_table[next_table[1]] = next_table[2]
    end

    return cookie_table
end

local _M = {
    parse_cookie = parse_cookie
}

return _M
