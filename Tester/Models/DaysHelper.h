//
//  Days.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_DAYSHELPER
#define APIMATIC_DAYSHELPER

#include "Days.h"

/**
* Helper class interface for Days to NSString conversion
*/
@interface DaysHelper : NSObject

+(id) stringFromDays:(enum Days) days withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromDaysArray:(NSArray<NSNumber*>*) array;


+(enum Days) daysFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) daysArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif