draw_self();

var n = ( (hpMax - hp) / hpMax ) * 7;

//var n = image_number - ( (hp / hpMax) * image_number );
draw_sprite_stretched(imgWallCracks, n, x, y, sprite_width, sprite_height);


// n == 1 -> 0
// n == .5 -> ~4