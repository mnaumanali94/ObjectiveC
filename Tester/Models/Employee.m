//
//  Employee.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "Employee.h"

@implementation Employee

/**
* TODO: Write general description for this method
*/
@synthesize boss;

/**
* TODO: Write general description for this method
*/
@synthesize department;

/**
* TODO: Write general description for this method
*/
@synthesize dependents;

/**
* TODO: Write general description for this method
*/
@synthesize joiningDay;

/**
* TODO: Write general description for this method
*/
@synthesize salary;

/**
* TODO: Write general description for this method
*/
@synthesize workingDays;

-(id)init
{
    if (self = [super init])
    {
        self.joiningDay = [DaysHelper daysFromString:@"Monday"];
    }
    return self;
}

 /**
 * For serialization of enum Days type property as NSString*
 */
-(id) JSONObjectForJoiningDay
{
     
    return [DaysHelper stringFromDays:(enum Days) joiningDay withDefault:@"Monday"];

}

/**
 * For deserialization of enum Days type property from NSString*
 */
 
-(void)setJoiningDayWithNSString:(NSString*) strValue
{
    joiningDay = [DaysHelper daysFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum Days type property as NSString*
 */
-(id) JSONObjectForWorkingDays
{
      return [DaysHelper stringArrayFromDaysArray:workingDays];

}

/**
 * For deserialization of enum Days type property from NSArray<NSString*>*
 */
  -(void)setWorkingDaysWithNSArray:(NSArray<NSString*>*) array
{
    workingDays = [DaysHelper daysArrayFromStringArray: array];
}





/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"boss": @"boss",
        @"department": @"department",
        @"dependents": @"dependents",
        @"joiningDay": @"joiningDay",
        @"salary": @"salary",
        @"workingDays": @"workingDays"  
    }];
    [map addEntriesFromDictionary: [super keyMap]];   

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end