# Gray-Scott Simulation
## Background
Gray Scott is a reaction-diffusion system, essentially, it is used to model a system that includes a reaction and a diffusion. In the Gray-Scott model, the system is described by two variables,these variables represent the densities or concentrations of chemical species involved in a reaction. The model assumes that the substrate is converted into the activator through an autocatalytic reaction and that the activator can degrade back into the substrate. The underlying dynamics of the model are governed by a set of partial differential equations that describe the diffusion and reaction processes. The equations involve parameters such as the diffusion rates of the substances and the reaction rates. These parameters control the behavior of the system and determine the patterns that emerge.

This program builds on the Initial Gray-Scott simulation. 
## Project Structure


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
This project uses the Google Test framework. (https://github.com/google/googletest/tree/main)
- Clone the google test repository from github.
- Navigate to the google test repository and create a build directory by typing mkdir build
- Go to the build directory by typing cd build
- Now type cmake.. to generate the build files.
- Build google test using make
  
Finally include google test headers in the unit test file by #include <gtesst/gtest.h>
## Tests
Three tests have been implemented in this Gray-Scott test simulation

- The first one is to check that the type of the model parameters (F , k) matches that of the element type of the u and v vectors.
  - This has been done by asserting a google test to check whether the declare type of model parameter F matches that of the element type of u and v vectors. We call on decltype from the C++ directory, which      essentially compares the type(F) against the type of a <u> element. We then use this in std::is_same to return a tru or false output to our comparison. This is done by using the EXPECT_TRUE macro             provided by the Google Test Framework.
- The second test is to check that the variables u and v are the same size.
  - This has been done by asserting a google test to check whether the variables u and v are the same size. We first compute the size of u, then compute the size of v, and then we essentially comapre and         check whether they are the same. For this test, we use EXPECT_EQ from the Google Test Framework.
- The final test is to check whether the simulation provides a mathematically correct answer to u=0 and v=0.
  - We start by iterating over element of u and v and making it 0.0.
  - We then simulate a step using the function defined a gs.cpp
  - We then declare two boolean variables to track and ensure the values of u and v are not changed. As a part of the test we also check for cases where u > 0.0 or cases where value of a v element is not         0.0. If there exists such a case, the 2 booleans declared previously are changed to be True.
  - We use the EXPECT_TRUE macro provided by the Google Test Framework to assert the test, where if neither have changed, we consider the test outcome to be a failure. 

## Installation Guide
To run this project, you would need:
- CMake
- A C++ compiler such as clang or gcc.
- Optionally, you may use git for version control. 

## Build
CMake may be used to build this project, as it ensures simplicity and is cross-platform compatible. 
Before you begin, ensure that you have the following prerequisites installed on your system:
 - CMake (version 3.0 or later)
 - Compiler (compatible with your project's code)

Follow the listed steps to build the project using CMake:
 - Clone the repository from github:
   git clone [repository link]
 - Navigate to the project directory
 - Create a new directory by
   ```
   mkdir build  //create directory
   cd build     // charge to build directory
 - Generate build files by
   ```
   cmake ../gray-scott-sim 
 - Finally build by
   ```
   make
## Continuous Integration (CI)
This project uses Github actions to implement continuous integration. It essentially works by scanning the commits, running it through the build process and running the unit tests. 

### Trigger
Everytime a push or pull request is made, it triggers the workflow on the main branch. 
### Compatibility/Environment
This project has been built to run on the latest-version of Ubuntu. 
### Steps
1. Clone the repository or fetch the code from GitHub.
2. Ensure you have CMake installed.
3. Build the project.
4. Run through the tests.

Optionally, if you are using an IDE or environment that is Github CodeQL compatible, you may get additional functionality such as code analysis and the ability to scan for vulnerabilities in the codebase. (https://github.com/github/codeql)

## Contribution Guidelines
We encourage community participation in our efforts to build this Gray-Scott simulation, and are interested in learning about prospects and ideas that may not have been implemented here. Whether you have ideas on an eddicient build system, or bugs and shortcomings of our code, or just feature improvements, our team values any input. 
To contribute to this project, please follow these steps:

- Fork the repository on GitHub.
- Clone your forked repository to your local machine:
- Create a new branch for your contribution:
- Make your desired changes or additions to the codebase.
- Commit your changes with a clear and descriptive commit message:
- Push your changes to your forked repository.
- Open a pull request against the original repository's main branch.
  - Clearly describe the purpose of the PR and the changes you've made.
  - Make sure your code follows the project's coding conventions and guidelines.
  - Include any necessary documentation or tests for your changes.
- Once approved, these changes will then be made part of our project. 
