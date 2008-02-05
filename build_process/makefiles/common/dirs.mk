# save parrent dir for whole compile
SRC_BASE_DIR:=$(CURDIR)
export SRC_BASE_DIR

# write path to makefiles/
BUILD_PROCESS_BASE_DIR:=$(SRC_BASE_DIR)/build_process
MAKEFILES_BASE_DIR:=$(BUILD_PROCESS_BASE_DIR)/makefiles
MAKEFILES_COMMON_BASE_DIR:=$(MAKEFILES_BASE_DIR)/common
SCRIPTS_BASE_DIR:=$(BUILD_PROCESS_BASE_DIR)/scripts
export BUILD_PROCESS_BASE_DIR \
       MAKEFILES_BASE_DIR \
	   MAKEFILES_COMMON_BASE_DIR \
       SCRIPTS_BASE_DIR

# if gendir was not set by upper call of make, set it now
ifeq (,$(GENDIR))
GEN_BASE_DIR:=$(SRC_BASE_DIR)/gen
endif
export GEN_BASE_DIR

# sub dirs of gen/
GEN_INCLUDES_DIR=$(GEN_BASE_DIR)/$(PROFILE)/includes
GEN_LIBS_DIR=$(GEN_BASE_DIR)/$(PROFILE)/libs
GEN_COMPONENTS_DEPS_DIR=$(GEN_BASE_DIR)/$(PROFILE)/components_deps
export GEN_INCLUDES_DIR \
       GEN_LIBS_DIR \
       GEN_COMPONENTS_DEPS_DIR

include $(MAKEFILES_COMMON_BASE_DIR)/dirs_features.mk

