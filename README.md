# Gray-Scott-Sim-system
## Background
Gray Scott is a reaction-diffusion system, essentially, it is used to model a system that includes a reaction and a diffusion. 

This program builds on the Initial Gray-Scott simulation. 


## Project Structure

This is the structure of the project directory:

- `/project/`: The root directory of the project.
  - `build`: Directory for build artifacts.
  - `googletest`: Google Test framework.
  - `/gray-scott-sim/`: Directory for the Gray-Scott simulation code.
    - `CMakeLists.txt`: CMake file.
    - `gs.cpp`: Implementation of Gray-Scott Simulation.
    - `simulation_params.h`: Simulation parameters 
    - `/tests/`: Tests directory
      - `test_gs.cpp`:  Test file for the Gray-Scott simulation.
- `README.md`: The README file containing project documentation and instructions.

## Testing Framework

## Tests

## Installation Guide

## Build

## Continuous Integration (CI)














## Installation
* 1.Download source code from github repository and then compile it by Cmake
  * required environment:
   	* C++ Environment at least C++11
   	* Cmake Version 3.15 or above
    * C++ compiler ie. GCC or Visual Studio Compiler
  * using Command Line to compile  
    * switch to the directory of the source code,where `download-dir` is the dir of the source code  
    `cd download—dir`  
    * create build diretory  
    `mkdir build`
    * switch to build directory  
    `cd build`
    * Cmake link library  
    `cmake ..`
    * compile   
     `make`  
    * execute program by command:
      `./gray-scot-sim`
* 3.Download the released version of the executable file(exe) from the github and then run it on windows system

## Usage
when running the program,the following parameters could be inputed to adjust the result(optional).  
* Du:Diffusion rate of U  
* Dv:Diffusion rate of V  
* F:Feed rate  
* k:Kill rate  
* threshold:  
When runing the pragram, the following parameters could be added by this order after the running command to custom your result
## Return
Rather than printing the result, the program write the result into Files:`output_*.vtk`,where `*` represent the number of iteration: only integer multiple of 100
## CI

## Test cases
There are several tests we put out before writing ReadME file:
* we Checked that the type of the model parameters (F, k) matches that of the element type of the u and v vectors.
* we Checked that the variables u and v are the same size.
* we Checked that the simulation produces the mathematically correct answer when u = 0 and v = 0.
## Contributing
