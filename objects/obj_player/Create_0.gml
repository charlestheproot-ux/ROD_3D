// set up camera
cam = camera_create_view(0, 0, global.res_w, global.res_h);
view_enabled = true;
view_visible[0] = true;
view_camera[0] = cam;

// projection
proj_mat = matrix_build_projection_perspective_fov(80, -global.res_w/global.res_h, 3, 3000);
camera_set_proj_mat(cam, proj_mat);

 // look
 view_mat = [];
 z = 24;
 direction = 0; // X look
 tilt = 0; // Y look

// mouselook
sens_x = 0.1;
sens_y = 0.1;

window_mouse_set_locked(true);

//movement
move_speed = 2;
move_x = 0;
move_y = 0;

