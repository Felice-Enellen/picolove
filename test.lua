local api = require("api")

-- test api
assert(api.min(1, 2) == 1)
assert(api.min(2, 1) == 1)
assert(api.min(-1, 2) == -1)
assert(api.min(2, -1) == -1)

assert(api.min("1", "2") == 1)
assert(api.min("2", "1") == 1)
assert(api.min("-1", "2") == -1)
assert(api.min("2", "-1") == -1)

assert(api.min(1, nil) == 0)
assert(api.min(nil, 1) == 0)
assert(api.min(-1, nil) == -1)
assert(api.min(nil, -1) == -1)

assert(api.min(1, "X") == 0)
assert(api.min("X", 1) == 0)
assert(api.min(-1, "X") == -1)
assert(api.min("X", -1) == -1)

assert(api.min(nil, nil) == 0)

assert(api.max(1, 2) == 2)
assert(api.max(2, 1) == 2)
assert(api.max(-1, 2) == 2)
assert(api.max(2, -1) == 2)

assert(api.max("1", "2") == 2)
assert(api.max("2", "1") == 2)
assert(api.max("-1", "2") == 2)
assert(api.max("2", "-1") == 2)

assert(api.max(1, nil) == 1)
assert(api.max(nil, 1) == 1)
assert(api.max(-1, nil) == 0)
assert(api.max(nil, -1) == 0)

assert(api.max(1, "X") == 1)
assert(api.max("X", 1) == 1)
assert(api.max(-1, "X") == 0)
assert(api.max("X", -1) == 0)

assert(api.max(nil, nil) == 0)

assert(api.mid(1, 2, 3) == 2)
assert(api.mid(1, 3, 2) == 2)
assert(api.mid(2, 1, 3) == 2)
assert(api.mid(2, 3, 1) == 2)
assert(api.mid(3, 1, 2) == 2)
assert(api.mid(3, 2, 1) == 2)

assert(api.atan2(1, 0) == 0)
assert(api.atan2(0, -1) == 0.25)
assert(api.atan2(-1, 0) == 0.5)
assert(api.atan2(0, 1) == 0.75)

assert(bit.band(0x01, bit.lshift(1, 0)) ~= 0)
assert(bit.band(0x02, bit.lshift(1, 1)) ~= 0)
assert(bit.band(0x04, bit.lshift(1, 2)) ~= 0)

assert(bit.band(0x05, bit.lshift(1, 2)) ~= 0)
assert(bit.band(0x05, bit.lshift(1, 0)) ~= 0)
assert(bit.band(0x05, bit.lshift(1, 3)) == 0)

local iter = api.all({nil,nil,11,nil,22,33,33,b=42,44})
assert(iter() == 11)
assert(iter() == 22)
assert(iter() == 33)
assert(iter() == 33)
assert(iter() == 44)
assert(iter() == nil)