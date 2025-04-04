# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.
#
# This custom ROS 2 message file defines a the navigation filter message for the nanoAUV. 
# These message contains the estimated odometry (position, velocity, attitude, angular rate), 
# acceleration, bias estimation, water current vector, and diagnostic status.
#
# Message Descriptions:
# - `header`: Standard ROS 2 header containing timestamp and frame information.
# - `odometry`: Stamped odometry message with timestamp, NED position, body-fixed
#    velocity, attitude quaternion, and angular rate, along with covariance.
# - `acceleration_with_covariance`: Acceleration data with covariance information.
# - `bias_accelerometer`: Accelerometer bias with covariance.
# - `bias_gyroscope`: Gyroscope bias with covariance.
# - `water_current_velocity`: Placeholder for future work on water current velocity.
# - `diagnostic_array`: Array with diagnostic status information for the navigation filter.

# Header of the sample
std_msgs/Header header

# Stamped odometry message which contains:
# UNIX timestamp (s)
# NED position (north, east, down) (m)
# Body-fixed velocity (surge, sway, heave) (m/s)
# Attitude quaternion that rotates from body and NED frame (-)
# Angular rate along body frame (XYZ) (rad/s)
# + Covariance for position, velocity, attitude and angular rate
nav_msgs/Odometry odometry

# Acceleration (m/s²) + covariance (m/s²)²
geometry_msgs/AccelWithCovariance acceleration_with_covariance

# Accelerometer bias (m/s²) + covariance (m/s²)²
Vector3WithCovariance bias_accelerometer

# Gyroscope bias (rad/s) + covariance (rad/s)²
Vector3WithCovariance bias_gyroscope

# Water current NED velocity (m/s) + covariance (m/s)²
Vector3WithCovariance water_current_velocity

# Diagnostic status array
diagnostic_msgs/DiagnosticArray diagnostic_array