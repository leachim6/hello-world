// ****************************************************************************
//  hello_world.ddd                                                 Tao project
// ****************************************************************************
//
// File Description:
//
// Original hello world with Tao Presentations.
// http://www.taodyne.com/shop/en/blog/3-getting-started-with-tao-presentations
//
//
//
// ****************************************************************************
//  (C) 1992-2010 Christophe de Dinechin <christophe@taodyne.com>
//  (C) 2010 Jérôme Forissier <jerome@taodyne.com>
//  (C) 2010 Catherine Burvelle <cathy@taodyne.com>
//  (C) 2010 Taodyne SAS
// ****************************************************************************

color "white"
milkyway 10000
rotatez -23
earth 400
hello_world 440


milkyway R ->
// ----------------------------------------------------------------------------
//    Draw the Milky Way
// ----------------------------------------------------------------------------
    locally
        texture_wrap true, true
        texture_transform {scale 5, 5, 5}
        texture "milkyway.jpg"
        rotatey 0.02 * page_time + 100
        scale 1, -1, 1
        sphere R


earth R ->
// ----------------------------------------------------------------------------
//    Draw Earth
// ----------------------------------------------------------------------------
    locally
        texture "earth.bmp"
        texture_wrap true, true
        rotatey 5 * page_time + 250
        sphere 0, 0, 0, R


hello_world R ->
// ----------------------------------------------------------------------------
//    Draw "hello world" text
// ----------------------------------------------------------------------------
    locally
        frame_texture 1900, 600,
            color 1, 1, 1, 1
            reset_transform
            // If font Arial Unicode installed, it will be used.
            // Otherwise, unifont will be used (unifont is packaged
            // with Tao presentations).
            font "Arial Unicode MS", "unifont", 72
            move_to -800, -9, 0
            text "Hello World or Καλημέρα κόσμε; or こんにちは 世界"
        rotatey -11 * page_time + 180
        color 20% , 20% , 20% , 70%
        sphere 0, 0, 0, R - 30
        color 100% , 90% , 20% , 90%
        sphere 0, 0, 0, R
