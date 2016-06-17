//
//  Person.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_PERSON
#define APIMATIC_PERSON

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol Person
@end

@interface Person : BaseModel

/**
* TODO: Write general description for this field
*/
@property NSString* address;

/**
* TODO: Write general description for this field
*/
@property long age;

/**
* TODO: Write general description for this field
*/
@property NSString* name;

/**
* TODO: Write general description for this field
*/
@property NSString* uid;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif