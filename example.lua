
CreateThread(function()
    while true do Wait(0) 
        local a = 4
        local b = "some"
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
            end)
        )
        switch(b)(
            case("some")(function()
                    print(99)
            end),
            case("where")(function()
                    print(98)
            end)
        )
      
    end 
end)
