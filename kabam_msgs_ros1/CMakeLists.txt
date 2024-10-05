cmake_minimum_required(VERSION 3.0.2)
project(kabam_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  actionlib_msgs
  message_generation
  message_runtime
  nav_msgs
  std_msgs
)

# Generate messages in the 'msg' folder
add_message_files(
  FILES
    ChargerState.msg
    Mission.msg
    MissionIdentifier.msg
    MissionList.msg
    ScoutStatus.msg
    Task.msg
    TaskParam.msg
    TaskStatus.msg
    Waypoint.msg
    WaypointList.msg
)


# Generate services in the 'srv' folder
add_service_files(
  FILES
    GetLastWpReached.srv
    GetMissionDetails.srv
    GetMissionList.srv
    GetScheduleList.srv
    ParamTrigger.srv
    StartMapping.srv
    StartMission.srv
)

# Generate actions in the 'action' folder
add_action_files(
  FILES
    AutoDocking.action
    MissionControl.action
)
# Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
    actionlib_msgs
    nav_msgs
    std_msgs
)
catkin_package(
  CATKIN_DEPENDS
    message_runtime
)
