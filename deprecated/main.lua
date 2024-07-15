local fromRUB = function(to)
    local values = {{"usd"; .011}; {"eur"; .010}; {"uah"; .43}; {"kzt"; 4.85}}
    for _, v in pairs(values) do
        if v[1] == to[1] then
            return {to[1]; to[2] * v[2]}
        end
    end
end

local fromUSD = function(to)
    local values = {{"rub"; 93.13}; {"eur"; .93}; {"uah"; 39.35}; {"kzt"; 444.29}}
    for _, v in pairs(values) do
        if v[1] == to[1] then
            return {to[1]; to[2] * v[2]}
        end
    end
end

local fromEUR = function(to)
    local values = {{"usd"; 1.08}; {"rub"; 100.59}; {"uah"; 42.51}; {"kzt"; 480.23}}
    for _, v in pairs(values) do
        if v[1] == to[1] then
            return {to[1]; to[2] * v[2]}
        end
    end
end

local fromKZT = function(to)
    local values = {{"rub"; .21}; {"eur"; .0021}; {"uah"; .089}; {"usd"; .0023}}
    for _, v in pairs(values) do
        if v[1] == to[1] then
            return {to[1]; to[2] * v[2]}
        end
    end
end

local fromUAH = function(to)
    local values = {{"rub"; 2.37}; {"eur"; .024}; {"usd"; .025}; {"kzt"; 11.29}}
    for _, v in pairs(values) do
        if v[1] == to[1] then
            return {to[1]; to[2] * v[2]}
        end
    end
end

local main = function()
    print("write type of value")
    local valT = string.lower(string.sub(io.read(), 1, 3))
    print("write amount of value")
    local valA = tonumber(io.read())
    print("write type you want to convert your value")
    local valCT = string.lower(string.sub(io.read(), 1, 3))

    if valT == "rub" then
        print(string.format("%.2f %s", fromRUB({valCT, valA})[2], valCT))
    elseif valT == "eur" then
        print(string.format("%.2f %s", fromEUR({valCT, valA})[2], valCT))
    elseif valT == "kzt" then
        print(string.format("%.2f %s", fromKZT({valCT, valA})[2], valCT))
    elseif valT == "usd" then
        print(string.format("%.2f %s", fromUSD({valCT, valA})[2], valCT))
    elseif valT == "uah" then
        print(string.format("%.2f %s", fromUAH({valCT, valA})[2], valCT))
    end
end

main()