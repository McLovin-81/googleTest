GOOGLE_TEST_LIB = gtest

CXX_FLAGS = -c -Wall -I/opt/homebrew/Cellar/googletest/1.13.0/include -std=c++14

LD_FLAGS = -L/opt/homebrew/Cellar/googletest/1.13.0/lib -lgtest -lpthread

OBJECTS = gtest_main.o test.o factorial.o
TARGET = gtest_main

all: $(TARGET)

$(TARGET): $(OBJECTS)
	g++ -o $(TARGET) $(OBJECTS) $(LD_FLAGS)

%.o: %.cpp
	g++ $(CXX_FLAGS) $<

clean:
	rm -f $(TARGET) $(OBJECTS)

.PHONY: all clean
