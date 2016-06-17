//
//  EchoResponse.m
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#import "EchoResponse.h"

@implementation EchoResponse

/**
* TODO: Write general description for this method
*/
@synthesize body;

/**
* TODO: Write general description for this method
*/
@synthesize headers;

/**
* TODO: Write general description for this method
*/
@synthesize method;

/**
* relativePath
*/
@synthesize path;

/**
* TODO: Write general description for this method
*/
@synthesize query;

/**
* TODO: Write general description for this method
*/
@synthesize uploadCount;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"body": @"body",
        @"headers": @"headers",
        @"method": @"method",
        @"path": @"path",
        @"query": @"query",
        @"uploadCount": @"uploadCount"  
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