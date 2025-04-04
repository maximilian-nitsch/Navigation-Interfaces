# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.

# This custom ROS 2 message file defines the WaterLinked DVL A50 velocity message for the nanoAUV. 
# These message contains the DVL velocity, beam measurements, noise parameters and status variables.
# See https://waterlinked.github.io/dvl/dvl-protocol/ for more information.

# Header of the message
std_msgs/Header header

# Time elapsed since of the last velocity report (s)
std_msgs/Float64 time_since_last_velocity_report

# Velocity of the DVL frame (m/s)
geometry_msgs/Vector3 velocity

# Figure of merit of the measurement (-)
std_msgs/Float64 figure_of_merit

# Covariance of the velocity (m²/s²)
std_msgs/Float64[9] velocity_covariance

# Distance to the ground or the ice sheet (m)
std_msgs/Float64 altitude

# Array of transduce beam messages
DvlBeam[4] transducers

# Velocity measurement valid flag
std_msgs/Bool is_valid

# 8bit status mask of the DVL
std_msgs/Int64 status # TODO: decode status to warn for high temperature and thermal shutdown (Bit 0)

# Time of the surface reflection (time of valicity/center of ping) (s)
builtin_interfaces/Time time_of_surface_reflection

# Time before sending report over TCP (s)
builtin_interfaces/Time time_of_transmission

# Diagnostic status array
diagnostic_msgs/DiagnosticArray diagnostic_array