# @license BSD-3 https://opensource.org/licenses/BSD-3-Clause
# Copyright (c) 2024, Institute of Automatic Control - RWTH Aachen University
# Maximilian Nitsch (m.nitsch@irt.rwth-aachen.de)
# All rights reserved.

# This custom ROS 2 message file defines the WaterLinked DVL A50 beam message for the nanoAUV. 
# These message contains the beam measurement, noise parameters and status variables.
# See https://waterlinked.github.io/dvl/dvl-protocol/ for more information.

# Identifier of the transducer (0-3)
std_msgs/UInt8 transducer_id

# Velocity measured in the direction of the transducer (m/s)
std_msgs/Float64 beam_velocity

# Range to the reflecting surface measured parallel to the transducer beam (m)
std_msgs/Float64 range_to_reflecting_surface

# Received signal strength indicator (RSSI): strength of the signal received by this transducer (dBm)
std_msgs/Float64 received_signal_strength_indicator

# Noise spectral density (NSD): strength of the background noise received by this transducer (dBm)
std_msgs/Float64 noise_spectral_density

# Velocity measurement valid flag
std_msgs/Bool is_valid
