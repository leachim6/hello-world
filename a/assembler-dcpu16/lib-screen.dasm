  set i, 0xf615
  set j, 0x7349
  hwn z
  sub z, 1

:device_detect_loop
  hwq z

  ife a, i
    ife b, j
      set pc, device_detect_ret

  sub z, 1
  ifa z, 0xffff
    set pc, device_detect_loop

:device_detect_ret
  set a, 0
  set b, [vidmem]
  hwi z

  set i, [vidmem]
  set j, string
  set c, 0xc

:memcpy_loop
  bor [j], 0xf000 ; OR with font style.
  sti [i], [j]
  sub c, 1
  ife c, 0
    sub pc, 1
  set pc, memcpy_loop

:display dat 0
:vidmem dat 0x8000
:string dat "Hello World!"