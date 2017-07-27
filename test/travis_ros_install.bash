#!/bin/bash -xve

#required packeges
pip install catkin_pkg
pip install empy
pip install pyyaml
pip install rospkg

#ros install
cd ..
git clone http://github.com/makototakeuchi0/ros_setup_scripts_Ubuntu14.04_server.git
cd ./ros_setup_scripts_Ubuntu14.04_server
bash ./setup0.bash
bash ./setup1.bash

#catkin setup
mkdir -p ~/catkin_ws/scr
cd ~/catkin_ws/scr
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ~/catkin_ws
catkin_make
