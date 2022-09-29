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
			karma: true,
		}
	},
	visual: {
		disable_intensive_backgrounds: false,
		border_enabled: false,
		border: BORDER.SIMPLE,
	},
	debug: {
		enabled: true,
		show_fps: true,
		show_tvars: true,
		tracked_values: [
			"battle.vars.karma_enabled",
			"battle.vars.karma"
		],
	}
}