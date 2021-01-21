#ifdef __OBJC__
#import <Cocoa/Cocoa.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Satin.h"
#import "Bezier.h"
#import "Bounds.h"
#import "Generators.h"
#import "Geometry.h"
#import "Triangulator.h"
#import "Types.h"

FOUNDATION_EXPORT double SatinVersionNumber;
FOUNDATION_EXPORT const unsigned char SatinVersionString[];

