#include <stdio.h>
#include <string.h>
#include "lua/lua.h"
static int a = 0;
static int geta (lua_State *L) {
	lua_pushnumber(L, 12);  /* push result */
	return 1;  /* number of results */
}
static int seta (lua_State *L) {
	a = a + 1;
	lua_pushnumber(L, a);  /* push result */
	return 1;
}
LUALIB_API int luaopen_run_engine(lua_State *L) {
	// lua_register(L, "test", l_sin);
	lua_pushcfunction(L, seta);  /* push result */
	lua_pushcfunction(L, geta);  /* push result */
    return 2;
}