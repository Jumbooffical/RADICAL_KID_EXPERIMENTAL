function magazine_filter_by_quality(_array_of_mags, rarity) {
    return array_filter(_array_of_mags, method({ rarity }, function(mag) {
        return mag.rarity == rarity;
    }));
}