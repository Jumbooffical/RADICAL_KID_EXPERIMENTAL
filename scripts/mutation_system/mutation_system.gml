function mutation_system() {
	enum U_RARITY {
		COMMON,
		RARE,
		DEFECT,
		MAJOR_DEFECT
	}
	
	enum CANCER_PHASE {
		PHASE0,
		PHASE1,
		PHASE2,
		PHASE3,
		PHASE4
	}
	
	cancer_phase = CANCER_PHASE.PHASE0
	cancer_timer = 1
}

function mutation(_name, _desc, _rarity) constructor {
	name = _name;
	desc = _desc
	rarity = _rarity;
}