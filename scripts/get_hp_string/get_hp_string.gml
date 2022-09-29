function get_hp_string() {
	var __string = "";
	
	if (is_infinity(main.battle.player.hp)) {
		__string += "INF / ";	
	} else {
		__string += string(main.battle.player.hp) + " / "	
	}
	
	if (is_infinity(main.battle.player.maxhp)) {
		__string += "INF";	
	} else {
		__string += string(main.battle.player.maxhp)
	}
	
	return __string;
}