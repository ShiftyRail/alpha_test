/*
	These are simple defaults for your project.
 */


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


// -- The mob
/mob/player
	icon = 'icons/mob.dmi'
	icon_state = "human"

/mob/player/Login()
	. = ..()
	loc = locate(8, 8, 1)

/mob/player/verb/animation()
	set name = "Animate"
	animate(src, alpha = initial(alpha) - rand(100, 200), time = 6, loop = 10, easing = LINEAR_EASING)

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