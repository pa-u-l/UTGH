function sh_toggle_godmode(args) {
	if (array_length(args) > 1) {
		if (args[1] == "true") {
			main.battle.player.hp = infinity;
			main.battle.player.maxhp = infinity;
		} else if (args[1] == "false") {
			main.battle.player.hp = 99;
			main.battle.player.maxhp = 99;
		}
	} else {
		return "Invalid argument count"
	}
}

function meta_toggle_godmode() {
	return {
		description: "Toggle god mode. As simple as that.",
		arguments: ["bool"],
		suggestions: [["true", "false"]],
		argumentDescriptions: ["Should god mode be enabled?"]
	}
}