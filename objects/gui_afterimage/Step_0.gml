var in = 0.03

if image_alpha <= 0 {
instance_destroy()
}

image_xscale += in
image_yscale += in
image_alpha -= in
image_angle += in

if obj_player.cursed {
image_xscale += in * 2
image_yscale += in * 2
image_alpha -= in * 0.03
image_angle += in
}

if status_icon {
image_xscale += in * 5
image_yscale += in * 5
image_alpha -= in
}