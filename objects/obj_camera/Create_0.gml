WeaponData()
zoom = 1.7
camW = 1366 * zoom
camH = 768 * zoom

follow = obj_player;

xTo = x;
yTo = y;

shake_str = 0;     // how strong the shake is
shake_decay = 0.9; // how fast it fades (closer to 1 = slower)
ads = 0.5

shake_x = 0;
shake_y = 0;
tilt_angle = 0;

rotation = 0;
cam_angle = 0;

// Interpolate between player and mouse position
base_zoom = 0.25
camera_zoom = base_zoom; // 0 = follow player only, 1 = follow mouse only
smooth_dir = 0;

px = obj_player.x;
py = obj_player.y;