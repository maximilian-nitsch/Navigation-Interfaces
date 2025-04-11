cmake_minimum_required(VERSION 3.8)
project(nanoauv_sensor_driver_interfaces)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(diagnostic_msgs REQUIRED)

set(msg_files
  "msg/InertialMeasurementUnit.msg"
  "msg/DvlVelocity.msg"
  "msg/DvlBeam.msg"
  "msg/UsblLong.msg"
  "msg/UsblAngles.msg"
  "msg/DepthPressure.msg"
  "msg/Magnetometer.msg"
  "msg/GnssPvt.msg"
  "msg/GnssAttitude.msg"
)

set(srv_files
)

set(action_files
  "action/CalibratePressureSensor.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}

  DEPENDENCIES  
    builtin_interfaces
    std_msgs
    sensor_msgs
    geometry_msgs
    diagnostic_msgs
  # ADD_LINTER_TESTS
 )

ament_export_dependencies(rosidl_default_runtime)
ament_package()
