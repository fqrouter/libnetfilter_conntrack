LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	src/main.c \
	src/callback.c \
	src/expect/api.c \
	src/expect/build.c \
	src/expect/compare.c \
	src/expect/getter.c \
	src/expect/parse.c \
	src/expect/setter.c \
	src/expect/snprintf.c \
	src/expect/snprintf_default.c \
	src/expect/snprintf_xml.c \
	src/conntrack/api.c \
	src/conntrack/bsf.c \
	src/conntrack/build.c \
	src/conntrack/compare.c \
	src/conntrack/copy.c \
	src/conntrack/filter.c \
	src/conntrack/filter_dump.c \
	src/conntrack/getter.c \
	src/conntrack/grp.c \
	src/conntrack/grp_getter.c \
	src/conntrack/grp_setter.c \
	src/conntrack/objopt.c \
	src/conntrack/parse.c \
	src/conntrack/setter.c \
	src/conntrack/snprintf.c \
	src/conntrack/snprintf_default.c \
	src/conntrack/snprintf_xml.c \
	src/conntrack/stack.c \
	src/conntrack/parse_mnl.c \
	src/conntrack/build_mnl.c
	
LOCAL_MODULE:=netfilter_conntrack
LOCAL_STATIC_LIBRARIES:=libnflink libmnl
LOCAL_CFLAGS := -O2 -g \
	-I$(LOCAL_PATH)/../libnfnetlink/include \
	-I$(LOCAL_PATH)/../libmnl/include \
	-I$(LOCAL_PATH)/include 
include $(BUILD_STATIC_LIBRARY)

