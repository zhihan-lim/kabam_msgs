# To be used with Xnergy ROS Driver
int16 RCU_IDLE = 0
int16 RCU_RESERVE_0 = 1
int16 RCU_HANDSHAKE_0 = 2
int16 RCU_HANDSHAKE_1 = 3
int16 RCU_HANDSHAKE_2 = 4
int16 RCU_CHARGING = 5
int16 RCU_STOP = 6
int16 RCU_RESERVE_1 = 7
int16 RCU_RESERVE_2 = 240
int16 RCU_ERROR = 238
int16 RCU_NOT_CONNECTED = 250

std_msgs/Header header
int16 state
string message