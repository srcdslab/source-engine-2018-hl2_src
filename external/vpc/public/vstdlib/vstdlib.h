// Copyright Valve Corporation, All rights reserved.

#ifndef VPC_VSTDLIB_VSTDLIB_H_
#define VPC_VSTDLIB_VSTDLIB_H_

#include "tier0/platform.h"

// dll export stuff
#ifdef STATIC_VSTDLIB
#define VSTDLIB_INTERFACE
#define VSTDLIB_OVERLOAD
#define VSTDLIB_CLASS
#define VSTDLIB_GLOBAL
#else
#ifdef VSTDLIB_DLL_EXPORT
#define VSTDLIB_INTERFACE DLL_EXPORT
#define VSTDLIB_OVERLOAD DLL_GLOBAL_EXPORT
#define VSTDLIB_CLASS DLL_CLASS_EXPORT
#define VSTDLIB_GLOBAL DLL_GLOBAL_EXPORT
#else
#define VSTDLIB_INTERFACE DLL_IMPORT
#define VSTDLIB_OVERLOAD DLL_GLOBAL_IMPORT
#define VSTDLIB_CLASS DLL_CLASS_IMPORT
#define VSTDLIB_GLOBAL DLL_GLOBAL_IMPORT
#endif
#endif

#endif  // VPC_VSTDLIB_VSTDLIB_H_
