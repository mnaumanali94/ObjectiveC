//
//  ServerResponse.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_SERVERRESPONSE
#define APIMATIC_SERVERRESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ServerResponse
@end

@interface ServerResponse : BaseModel

/**
* TODO: Write general description for this field
*/
@property NSDictionary* input;

/**
* TODO: Write general description for this field
*/
@property NSString* message;

/**
* TODO: Write general description for this field
*/
@property BOOL passed;


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