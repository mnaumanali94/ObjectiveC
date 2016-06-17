//
//  EchoResponse.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_ECHORESPONSE
#define APIMATIC_ECHORESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol EchoResponse
@end

@interface EchoResponse : BaseModel

/**
* TODO: Write general description for this field
*/
@property NSDictionary* body;

/**
* TODO: Write general description for this field
*/
@property NSDictionary* headers;

/**
* TODO: Write general description for this field
*/
@property NSString* method;

/**
* relativePath
*/
@property NSString* path;

/**
* TODO: Write general description for this field
*/
@property NSDictionary* query;

/**
* TODO: Write general description for this field
*/
@property int uploadCount;


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