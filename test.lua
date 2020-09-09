function fac(n)
    if n == 0 then
        return 1
    else 
        return n * fac(n-1)
    end
end

for i = 1,10 do
    -- print(fac(i)) -- this is a comment
end

function Hello(str)
    str = str or "World" -- Define default values, if str is nil, str = "World"
    print("Hello, "..str)
end

local t = {}
t.disp = function(x)
    -- print(x)
    return x, 2*x, 3*x
end
t.disp(18)
--print(select(3,t.disp(18)))

local x = 5==5 and 1 or 2 -- Important and usefull way to assign a variable 

function printLines(...)
    for i = 1, select("#", ...) do
        print((select(i, ...))) -- Difference with print(select(i,...)). It evaluates select(i, ...) as an expression (that has only one value)
    end
end

printLines("a","b","c")

local str = "Hello, World!"
print(str:match("Hello$"))
print(str:match("World!$"))
print(str:match("^Hello"))