# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.
#
# This custom ROS 2 message file defines a generic GNSS position, velocity, and time (PVT) message.

# Header of the message
std_msgs/Header header

# Geodetic position (lat, lon, hgt) (rad, rad, m)
geometry_msgs/Vector3 position_llh

# Covariance of the position (m²)
std_msgs/Float64[9] position_llh_covariance

# Cartesian north, east, down velocity (m)
geometry_msgs/Vector3 velocity_ned

# Covariance of the velocity (m²/s²)
std_msgs/Float64[9] velocity_ned_covariance

# GNSS PVT solution mode
std_msgs/UInt8 mode

# Measurement valid flag
std_msgs/Bool is_valid

# Diagnostic status array
diagnostic_msgs/DiagnosticArray diagnostic_array
