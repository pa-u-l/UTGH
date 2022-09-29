function sh_var_track(args) {
	
	if (args[1] == "toggle") {
		main.debug.show_tvars = !main.debug.show_tvars;
	} else {
		if (args[1] == "add") {
			try {
				variable_struct_path(main, args[2]);	
			} catch (_) {
				return "Invalid path";	
			}
			
			array_push(main.debug.tracked_values, args[2]);
			return "Added " + args[2] + " to the tracking list"; 
		} else if (args[1] == "remove") {
			var _v = array_value_index(main.debug.tracked_values, args[2]);
			if (_v != -1) {
				array_delete(main.debug.tracked_values, _v, 1);
				return "Removed " + args[2] + " from the tracking list";
			}
			
			return "* But nothing happened."
		}
	}
}

function meta_var_track() {
	return {
		description: "Allows to track values located within the main struct",
		arguments: ["func", "<path>"],
		argumentDescriptions: [
			"What \"function\" should be set (can be \"add\", \"remove\" or \"toggle\") (path does not matter when using toggle)",
			"Target path"
		],
		suggestions: [
			["add", "remove", "toggle"],
			main.debug.tracked_values
		]
	}
}