#include <vector>
#include <gtest/gtest.h>
#include "simulation_params.h"

extern double Du, Dv, F, k, threshold;
extern std::vector<std::vector<double>> u, v;
extern void init();
extern void simulateStep();
extern void writeVTKFile(int iteration);
extern double countElementsAboveThreshold(double threshold);

TEST(GSTest, CheckParameterTypes) {
    EXPECT_TRUE((std::is_same<decltype(F), double>::value));
    EXPECT_TRUE((std::is_same<decltype(k), double>::value));
    EXPECT_TRUE((std::is_same<decltype(u)::value_type::value_type, double>::value));
    EXPECT_TRUE((std::is_same<decltype(v)::value_type::value_type, double>::value));
}

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

TEST(GSTest, SimulationWithZeroUV) {
    
    for (auto &row : u) {
        std::fill(row.begin(), row.end(), 0.0);
    }
    for (auto &row : v) {
        std::fill(row.begin(), row.end(), 0.0);
    }

    simulateStep(); // 运行一步模拟

    // 检查 u 是否增加和 v 是否保持不变
    bool u_increased = false, v_unchanged = true;
    for (const auto& row : u) {
        for (const auto& element : row) {
            if (element > 0.0) {
                u_increased = true;
            }
        }
    }
    for (const auto& row : v) {
        for (const auto& element : row) {
            if (element != 0.0) {
                v_unchanged = false;
            }
        }
    }

    EXPECT_TRUE(u_increased);
    EXPECT_TRUE(v_unchanged);
}





int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}