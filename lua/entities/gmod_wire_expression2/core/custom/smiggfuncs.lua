E2Lib.RegisterExtension("smiggfuncs", true, "Various functions I decided were useful enough to add.")

__e2setcost(13)
e2function number lerp(number t, number from, number to)
    return Lerp(t, from, to)
end

e2function angle lerpAngle(number ratio, angle angleStart, angle angleEnd)
    local args1 = Angle(angleStart[1], angleStart[2], angleStart[3])
    local args2 = Angle(angleEnd[1], angleEnd[2], angleEnd[3])

    local ang = LerpAngle(ratio, args1, args2)

    return {ang[1], ang[2], ang[3]}
end

e2function vector lerpVector(number frac,vector from,vector to)
    local args1 = Vector(from[1], from[2], from[3])
    local args2 = Vector(to[1], to[2], to[3])

    local vec = LerpVector(frac, args1, args2)

    return {vec[1], vec[2], vec[3]}
end

__e2setcost(3)
e2function string either(number condition, string truevar, string falsevar)
    if condition > 0 then return truevar else return falsevar end
end