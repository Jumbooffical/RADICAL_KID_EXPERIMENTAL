var in = 0.3

if image_alpha < 0 {
instance_destroy()
}

image_xscale += in
image_yscale += in
image_alpha -= 0.01
image_angle += in