event_inherited()
damage = 12
velocity = 0

weaponLength = sprite_get_bbox_right(weapon[wID, GUN.PLAYER_SPRITE]) - sprite_get_xoffset(weapon[wID, GUN.PLAYER_SPRITE])
visible = false

path = path_add()
path_index_current = path;

my_state = bullet_state.NORMAL
text_float = 0