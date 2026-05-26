# Topic: /bio/lance/control

float32 drill_arm_ctrl  # (Big, 1) Negative for up, positive for down

float32 drill_speed  # -1 <-> 1

bool drill_laser  # Controls the two red 5v lasers that don't do anything

int16 vacuum_arm_ctrl  # (Small, 2) Negative for up, positive for down
