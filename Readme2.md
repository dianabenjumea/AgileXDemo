# Teleoperation

To set up teleoperation, you'll need to use two terminal windows.

## Terminal 1:
1. Navigate to your workspace:
   ```bash
   cd ~/catkin_ws
   ```
2. Source the setup file:
   ```bash
   source devel/setup.bash
   ```
3. Set up the CAN interface and launch the robot base:
   ```bash
   sudo ip link set can0 up type can bitrate 500000
   roslaunch scout_bringup scout_mini_robot_base.launch
   ```

## Terminal 2:
1. Navigate to your workspace:
   ```bash
   cd ~/catkin_ws
   ```
2. Source the setup file:
   ```bash
   source devel/setup.bash
   ```
3. Launch the teleoperation keyboard interface:
   ```bash
   roslaunch scout_bringup scout_teleop_keyboard.launch
   ```

**Note:** Make sure to switch the handle to command control mode (SWB at the top) on the remote control. The control mode switching button (SWB) positions are as follows:
- **Top:** Command mode
- **Middle:** Remote control mode
- **Bottom:** Constant speed mode


# Autonomous navigation

First we need to map the area:
Terminal 1
[ WARN] [1728463330.288937436]: Waiting for laser_scans....
[ WARN] [1728463330.388969213]: Waiting for laser_scans....
(1) Start the lidar and publish the coordinate transformation of base_link-><laser_link>
```bash
roslaunch scout_bringup open_rslidar.launch
```

（2）Launch gmapping node Gmapping Algorithm:
```bash
roslaunch scout_bringup gmapping.launch
```


# Docker instructions 
This machine is ubuntu 18.04 runing with ros melodic
Install docker engine: https://docs.docker.com/engine/install/ubuntu/


# Connect to the robot using SSH

ssh agilex@192.168.1.170
ifconfig --> inet flag

My MAC ssh r06781db@c-losxdk7jq.localdomain
To activate open a window in the remote machine export DISPLAY=:0
https://askubuntu.com/questions/405916/open-a-window-in-a-remote-machine

Manuals:
GLinet: https://m.media-amazon.com/images/I/B1sH9EgTLGS.pdf
GLinet other links with technical information: 
   https://docs.gl-inet.com/router/en/3/specification/gl-ar750/
   https://docs.gl-inet.com/router/en/3/setup/gl-ar750/first_time_setup/?_gl=1*1qes6ym*_gcl_au*OTUxNTM2Njg5LjE3Mjg0ODY5MTM.*_ga*MjA2NjM2MTU0OC4xNzI4NDg2OTEy*_ga_34T6Q5NL0V*MTcyODQ4NjkxMi4xLjEuMTcyODQ4NzI2Ny4wLjAuMA..
   https://www.gl-inet.com/products/gl-ar750/#specs
Nadgear(provided by RAICo): https://www.downloads.netgear.com/files/GDC/GS105E/GS105E_IGprt_24Sept12.pdf
RS-Helios-16P: https://static.generation-robots.com/media/RS-HELIOS-16P_USER_GUIDE_V1.0.1_EN.pdf


ROS printout variables: (NetworkSetUp)
$ printenv | grep ROS


