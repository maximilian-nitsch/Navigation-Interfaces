# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.

# This custom ROS 2 message file defines the EvoLogics USBL target direction (USBLANGLES) message for the nanoAUV. 
# See EvoLogics S2C Reference Manual (version 2.0.B.1) for more information.

# Header of the message
std_msgs/Header header

# Timestamp of the string output in the local device’s system time (s)
builtin_interfaces/Time current_time

# Timestamp of the target position measurement, in the local device’s system time (s)
builtin_interfaces/Time measurement_time # TODO: check if header timestamp is sufficient

# Target's address
std_msgs/UInt8 remote_address

# Target's bearing and elevation with respect to the local device’s coordinate system (rad)
std_msgs/Float64 bearing_local
std_msgs/Float64 elevation_local

# Target's bearing and elevation with respect to north, east, down (NED) coordinate system (rad)
std_msgs/Float64 bearing_ned
std_msgs/Float64 elevation_ned

# Attitude (roll, pitch, yaw) of local device with respect to north, east, down (NED) coordinate system 
geometry_msgs/Vector3 attitude_rpy_xyz_to_ned

# Received signal strength indicator (RSSI) (dB). Acceptable values are between -20 and -85 dB.
std_msgs/Float32 received_signal_strength_indicator

# Signal integrity level illustrating the distortion of the signal. Values less than 100 indicate weak signal.
std_msgs/UInt16 signal_integrity_level

# Accuracy of the position fix (rad)
std_msgs/Float64 accuracy_position_fix

# Measurement valid flag
std_msgs/Bool is_valid

# Diagnostic status
diagnostic_msgs/DiagnosticArray diagnostic_array
