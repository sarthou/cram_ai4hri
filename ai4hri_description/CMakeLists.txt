cmake_minimum_required(VERSION 3.0.2)
project(ai4hri_description)

find_package(catkin REQUIRED COMPONENTS
  urdf
  controller_manager
  joint_state_controller
  robot_state_publisher
)

catkin_package()