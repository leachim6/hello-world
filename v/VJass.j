struct HelloWorld extends array
    private static method onInit takes nothing returns nothing
        call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 0, "Hello World")
    endmethod
endstruct
