function sh_get_value(args) {
	if (array_length(args) > 1) {
		try {
			path = args[1];
			var __value = variable_struct_path(main, path);
			return path + ": " + string(__value);	
		} catch (_) {
			return "Value does not exist"	
		}
	} else {
		return "main: " + string(main);	
	}
}

function meta_get_value() {
	return {
		description: "Gat a value within the main struct",
		arguments: ["<path>"],
		argumentDescriptions: ["Path to the struct\nLeave blank to show the main struct"]
	}
}