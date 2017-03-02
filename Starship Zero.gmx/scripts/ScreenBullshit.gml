/* Screen Bullshit */

window_set_fullscreen(true)

//How big is the screen?
ScreenHeight = display_get_height()
ScreenWidth = display_get_width()
//ScreenWidth = ScreenHeight*(room_width/room_height)

//Set size of window - you don't need to do this in full screen
window_set_size(ScreenWidth,ScreenHeight)

//How much of the room do we want on-screen?
view_wview = ScreenWidth
view_hview = ScreenHeight

//How much of our screen do we want that to take up?
view_wport = ScreenWidth
view_hport = ScreenHeight

//Some weird game maker bullshit
surface_resize(application_surface,ScreenWidth,ScreenHeight)

