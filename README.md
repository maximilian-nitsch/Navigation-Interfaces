# Interfaces

Dedicated Repo for Interfaces (Messages, Services, Actions) of ROS2 Packages.

## Reasoning:

In theory, you could create custom messages in any package you want, but this could lead to many problems. 
For example, if you create the message in package A and you need this message in package B, 
you’ll have to add a dependency to package A. 
This will quickly result in a dependency mess with unneeded and cycling dependencies.

So, the best practice here is to create a package dedicated to ROS2 custom messages, and only that. 
Then you’ll be able to add a dependency to this package, from any package requiring your custom interfaces.

from: https://roboticsbackend.com/ros2-create-custom-message/

## Naming Conventions:

### Folders
A folder is a ROS2 package serving as collection of interfaces.

The name of the folder shall end with `_interfaces`.
This is the new best practice for ROS2 Packages and supersedes the ROS1 convention `_msgs`.

The interfaces can be grouped by:
- Interfaces for a ROS2 Package (`awesome_package_interfaces`)
- Subject or Purpose (`sensor_interfaces`)

### Files

In General: Avoid abbreviation for the sake of clarity.

- Messages
  - CamelCase.msg
- Services
  - CamelCase.srv
- Actions
  - CamelCase.action


#### Field names 

In General: Avoid abbreviation for the sake of clarity.

Add Comments for all fields. (`# comment`)


Field names must be lowercase alphanumeric characters with underscores for separating words. They must start with an alphabetic character, and they must not end with an underscore or have two consecutive underscores. [[Source]](https://docs.ros.org/en/humble/Concepts/Basic/About-Interfaces.html#field-names)


## Further Readings:

- https://docs.ros.org/en/humble/Concepts/Basic/About-Interfaces.html
- https://roboticsbackend.com/ros2-create-custom-message/
- https://design.ros2.org/articles/legacy_interface_definition.html
