package = "http"
version = "scm-0"

description = {
	summary = "HTTP library for Lua";
	homepage = "https://github.com/daurnimator/lua-http";
	license = "MIT/X11";
}

source = {
	url = "git+https://github.com/daurnimator/lua-http.git";
}

dependencies = {
	"lua >= 5.1";
	"compat53"; -- Only if lua < 5.3
	"bit32"; -- Only if lua == 5.1
	"cqueues";
	-- "luaossl >= 20150305";
}

build = {
	type = "builtin";
	modules = {
		["http.bit"] = "http/bit.lua";
		["http.h1_connection"] = "http/h1_connection.lua";
		["http.h2_error"] = "http/h2_error.lua";
		["http.headers"] = "http/headers.lua";
		["http.hpack"] = "http/hpack.lua";
	};
}
