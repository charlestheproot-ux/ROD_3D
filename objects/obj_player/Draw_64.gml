draw_set_font(Font1);
draw_set_valign(fa_bottom);

gpu_push_state();
gpu_set_fog(false, 0, 0, 0)

draw_text(20, global.res_h - 2, $"HP {hp}")

gpu_pop_state();

draw_set_valign(fa_top);
