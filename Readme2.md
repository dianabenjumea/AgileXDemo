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
