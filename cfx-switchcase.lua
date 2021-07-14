local case = {} --cfx-switchcase by negbook https://github.com/negbook/cfx-switchcase/blob/main/cfx-switchcase.lua
local default = {}
local switch = setmetatable({},{__call=function(a,b)case=setmetatable({},{__call=function(a,b)return a[b]end,__index=function(a,c)return c and c==b and setmetatable({},{__call=function(a,d)default=setmetatable({},{__call=function(a,e)end})d()end})or function()end end})default=setmetatable({},{__call=function(a,b)if b and type(b)=='function'then b()end end})return a[b]end,__index=function(a,c)return setmetatable({},{__call=function(a,...)end})end})
