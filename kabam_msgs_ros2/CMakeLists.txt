cmake_minimum_required(VERSION 3.8)
project(kabam_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

find_package(actionlib_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "action/AutoDocking.action"
  "action/MissionControl.action"
  "msg/ChargerState.msg"
  "msg/Mission.msg"
  "msg/MissionIdentifier.msg"
  "msg/MissionList.msg"
  "msg/ScoutStatus.msg"
  "msg/Task.msg"
  "msg/TaskParam.msg"
  "msg/TaskStatus.msg"
  "msg/Waypoint.msg"
  "msg/WaypointList.msg"
  "srv/GetLastWpReached.srv"
  "srv/GetMissionDetails.srv"
  "srv/GetMissionList.srv"
  "srv/GetScheduleList.srv"
  "srv/ParamTrigger.srv"
  "srv/StartMapping.srv"
  "srv/StartMission.srv"
  DEPENDENCIES actionlib_msgs geometry_msgs std_msgs
 )

ament_package()