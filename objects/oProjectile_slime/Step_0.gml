/// @description Projectile - Gravity.

fall_speed += 0.05;
y += fall_speed;
y = clamp(y,-32,ROOM_FLOOR);
if (y == ROOM_FLOOR){ image_speed = 1; }