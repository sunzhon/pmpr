# <center> PMPR</center>


## Introduction

This project is developed to investigate the two adaptive interlimb coordination mechanisms: phase modulation (PM) and phase resetting (PR). The two mechanisms can also be used to regulate decoupled CPGs' phases automatically depending on local sensory signals (ground reaction forces (GRFs)). To do so, this project provides an modular robot-control framework. The robot is an small-sized quadruped robot (called Lilibot), which is open source at (https://gitlab.com/neutron-nuaa/lilibot). Here, the quadruped  robot   is a simulated robot in CoppeliaSim (see the folder vrep-simulation). The controller is based on decoupled CPGs-based control which consists of four decoupled CPGs outputting rhythmic commands to drive joint movement. Each CPG is modulated by its local GRF through a manner of PM or PR. The controller is able to make the robot to perform self-organized locomotion. The controller and the simulated robot are organized as two separated ROS nodes. They communicate with through two ROS topics (i.e., sensory topic and motor topic). To easily set the PM and PR, we use ROS parameter server to set their parameters. The sensory feedback gain of the PM is set via "\CPGPGain", while the threshold of the PR is set via "\CPGPThreshold". These parameters can be seen in configuration file "stbot.yaml". User can choose PM or PR to modulate the decoupled CPGs by setting the two parameter values. 

## Framework

The project is organized by four sub-folders including **controllers**, **projects**, and **vrep-simulation**. 

- **controllers** consists of the code of the control methods, including synapticPlasticityCpg.cpp and synapticPlasticityCpg.h. The PM and PR are also programed in these two files
- **project** contains the main.cpp of the project, and manage the software 
- **vrep-simulation** stores the simulation model which is based on VREP.  It has two quadruped robots: Lilibot



## The CPG-based control with PM and PR code is in:

- controllers/genesis/genesis-ann-library/synapticPlasticityCpg.cpp
- controllers/genesis/genesis-ann-lrbrary/synapticPlasticityCpg.h

## The implementation of the project
### Install necessary software on Ubuntu 18.04 or later version.
- The v4_1_0 or the latest version of the CoppeliaSim is necessary to run the simulation. The CoppeliaSim provides an platform to execute the simulated Lilibot. The CoppeliaSim can be download in here https://www.coppeliarobotics.com/.
- The vortex physical engine is necessary to execute dynamical computation of the simulation. The software and its activation can be seen in this link: https://www.cm-labs.com/vortex-studio/software/vortex-studio-academic-access/

### Steps to run the simulation
- open a terminal to run command: roscore
- start the CoppeliaSim and open the simulated Lilibot model at vrep_simulation/lilibot/lilibot-V5-P3.ttt of this project. 
- Click the run button at the toolbox of the CoppeliaSim.
- After click the button, the simulation is running. Simultaneously, the controller is executed to control the simulated Lilibot. In the control, the CPGs-based control module outputs basic rhythmic commands while the GRF is feedback to modulate the CPG activations through a manner of PM  or PR, thereby making the four decoupled CPGs generating phase shifts, and the robot perform a gait. 




## Reference

Sun, T., Xiong, X., Dai, Z., Owaki, D., & Manoonpong, P. (2021). A Comparative Study of Adaptive Interlimb Coordination Mechanisms for Self-Organized Robot Locomotion. *Frontiers in Robotics and AI*, *8*.

If you have any questions/doubts  about how to implement this project on your computer, you are welcomed to raise issues and email to me. My email address is suntao.hn@gmail.com
