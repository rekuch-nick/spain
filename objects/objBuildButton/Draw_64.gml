if(ww.state != State.play){ return; }
if(cursor == noone){ return; }


if(ww.coins < cursor.cost){ draw_set_alpha(.5); }

draw_self();
draw_sprite_stretched(icon, 0, x + 4, y + 4, 56, 56);

draw_set_alpha(1);