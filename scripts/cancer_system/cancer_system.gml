function cancer_system() {
	var base_timer = duration(5,0)
	cancer_timer = clamp(cancer_timer, 0, base_timer)
	
	switch (cancer_phase) {
		case CANCER_PHASE.PHASE0:
			if cancer_timer <= 0 {
				cancer_timer = base_timer
				cancer_phase = CANCER_PHASE.PHASE1
			}
		break;
		
		case CANCER_PHASE.PHASE1:
			base.heal_mult = 0.9
			
			if cancer_timer <= 0 {
				cancer_timer = base_timer
				cancer_phase = CANCER_PHASE.PHASE2
			}
		break;
		
		case CANCER_PHASE.PHASE2:
			base.heal_mult = 0.4
			
			if cancer_timer <= 0 {
				cancer_timer = base_timer
				cancer_phase = CANCER_PHASE.PHASE3
			}
		break;
		
		case CANCER_PHASE.PHASE3:
			base.heal_mult = 0.1
			
			if cancer_timer <= 0 {
				cancer_phase = CANCER_PHASE.PHASE4
			}
		break;
		
		case CANCER_PHASE.PHASE4:		
			if cancer_timer <= 0 {
				hp--
			} else {
				cancer_phase = CANCER_PHASE.PHASE3
			}
		break;	
	}
}