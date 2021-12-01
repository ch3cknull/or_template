local redisConf = {
    host = 'localhost',
    port = 6379,
    password = nil,
    db_index = 0,
    timeout = 1000,
    max_connections = 100
}

local mysqlConf = {
    host = 'localhost',
    port = 3306,
    user = 'root',
    password = '123456',
    database = 'test',
    timeout = 1000,
    max_connections = 100
}

local cacheConf = {
    useCache = true,
    expireTime = 3600
}

local secureConf = {
    token = '123456'
}

local _M = {
    redis = redisConf,
    mysql = mysqlConf,
    cache = cacheConf,
    secure = secureConf
}

return _M
