TOP_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TEST_REPO1_URL := https://github.com/yashaswini-hanji/ARC.git
TEST_REPO1_DIR := $(TOP_DIR)/ARC
TEST_REPO1_TAG ?= master
TEST_REPO2_URL := https://github.com/yashaswini-hanji/X86.git
TEST_REPO2_DIR := $(TOP_DIR)/X86
TEST_REPO2_TAG ?= master
TEST_REPO3_URL := https://github.com/yashaswini-hanji/FlashPack.git
TEST_REPO3_DIR := $(TOP_DIR)/FlashPack
TEST_REPO3_TAG ?= master

CODK_DIR ?= $(TOP_DIR)

	
clone: $(TEST_REPO1_DIR) $(TEST_REPO2_DIR) $(TEST_REPO3_DIR) 

$(TEST_REPO1_DIR):
	git clone -b $(TEST_REPO1_TAG) $(TEST_REPO1_URL) $(TEST_REPO1_DIR)

$(TEST_REPO2_DIR):
	git clone -b $(TEST_REPO2_TAG) $(TEST_REPO2_URL) $(TEST_REPO2_DIR)
	
$(TEST_REPO3_DIR):
	git clone -b $(TEST_REPO3_TAG) $(TEST_REPO3_URL) $(TEST_REPO3_DIR)
