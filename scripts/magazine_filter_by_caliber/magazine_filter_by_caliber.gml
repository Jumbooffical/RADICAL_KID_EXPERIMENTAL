function magazine_filter_by_caliber(_array_of_mags, caliber) {
    return array_filter(_array_of_mags, method({ caliber }, function(mag) {
        return mag.caliber == caliber;
    }));
}