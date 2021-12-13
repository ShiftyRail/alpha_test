/*
	These are simple defaults for your project.
 */

#define WORLD_ICON_SIZE 32
#define LIGHT_PLANE 2

world
	fps = 30		// 30 frames per second
	icon_size = 32	// 32x32 icon size by default
	view = 7
	movement_mode = TILE_MOVEMENT_MODE
	mob = /mob/player
	turf = /turf/floor
	area = /area/start

// Tile-based movment.
mob
	step_size = 4

obj
	step_size = 4


var/list/cardinal = list(NORTH, SOUTH, EAST, WEST)

// -- The mob
/mob/player
	icon = 'icons/mob.dmi'
	icon_state = "human"

/mob/player/Login()
	. = ..()
	loc = locate(8, 8, 1)

/mob/player/verb/animation()
	set name = "Animate"
	animate(src, alpha = initial(alpha) - rand(100, 200), time = 2, loop = -1, easing = LINEAR_EASING)

// -- The turfs
/turf/wall
	icon = 'icons/floors.dmi'
	icon_state = "wall"
	density = 1
	opacity = 1

/turf/floor
	icon = 'icons/floors.dmi'
	icon_state = "floor"

// -- The area

/area/start
	icon = 'icons/floors.dmi'
	icon_state = "start"
	luminosity = 1
	plane = 3
	invisibility = 101