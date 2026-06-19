randomize()
spawn = false
spawn_alarm = 30

ranger_min = 1
ranger_max = 1

melee_min = 1
melee_max = 1

gren_min = 0
gren_max = 1

ranger_min = irandom_range(ranger_min, ranger_min + ranger_max);
melee_min = irandom_range(melee_min, melee_min + melee_max);
gren_min = irandom_range(gren_min, gren_min + gren_max);