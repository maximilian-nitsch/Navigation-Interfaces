# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.
#
# This custom ROS 2 message file defines the magnetometer message for the nanoAUV. 

# Header of the message
std_msgs/Header header

# Magnetometer message
geometry_msgs/Vector3 magnetic_field

# Measurement valid flag
std_msgs/Bool is_valid

# DiagnosticStatus message
diagnostic_msgs/DiagnosticStatus diagnostic_status
