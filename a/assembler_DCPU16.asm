;;;;;;;;;;;;;;;;;;;
jsr init_devices
jsr Hello_World
set PC,end
;;;;;;;;;;;;;;;;;;;
:dev_screen   dat 0
:device_count dat 0
;;;;;;;;;;;;;;;;;;;
:find_devices
hwn [device_count]
set I,0
:find_devices_loop
hwq i
ife A,0xf615
    set [dev_screen],1
add I,1
ifn I,device_count
    set PC,find_devices_loop
set PC,pop
:init_devices
jsr find_devices
;set up display 
set A,0
set B,0x8000
hwi [dev_screen]
set PC,pop

:Hello_World
set [0x8000],0x1048
set [0x8001],0x1065
set [0x8002],0x106c
set [0x8003],0x106c
set [0x8004],0x106f
set [0x8005],0x102c
set [0x8006],0
set [0x8007],0x1077
set [0x8008],0x106f
set [0x8009],0x1072
set [0x800a],0x106c
set [0x800b],0x1064
set [0x800c],0x1021
set PC,pop

:end
set PC,end