globalvar main;

main = {
	name: "Chara",
	achievements: array_create(64, false),
	battle: {
		player: {
			love: 20,
			hp: 99,
			maxhp: 99,
			atk: 99,
			def: 99,
			inv: 20,	
		},
		vars: {
			karma_enabled: false,
			karma: 0,
		},
		board: {
			x1: 32,
			y1: 250,
			x2: 602,
			y2: 385
		},
		text: ["why the FUCK do i have to use git reset to pull"],
	},
	inventory: array_create(8, 0),
	weapon: 0,
	armor: 0,
	visual: {
		disable_intensive_backgrounds: false,
		border_enabled: false,
		border: BORDER.SIMPLE,
	},
	debug: {
		enabled: true,
		show_fps: true,
		show_tvars: false,
		tracked_values: [],
	}
}