	enum type {
	    GUN,
	    CONSUMABLE,
		ATTACHMENT,
		NADE
	}

function new_inv() constructor {
    _inventory = [];
    _max_inventory_slots = 15;
    
    add = function(_name, _desc, _sprite, _id, _type, _obj = "") {
        if (array_length(_inventory) < _max_inventory_slots) {
            array_push(_inventory, {
				name: _name,
				description: _desc,
                sprite: _sprite,
                id: _id,
                Type: _type,
				object: _obj,
                hover: false,
            });
		}
    };
    
    getAll = function() {
        return _inventory;
    };
    
    remove = function(index) {
        array_delete(_inventory, index, 1);
    };
    
    select = function(index) {
        deselect();
        _inventory[index].hover = true;
    };
    
    deselect = function() {
        for (var i = 0; i < array_length(_inventory); i++) {
            _inventory[i].hover = false;
        }
    };
	
	swap = function(a, b) {
	    var temp = _inventory[a];
	    _inventory[a] = _inventory[b];
	    _inventory[b] = temp;
	};
	
	findItemById = function(_id) {
    for (var i = 0; i < array_length(_inventory); i++) {
        if (_inventory[i].sprite == _id) {
            return i;
        }
    }
    return -1;
	};
}
