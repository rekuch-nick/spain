if(ww.state != State.play){ return; }

draw_self();
draw_text(x + 20, 416, formatMoney(ww.coins));

draw_text(x + 20, 384, string(ww.pop) + " / " + string(ww.popMax));