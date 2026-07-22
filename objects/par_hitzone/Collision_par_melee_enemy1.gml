if (!is_hit) {
    // Deal damage
    other.enemy_hp -= damage; // example damage

    // Mark as already hit
    is_hit = true;
}