function draw_text_blend(_x, _y, _string, _col){
if !global.dev_mode exit
draw_set_colour(_col)
draw_text(_x, _y, _string)
draw_set_colour(c_white)
}