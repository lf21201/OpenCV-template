CXX = g++

CXXFLAGS += `pkg-config --cflags opencv`
CXXFLAGS += -O2 -w -g
LDFLAGS  += `pkg-config --libs opencv`

SRC_DIR = src
OBJ_DIR = obj

SRCS = $(SRC_DIR)/main.cpp

OBJS = $(OBJ_DIR)/main.cpp.o

TARGET = test.exe

all: $(TARGET)
	@echo "${TARGET} is built."

$(TARGET): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

$(OBJ_DIR)/%.cpp.o: $(SRC_DIR)/%.cpp $(SRC_DIR)/%.h 
	$(CXX) -o $@ -c $< $(CXXFLAGS)

clean:
	rm -f $(OBJS)
	rm -f $(TARGET)

