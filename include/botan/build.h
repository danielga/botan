#ifndef BOTAN_BUILD_CONFIG_WRAPPER_H_
#define BOTAN_BUILD_CONFIG_WRAPPER_H_

#include <TargetConditionals.h>

#if TARGET_OS_SIMULATOR && (defined(__i386__) || defined(__x86_64__))
#include "build-simulator.h"
#else
#include "build-arm64.h"
#endif

#endif
