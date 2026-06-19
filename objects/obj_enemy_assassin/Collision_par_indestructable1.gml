if (id > other.id) {

    var push_amt = 7;

    var dx = sign(x - other.x);
    var dy = sign(y - other.y);

    x += dx * push_amt;
    y += dy * push_amt;
}