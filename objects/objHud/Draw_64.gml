if(ww.state != State.play){ return; }

draw_self();
draw_text(x + 20, 40, formatMoney(ww.coins));