# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.

# This custom ROS 2 msg file defines the pressure message for the KELLER Series 10LHPX. 
# See https://keller-druck.com/en/products/pressure-transmitters/oem-high-pressure-transmitters/series-10lhpx for more information.

# Header of the message
std_msgs/Header header

# Pressure measurement (Pa) and correspondind variance (Pa²)
sensor_msgs/FluidPressure pressure

# Depth measurement (m) from converted pressure and corresponding variance (m²)
std_msgs/Float64 depth

# Temperature measurement (°C) and corresponding variance (°C²)
sensor_msgs/Temperature temperature

# Measurement valid flag
std_msgs/Bool is_valid 

# Diagnostic status
diagnostic_msgs/DiagnosticArray diagnostic_array
