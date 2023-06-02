#include <gtest/gtest.h>
#include "factorial.h"

// Test factorial of 0.
TEST(factorialTest, HandlesZeroInput)
{
    EXPECT_EQ(factorial(0), 1);
}

// Tests factorial of positive numbers.
TEST(factorialTest, HandlesPositiveInput)
{
    EXPECT_EQ(factorial(1), 1);
    EXPECT_EQ(factorial(2), 2);
    EXPECT_EQ(factorial(3), 6);
}