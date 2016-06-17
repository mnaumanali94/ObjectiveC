//
//  Person.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "Person.h"

@implementation Person

/**
* TODO: Write general description for this method
*/
@synthesize address;

/**
* TODO: Write general description for this method
*/
@synthesize age;

/**
* TODO: Write general description for this method
*/
@synthesize name;

/**
* TODO: Write general description for this method
*/
@synthesize uid;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"address": @"address",
        @"age": @"age",
        @"name": @"name",
        @"uid": @"uid"  
    }];

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