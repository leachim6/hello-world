-- "Hello World" demo for the Tcl/Tk library

import Tk

main = runWidget "Hello"
          (TkCol [] [TkLabel [TkText "Hello World"],
                     TkButton tkExit [TkText "Stop"]])
