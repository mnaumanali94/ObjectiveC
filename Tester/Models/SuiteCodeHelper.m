//
//  SuiteCode.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#include "SuiteCodeHelper.h"

/**
* Helper class implementation for SuiteCode to NSString conversion
*/
@implementation SuiteCodeHelper

+(id) stringFromSuiteCode:(enum SuiteCode) suiteCode withDefault: (id) defaultValue
{
    switch(suiteCode)
    {
        case SuiteCodeHearts:
            return @"1";

        case SuiteCodeSpades:
            return @"2";

        case SuiteCodeClubs:
            return @"3";

        case SuiteCodeDiamonds:
            return @"4";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromSuiteCodeArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [SuiteCodeHelper stringFromSuiteCode:(enum SuiteCode) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum SuiteCode) suiteCodeFromString:(NSString*) strValue
{
    NSArray* SuiteCodeArray = [NSArray arrayWithObjects:
                                        @"1",
                                        @"2",
                                        @"3",
                                        @"4",
                                        nil];

    return (enum SuiteCode) [SuiteCodeArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) suiteCodeArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ SuiteCodeHelper suiteCodeFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end