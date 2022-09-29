function variable_struct_path(struct, path) {
	var __split = string_split(".", path, false);
	var current_struct = struct;
	var current_index = 0;
	
	try {
		while (!variable_struct_exists(current_struct, __split[array_length(__split) - 1])) {
			if (is_struct(current_struct) && !variable_struct_exists(current_struct, __split[array_length(__split) - 1])) {
				current_struct = variable_struct_get(current_struct, __split[current_index]);
				current_index++;
			}
		}	
	} catch (_) {
		// scan is done
	}
	
	return variable_struct_get(current_struct, __split[array_length(__split) - 1]);
} 