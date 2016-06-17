//
//  SendMixedArrayInput.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_SENDMIXEDARRAYINPUT
#define APIMATIC_SENDMIXEDARRAYINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"

#import "Employee.h"


//protocol defined for deserialization of JSON
@protocol SendMixedArrayInput
@end

@interface SendMixedArrayInput : NSObject

/**
* TODO: Write general description for this field
*/
@property NSURL* file;

/**
* TODO: Write general description for this field
*/
@property NSArray* integers;

/**
* TODO: Write general description for this field
*/
@property NSArray<Employee> * models;

/**
* TODO: Write general description for this field
*/
@property NSArray* strings;

@end
#endif