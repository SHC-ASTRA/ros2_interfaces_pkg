# Topic: /bio/citadel/control

bool[3] distributors_ctrl  # (ID 40) Each: 0 stationary, 1 wiggling

int16[3] valves_ctrl  # (ID 45) Each: -1 close, 0 stop, 1 open

int16 pump_id  # (ID 24) [0-2], -1 does nothing
int16 pump_direction  # -1 down, 0 stop, 1 up

int16 fan_speed # (ID 19) [0-100], 0 turns off
