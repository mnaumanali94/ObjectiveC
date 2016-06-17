//
//  SuiteCode.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_SUITECODEHELPER
#define APIMATIC_SUITECODEHELPER

#include "SuiteCode.h"

/**
* Helper class interface for SuiteCode to NSString conversion
*/
@interface SuiteCodeHelper : NSObject

+(id) stringFromSuiteCode:(enum SuiteCode) suiteCode withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromSuiteCodeArray:(NSArray<NSNumber*>*) array;


+(enum SuiteCode) suiteCodeFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) suiteCodeArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif