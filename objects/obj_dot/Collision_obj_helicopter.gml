image_alpha -= 0.1
image_xscale += 1
image_yscale += 1

if image_alpha < 0 {
instance_destroy()
}

other.vulnerable = 2