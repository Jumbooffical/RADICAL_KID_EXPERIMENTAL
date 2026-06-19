var in = 0.03

if image_alpha < 0 {
instance_destroy()
}

if obj_player.cursed {
image_xscale += in * 3
image_yscale += in * 3
image_alpha -= in * 0.5
image_angle += in
} else {
image_xscale += in
image_yscale += in
image_alpha -= in
image_angle += in
}