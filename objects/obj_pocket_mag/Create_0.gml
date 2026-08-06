selected_pocket = false
sprite_index = spr_empty_mag_slot
mags = magazine_filter_by_caliber(global.allmags, MAG_CALIBER.UNIVERSAL);
array_delete(mags, 1, 1)
rng_mag = mags[irandom(array_length(mags)-1)].sprite;
