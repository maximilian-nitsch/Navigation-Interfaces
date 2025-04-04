# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.
#
# This custom ROS 2 message file defines a generic GNSS position, velocity, and time (PVT) message.

# Header of the message
std_msgs/Header header

# GNSS compass attitude in roll, pitch, yaw (rad)
geometry_msgs/Vector3 attitude_rpy

# Covariance of the position (rad²)
std_msgs/Float64[9] attitude_rpy_covariance

# Angular velocity along roll, pitch, yaw (rad/s)
geometry_msgs/Vector3 angular_velocity

# Covariance of the angular velocity (rad²/s²)
std_msgs/Float64[9] angular_velocity_covariance

# GNSS attitude solution mode
std_msgs/UInt8 mode

# Measurement valid flag
std_msgs/Bool is_valid

# Diagnostic status array
diagnostic_msgs/DiagnosticArray diagnostic_array
