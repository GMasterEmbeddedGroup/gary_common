# This message contains robot status data received from the referee system

std_msgs/Header header

# robot id, see enum below
uint8 robot_id

uint8 ROBOT_ID_NONE             = 0
uint8 ROBOT_ID_RED1             = 1
uint8 ROBOT_ID_RED2             = 2
uint8 ROBOT_ID_RED3             = 3
uint8 ROBOT_ID_RED4             = 4
uint8 ROBOT_ID_RED5             = 5
uint8 ROBOT_ID_RED6             = 6
uint8 ROBOT_ID_RED7             = 7
uint8 ROBOT_ID_RED8             = 8
uint8 ROBOT_ID_RED9             = 9
uint8 ROBOT_ID_BLUE1            = 101
uint8 ROBOT_ID_BLUE2            = 102
uint8 ROBOT_ID_BLUE3            = 103
uint8 ROBOT_ID_BLUE4            = 104
uint8 ROBOT_ID_BLUE5            = 105
uint8 ROBOT_ID_BLUE6            = 106
uint8 ROBOT_ID_BLUE7            = 107
uint8 ROBOT_ID_BLUE8            = 108
uint8 ROBOT_ID_BLUE9            = 109

# robot level
uint8 robot_level

# robot remain hp
uint16 remain_hp

# robot max hp
uint16 max_hp

# 17mm shooter 1 data, speed limit in m/s
uint16 shooter_17mm_id1_cooling_rate
uint16 shooter_17mm_id1_cooling_limit
uint16 shooter_17mm_id1_speed_limit

# 17mm shooter 2 data, speed limit in m/s
uint16 shooter_17mm_id2_cooling_rate
uint16 shooter_17mm_id2_cooling_limit
uint16 shooter_17mm_id2_speed_limit

# 42mm shooter 1 data, speed limit in m/s
uint16 shooter_42mm_id1_cooling_rate
uint16 shooter_42mm_id1_cooling_limit
uint16 shooter_42mm_id1_speed_limit

# chassis power limit, in watt
uint16 chassis_power_limit

# power output status
bool gimbal_power_output
bool chassis_power_output
bool shooter_power_output