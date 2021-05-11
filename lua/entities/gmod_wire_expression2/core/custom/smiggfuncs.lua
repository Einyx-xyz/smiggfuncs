E2Lib.RegisterExtension("smiggfuncs", true, "Various functions I decided were useful enough to add.")

__e2setcost(3)
e2function string timeFormat(number time)
    return string.ToMinutesSeconds(time)
end

__e2setcost(1)
e2function string ordinal(number num)
    return tostring(num .. STNDRD(num))
end

__e2setcost(20)
e2function string tableToJson(table data)
    if type(data) != "table" then return "" end
    return util.TableToJSON(data)
end

e2function table jsonToTable(string data)
    if data == "" then return end
    return util.JSONToTable(data)
end