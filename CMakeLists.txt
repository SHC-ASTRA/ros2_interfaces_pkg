cmake_minimum_required(VERSION 3.8)
project(ros2_interfaces_pkg)

if(POLICY CMP0148) 
  cmake_policy(SET CMP0148 OLD) 
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED) 
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "action/AutoCommand.action"
  "msg/control/ArmIK.msg"
  "msg/control/ArmManual.msg"
  "msg/control/AutoNav.msg"
  "msg/control/ControllerState.msg"
  "msg/control/CoreControl.msg"
  "msg/control/BioControl.msg"
  "msg/control/PtzControl.msg"
  "msg/feedback/PtzFeedback.msg"
  "msg/feedback/AutoFeedback.msg"
  "msg/feedback/SocketFeedback.msg"
  "msg/feedback/DigitFeedback.msg"
  "msg/feedback/BioFeedback.msg"
  "msg/feedback/CoreFeedback.msg"
  "msg/feedback/MaculaFeedback.msg"
  DEPENDENCIES std_msgs geometry_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
