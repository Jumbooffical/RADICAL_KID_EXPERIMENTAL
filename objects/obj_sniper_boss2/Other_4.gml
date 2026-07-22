var tries = 100;

repeat (tries)
{
    var all_bushes = instance_number(obj_bushes);
    if (all_bushes <= 0) break;

    var rng_bush = instance_find(obj_bushes, irandom(all_bushes - 1));

    if (point_distance(rng_bush.x, rng_bush.y, obj_player.x, obj_player.y) >= 1000)
    {
        x = rng_bush.x;
        y = rng_bush.y;
        break;
    }
}

//obj_uls_light.x = x;
//obj_uls_light.y = y;