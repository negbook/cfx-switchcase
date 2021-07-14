local case = {} --cfx-switchcase by negbook https://github.com/negbook/cfx-switchcase/blob/main/cfx-switchcase.lua
local default = {}
local switch = setmetatable({},{__call=function(a,b)case=setmetatable({},{__call=function(a,b)return a[b]end,__index=function(a,c)return c and c==b and setmetatable({},{__call=function(a,d)default=setmetatable({},{__call=function(a,e)end})d()end})or function()end end})default=setmetatable({},{__call=function(a,b)if b and type(b)=='function'then b()end end})return a[b]end,__index=function(a,c)return setmetatable({},{__call=function(a,...)end})end})


CreateThread(function()
    while true do Wait(0) 
        local a = 4
        --if a == 1 then print(99) end 
        --if a == 4 then print(98) end 
        --if b == "some" then print(99) end 
        --if b == "where" then print(98) end 
        
        
        switch(a)(
            case(1)(function()
                    print(99)
            end),
            case(4)(function()
                    print(98)
            end),
            default(function()
                print(9091)
            end )
        )
        switch(b)(
            case("some")(function()
                    print(99)
            end),
            case("where")(function()
                    print(98)
            end),
            default(function()
                print(9093)
            end )
        )
      
    end 
end)
