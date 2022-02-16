IN=./bogosort
BUILD_DIR=.

all:
	kotlinc $(IN).kt -include-runtime -d $(BUILD_DIR)/$(IN).jar 
	java -jar $(BUILD_DIR)/$(IN).jar
