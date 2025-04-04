# This type shall be used to represent data acqiered by a mechanical scanning or a multibeam imaging sonar.
# In the mechanical scanning case the bearings array might hold only one angle in the multibeam case multiple angles.
# This type can also be used to collect multiple beams from a scanning sonar.
# Since the beams are collected at different times, the timestamps array should be used to collect the acquisition times.

# Length of one bin in the time domain.
geometry_msgs/Vector3 vector3
float64[9] covariance

