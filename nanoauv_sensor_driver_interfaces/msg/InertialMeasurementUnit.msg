# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.
#
# This custom ROS 2 message file defines the IMU message for the nanoAUV. 

# Header of the message
std_msgs/Header header

# Linear acceleration (m/s²)
geometry_msgs/Vector3 linear_acceleration

# Angular velocity (rad/s)
geometry_msgs/Vector3 angular_velocity

# Measurement valid flag
std_msgs/Bool is_valid

# Diagnostic status array
diagnostic_msgs/DiagnosticArray diagnostic_array
