//
//  Days.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#include "DaysHelper.h"

/**
* Helper class implementation for Days to NSString conversion
*/
@implementation DaysHelper

+(id) stringFromDays:(enum Days) days withDefault: (id) defaultValue
{
    switch(days)
    {
        case DaysSunday:
            return @"Sunday";

        case DaysMonday:
            return @"Monday";

        case DaysTuesday:
            return @"Tuesday";

        case DaysWednesday:
            return @"Wednesday";

        case DaysThursday:
            return @"Thursday";

        case DaysFriday:
            return @"Friday";

        case DaysSaturday:
            return @"Saturday";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromDaysArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [DaysHelper stringFromDays:(enum Days) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum Days) daysFromString:(NSString*) strValue
{
    NSArray* DaysArray = [NSArray arrayWithObjects:
                                        @"Sunday",
                                        @"Monday",
                                        @"Tuesday",
                                        @"Wednesday",
                                        @"Thursday",
                                        @"Friday",
                                        @"Saturday",
                                        nil];

    return (enum Days) [DaysArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) daysArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ DaysHelper daysFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end