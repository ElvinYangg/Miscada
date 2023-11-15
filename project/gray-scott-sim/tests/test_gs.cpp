#include <vector>
#include <gtest/gtest.h>
#include "simulation_params.h"

extern double Du, Dv, F, k, threshold;
extern std::vector<std::vector<double>> u, v;
extern void init();
extern void simulateStep();
extern void writeVTKFile(int iteration);
extern double countElementsAboveThreshold(double threshold);
// first test: Test to check whether the parameter types of elements in u and v match F and k. Done by calling on google test macro and comapring declare type
TEST(GSTest, CheckParameterTypes) {
    EXPECT_TRUE((std::is_same<decltype(F), double>::value));
    EXPECT_TRUE((std::is_same<decltype(k), double>::value));
    EXPECT_TRUE((std::is_same<decltype(u)::value_type::value_type, double>::value));
    EXPECT_TRUE((std::is_same<decltype(v)::value_type::value_type, double>::value));
}
// second test: test to check the size of u and v.
TEST(GSTest, CheckSizeConsistency) {
    init(); 
    EXPECT_EQ(u.size(), width);
    EXPECT_EQ(v.size(), width);
    for (const auto& row : u) {
        EXPECT_EQ(row.size(), height);
    }
    for (const auto& row : v) {
        EXPECT_EQ(row.size(), height);
    }
}

//According to "dU = Du * laplaceU - a * b * b + F * (1.0 - a);" the value of F*(1.0-a) is not equal to 0, so dU changes every iteration, and thus nextU[x][y] keeps changing.
//According to "dV = Dv * laplaceV + a * b * b - (F + k) * b;", this equation is always equal to 0, so each element of nextV[x][y] will also always be equal to 0
TEST(SimulationTest, ZeroInitialConditionTest) {
    // Initialise u and v to all zeros
    std::vector<std::vector<double>> u(width, std::vector<double>(height, 0.0));
    std::vector<std::vector<double>> v(width, std::vector<double>(height, 0.0));
    for (int iteration = 0; iteration < numIterations; ++iteration) {

    // Run the simulation
    simulateStep();  // Assuming the simulateStep() function uses the global variables u and v

    // Check that all elements of v are still 0.
    for (const auto& row : v) {
        for (const auto& element : row) {
            EXPECT_DOUBLE_EQ(element, 0.0) << "v should remain 0";
        }
    }

    // Check if the four boundaries of u are 0
    for (int x = 0; x < width; ++x) {
        EXPECT_DOUBLE_EQ(u[x][0], 0.0) << "Top border of u should remain 0";
        EXPECT_DOUBLE_EQ(u[x][height - 1], 0.0) << "Bottom border of u should remain 0";
    }
    for (int y = 0; y < height; ++y) {
        EXPECT_DOUBLE_EQ(u[0][y], 0.0) << "Left border of u should remain 0";
        EXPECT_DOUBLE_EQ(u[width - 1][y], 0.0) << "Right border of u should remain 0";
    }
}
}






int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
