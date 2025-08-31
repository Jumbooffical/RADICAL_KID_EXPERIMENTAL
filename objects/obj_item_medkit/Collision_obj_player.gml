if other.hp >= other.maxhp
{
} else {
	other.hp += 50%(other.maxhp)		// Heal 50% max hp upon pickup
	instance_destroy(self)
}

