//
//  Employee.h
//  Tester
//
//  This file was automatically generated for Stamplay by APIMATIC v2.0 ( https://apimatic.io ) on 06/16/2016
//
#ifndef APIMATIC_EMPLOYEE
#define APIMATIC_EMPLOYEE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "BaseModel.h"
#import "APIHelper.h"

#import "Person.h"
#import "Days.h"
#import "DaysHelper.h"


//protocol defined for deserialization of JSON
@protocol Employee
@end

@interface Employee : Person

/**
* TODO: Write general description for this field
*/
@property Person* boss;

/**
* TODO: Write general description for this field
*/
@property NSString* department;

/**
* TODO: Write general description for this field
*/
@property NSArray<Person> * dependents;

/**
* TODO: Write general description for this field
*/
@property enum Days joiningDay;

/**
* TODO: Write general description for this field
*/
@property int salary;

/**
* TODO: Write general description for this field
*/
@property NSArray<NSNumber*>* workingDays;


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