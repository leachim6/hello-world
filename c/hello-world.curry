-- "Hello World" demo for the Tcl/Tk library

import Tk

main = runWidget "Hello"
          (TkCol [] [TkLabel [TkText "Hello world!"],
                     TkButton tkExit [TkText "Stop"]])
