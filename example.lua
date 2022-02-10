local case = {} --cfx-switchcase by negbook https://github.com/negbook/cfx-switchcase/blob/main/cfx-switchcase.lua
local default = {} --default must put after cases when use
local switch = setmetatable({},{__call=function(a,b)case=setmetatable({},{__call=function(a,...)return a[{...}]end,__index=function(a,c)local d=false;if c and type(c)=="table"then for e=1,#c do local f=c[e]if f and b and f==b then d=true;break end end end;if d then return setmetatable({},{__call=function(a,g)default=setmetatable({},{__call=function(a,h)end})g()end})else return function()end end end})default=setmetatable({},{__call=function(a,b)if b and type(b)=="function"then b()end end})return a[b]end,__index=function(a,f)return setmetatable({},{__call=function(a,...)end})end})
--notepad replace case (.*): with case\(\1\)\(function\(\)
--notepad replace switch(.*\()(.*\)) with switch\(\2\(
--notepad replace break; with end),
function Check(n)
	return switch(n)(
            case(1,4)(function()
				return 4
            end),
			case(4)(function()
				return 41
            end),
            default(function()
				return 9
            end )
    )
end 
print(Check(4))
CreateThread(function()
    while true do Wait(0) 
        local a = 4
        --if a == 1 then print(99) end 
        --if a == 4 then print(98) end 
        --if b == "some" then print(99) end 
        --if b == "where" then print(98) end 
        --default must put after cases
        
        
        switch(a)(
            case(1,4)(function()
                print(99)
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
