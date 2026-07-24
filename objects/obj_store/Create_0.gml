randomize()
image_alpha = 0.3
start = true

enum SHOP {
	MOD,
	WEAPON,
	MEDICAL
}

store = [0, 1, 2]
store_type = 
irandom_range(0, 2)

markup = 1

common_item = 0
uncommon_item = 0
rare_item = 0

common_amt = irandom_range(3, 4)
uncommon_amt = irandom_range(2, 3)
rare_amt = irandom_range(0, 2)

loot_pool()