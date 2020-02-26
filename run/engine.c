#include <stdio.h>
#include <string.h>
#include "lua/lua.h"
static int testfunc (lua_State *L) {
	char* a = lua_tostring(L, 1);
	lua_pushnumber(L, 12);  /* push result */
	return 1;  /* number of results */
}
LUALIB_API int luaopen_run_engine(lua_State *L) {
	// lua_register(L, "test", l_sin);
	lua_pushcfunction(L, testfunc);  /* push result */
	lua_pushcfunction(L, testfunc);  /* push result */
    return 2;
}