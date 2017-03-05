TOP_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TEST_REPO1_URL := https://github.com/yashaswini-hanji/ARC.git
TEST_REPO1_DIR := $(TOP_DIR)/ARC
BRANCH ?= 
TEST_REPO2_URL := https://github.com/yashaswini-hanji/X86.git
TEST_REPO2_DIR := $(TOP_DIR)/X86
BRANCH ?= 
TEST_REPO3_URL := https://github.com/yashaswini-hanji/FlashPack.git
TEST_REPO3_DIR := $(TOP_DIR)/FlashPack
BRANCH ?= 

CODK_DIR ?= $(TOP_DIR)

	
clone: $(TEST_REPO1_DIR) $(TEST_REPO2_DIR) $(TEST_REPO3_DIR) 

$(TEST_REPO1_DIR):
	git clone -b $(BRANCH) $(TEST_REPO1_URL) $(TEST_REPO1_DIR)

$(TEST_REPO2_DIR):
	git clone -b $(BRANCH) $(TEST_REPO2_URL) $(TEST_REPO2_DIR)
	
$(TEST_REPO3_DIR):
	git clone -b $(BRANCH) $(TEST_REPO3_URL) $(TEST_REPO3_DIR)
